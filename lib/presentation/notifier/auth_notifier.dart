import 'dart:convert';
import 'package:autocyr/data/helpers/notifications.dart';
import 'package:autocyr/data/helpers/preferences.dart';
import 'package:autocyr/domain/models/commons/country.dart';
import 'package:autocyr/domain/models/profile/client.dart';
import 'package:autocyr/domain/models/profile/partenaire.dart';
import 'package:autocyr/domain/models/profile/user.dart';
import 'package:autocyr/domain/models/response/failure.dart';
import 'package:autocyr/domain/models/response/success.dart';
import 'package:autocyr/domain/usecases/auth_usecase.dart';
import 'package:autocyr/presentation/notifier/common_notifier.dart';
import 'package:autocyr/presentation/ui/helpers/snacks.dart';
import 'package:autocyr/presentation/ui/screens/auths/login.dart';
import 'package:autocyr/presentation/ui/screens/auths/send_code.dart';
import 'package:autocyr/presentation/ui/screens/auths/verify_code.dart';
import 'package:autocyr/presentation/ui/screens/global.dart';
import 'package:autocyr/presentation/ui/screens/starters/chooser.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';

class AuthNotifier extends ChangeNotifier {

  final AuthUseCase authUseCase;
  AuthNotifier({required this.authUseCase});

  bool _loading = false;
  User? user;
  Client? client;
  Country? country;

  bool get loading => _loading;
  User get getUser => user!;
  Client get getClient => client!;
  Country get getCountry => country!;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  setUser(User value) {
    user = value;
    notifyListeners();
  }

  setClient(Client value) {
    client = value;
    notifyListeners();
  }

  setCountry(Country value) {
    country = value;
    notifyListeners();
  }

  Future verifyConnection() async {
    setLoading(true);
    final userJson = await Preferences().getString('user') ?? '';
    final clientJson = await Preferences().getString('client') ?? '';

    if (userJson != '' && clientJson != '') {
      User user = User.fromJson(json.decode(userJson));
      Client client = Client.fromJson(json.decode(clientJson));

      setUser(user);
      setClient(client);
      setCountry(client.pays!);

      setLoading(false);
      return true;
    } else {
      setLoading(false);
      return false;
    }
  }

