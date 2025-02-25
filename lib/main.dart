import 'package:autocyr/data/datasources/auths/auth_datasource_impl.dart';
import 'package:autocyr/data/datasources/commons/common_datasource_impl.dart';
import 'package:autocyr/data/datasources/customers/customer_datasource_impl.dart';
import 'package:autocyr/data/helpers/notifications.dart';
import 'package:autocyr/data/helpers/preferences.dart';
import 'package:autocyr/data/network/api_client.dart';
import 'package:autocyr/data/repositories/auth_repository_impl.dart';
import 'package:autocyr/data/repositories/common_repository_impl.dart';
import 'package:autocyr/data/repositories/customer_repository_impl.dart';
import 'package:autocyr/domain/usecases/auth_usecase.dart';
import 'package:autocyr/domain/usecases/common_usecase.dart';
import 'package:autocyr/domain/usecases/customer_usecase.dart';
import 'package:autocyr/presentation/notifier/auth_notifier.dart';
import 'package:autocyr/presentation/notifier/common_notifier.dart';
import 'package:autocyr/presentation/notifier/customer_notifier.dart';
import 'package:autocyr/presentation/notifier/map_notifier.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/screens/starters/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyCNOXUj4hcIZvG7B37k6etwAENZb2v8EzA",
        appId: "1:935343070936:android:123ccd1af1e03b71c101ad",
        messagingSenderId: "935343070936",
        projectId: "autocyr-8530d"
    ),
  );
  await Notifications().initNotifications();

  String token = await Preferences().getString("token");
  print(token);

  ApiClient apiClient = ApiClient();

  AuthDataSourceImpl authDataSourceImpl = AuthDataSourceImpl(apiClient);
  CommonDataSourceImpl commonDataSourceImpl = CommonDataSourceImpl(apiClient);

  AuthRepositoryImpl authRepositoryImpl = AuthRepositoryImpl(authDataSourceImpl);
  CommonRepositoryImpl commonRepositoryImpl = CommonRepositoryImpl(commonDataSourceImpl);

  CustomerDataSourceImpl customerDataSourceImpl = CustomerDataSourceImpl(apiClient);
  CustomerRepositoryImpl customerRepositoryImpl = CustomerRepositoryImpl(customerDataSourceImpl);

  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) {
              return AuthNotifier(
                  authUseCase: AuthUseCase(authRepositoryImpl)
              );
            }),
            ChangeNotifierProvider(create: (_) {
              return CommonNotifier(
                  commonUseCase: CommonUseCase(commonRepositoryImpl)
              );
            }),
            ChangeNotifierProvider(create: (_) {
              return CustomerNotifier(
                  customerUseCase: CustomerUseCase(customerRepositoryImpl)
              );
            }),
            ChangeNotifierProvider(create: (_) => MapNotifier()),
          ],
          child: const MyApp()
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('fr'), // French
      ],
      debugShowCheckedModeBanner: false,
      theme: GlobalThemeData.lightThemeData,
      home: const SplashScreen(),
    );
  }
}