  Future login({required Map<String, dynamic> body, required LocalAuthentication localAuth, required BuildContext context}) async {
    setLoading(true);
    try {
      var data = await authUseCase.login(body);

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        if(success.data.containsKey("client")) {
          await Future.wait([
            saveToPreferences("user", success.data["user"]),
            saveToPreferences("client", success.data["client"])
          ]);
          await Preferences().saveString("token", success.data['token']);
          await Preferences().saveBool("isVerified", success.data['is_verified']);

          await setUser(User.fromJson(success.data["user"]));
          await setClient(Client.fromJson(success.data["client"]));
          if(client != null) {
            await setCountry(client!.pays!);
          }

          setLoading(false);
          if(context.mounted) {
            if(success.data['is_verified']) {
              Snacks.successBar("Connexion réussie", context);
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const GlobalScreen(index: 0)), (route) => false);
            } else {
              Snacks.failureBar("Votre compte n'est pas vérifié.", context);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SendCodeScreen(userId: client!.userId, phone: client!.telephone1)));
            }
          }
        } else {
          if(context.mounted) {
            Snacks.failureBar("Vous n'avez pas l'autorisation requise.", context);
          }
          setLoading(false);
        }
      }else{
        Failure failure = Failure.fromJson(data);

        if(context.mounted) {
          Snacks.failureBar(failure.message, context);
        }
        setLoading(false);
      }
    } catch (e) {
      setLoading(false);
      Snacks.failureBar("Une erreur est survenue", context);
    }
  }

  Future register({required Map<String, dynamic> body, required BuildContext context}) async {
    setLoading(true);
    try {
      var data = await authUseCase.register(body);

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        Client client = Client.fromJson(success.data);
        setLoading(false);
        if (context.mounted) {
          Snacks.successBar(success.message, context);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SendCodeScreen(userId: client.userId, phone: client.telephone1)));
        }
      }else{
        Failure failure = Failure.fromJson(data);
        if(context.mounted) {
          Snacks.failureBar(failure.message, context);
        }
        setLoading(false);
      }
    } catch (e) {
      setLoading(false);
      Snacks.failureBar("Une erreur est survenue", context);
    }
  }

  Future logout({required BuildContext context}) async {
    await Preferences().clear();

    if(context.mounted){
      Snacks.successBar("Déconnexion effectuée. Bonne journée.", context);
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const ChooserScreen()), (route) => false);
    }
  }

  Future sendVerificationCode({required BuildContext context, required Map<String, dynamic> body}) async {
    setLoading(true);

    try {
      var data = await authUseCase.sendVerificationCode(body);

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        setLoading(false);
        if (context.mounted) {
          Snacks.successBar(success.message, context);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VerifyCodeScreen(userId: int.parse(body["user_id"]), phone: body["phone"])));
        }
      } else {
        Failure failure = Failure.fromJson(data);

        if(context.mounted) {
          Snacks.failureBar(failure.message, context);
        }
        setLoading(false);
      }
    } catch (e, stackTrace) {
      print(e);
      print(stackTrace);
      setLoading(false);
      Snacks.failureBar("Une erreur est survenue", context);
    }
  }

  Future verifyCode({required BuildContext context, required Map<String, dynamic> body}) async {
    setLoading(true);

    try {
      var data = await authUseCase.verifyCode(body);

      if(data['error'] == false) {
        Success success = Success.fromJson(data);
        await Preferences().clear();

        setLoading(false);
        if (context.mounted) {
          Snacks.successBar(success.message, context);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
        }
      } else {
        Failure failure = Failure.fromJson(data);

        if(context.mounted) {
          Snacks.failureBar(failure.message, context);
        }
        setLoading(false);
      }
    } catch (e) {
      setLoading(false);
      Snacks.failureBar("Une erreur est survenue", context);
    }
  }

  Future updateFCM({required BuildContext context}) async {
    setLoading(true);
    try {
      if(context.mounted) {
        Snacks.infoBar("Mise à jour des données...", context);
      }
      var token = await Notifications().getFCMToken();
      Map<String, dynamic> body = {
        "id": getUser.id,
        "token": token
      };
      var data = await authUseCase.updateFCMToken(body);
      setLoading(false);
    } catch (e) {
      setLoading(false);
    }

  }

  Future getProfile({required BuildContext context}) async {
    var data = await authUseCase.getProfile();

    if(data["error"] == false){
      Success success = Success.fromJson(data);
      saveToPreferences("client", success.data);
      await setClient(Client.fromJson(success.data));
      await setCountry(client!.pays!);
    }

    return data["error"];
  }

  Future<void> saveToPreferences(String key, dynamic value) async {
    await Preferences().saveString(key, jsonEncode(value));
  }

  Future myAuthentication({required BuildContext context, required LocalAuthentication local}) async {
    try {
      bool canAuthenticate = await local.isDeviceSupported();

      if(canAuthenticate){
        bool isAuthenticated = await local.authenticate(
          localizedReason: "Pour plus de sécurité, procéder à la vérification",
          options: const AuthenticationOptions(
            stickyAuth: false,
            biometricOnly: false
          ),
        );

        if(isAuthenticated){
          if(context.mounted) {
            Snacks.successBar("Connexion réussie", context);
            // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const ValidatorScreen()), (route) => false);
          }
        }else{
          if(context.mounted) {
            Snacks.failureBar("Veuillez vérifier votre identité", context);
          }
        }
      }else{
        if(context.mounted) {
          Snacks.failureBar("Votre appareil ne supporte pas l'authentification à deux facteurs", context);
        }
      }
    } on PlatformException catch (e) {
      if(context.mounted) {
        Snacks.failureBar("Une erreur est survenue", context);
      }
    }
  }

}