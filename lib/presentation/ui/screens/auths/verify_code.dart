import 'package:autocyr/presentation/notifier/auth_notifier.dart';
import 'package:autocyr/presentation/ui/atoms/buttons/progress_button.dart';
import 'package:autocyr/presentation/ui/atoms/fields/custom_otp_field.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label17.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label20.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label30.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/helpers/countdown.dart';
import 'package:autocyr/presentation/ui/molecules/custom_buttons/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class VerifyCodeScreen extends StatefulWidget {
  final int userId;
  final String? phone;
  const VerifyCodeScreen({super.key, required this.userId, this.phone});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {

  String otpCode = "";
  bool isSend = false;

  _verify() async {
    final auth = Provider.of<AuthNotifier>(context, listen: false);
    Map<String, dynamic> body = {
      "user_id": widget.userId.toString(),
      "code": otpCode
    };
    await auth.verifyCode(context: context, body: body);
  }

  _send() async {
    setState(() {
      isSend = true;
    });
    final auth = Provider.of<AuthNotifier>(context, listen: false);
    Map<String, dynamic> body = {
      "user_id": widget.userId.toString()
    };
    await auth.sendVerificationCode(context: context, body: body);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Consumer<AuthNotifier>(
        builder: (context, auth, child) {
          return SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Label30(text: "Vérification de compte", color: GlobalThemeData.lightColorScheme.primary, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
                        const Gap(30),
                        Label14(text: "Veuillez saisir le code que nous vous avons envoyé par SMS", color: Colors.black, weight: FontWeight.bold, maxLines: 3).animate().fadeIn(),
                        const Gap(20),
                        CustomOtpField(
                          fieldLength: 6,
                          onSubmit: (value) {
                            otpCode = value;
                            print(otpCode);
                          }
                        ).animate().fadeIn(),
                        const Gap(10),
                        isSend ?
                          Container(
                            alignment: Alignment.center,
                            width: 400,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Label12(text: "Renvoyer le code dans ", color: GlobalThemeData.lightColorScheme.primary, weight: FontWeight.normal, maxLines: 1),
                                CustomCountdown(
                                  duration: const Duration(seconds: 60),
                                  onCountdownComplete: () {
                                    setState(() {
                                      isSend = false;
                                    });
                                  }
                                )
                              ],
                            ),
                          ).animate().fadeIn()
                            :
                          GestureDetector(
                            onTap: () {
                              _send();
                            },
                            child: Label12(text: "Vous n’avez pas reçu de SMS ? Renvoyer le code", color: GlobalThemeData.lightColorScheme.primary, weight: FontWeight.bold, maxLines: 1)
                          ).animate().fadeIn(),
                        const Gap(20),
                        auth.loading ?
                          ProgressButton(
                            widthSize: size.width * 0.9,
                            context: context,
                            bgColor: GlobalThemeData.lightColorScheme.onTertiary,
                            shimmerColor: GlobalThemeData.lightColorScheme.primary
                          ).animate().fadeIn()
                            :
                          SizedBox(
                            width: size.width,
                            child: CustomButton(
                              text: "Vérifier le code",
                              size: size,
                              globalWidth: size.width * 0.9,
                              widthSize: size.width * 0.87,
                              backSize: size.width * 0.87,
                              context: context,
                              function: () => _verify(),
                              textColor: GlobalThemeData.lightColorScheme.primary,
                              buttonColor: GlobalThemeData.lightColorScheme.onTertiary,
                              backColor: GlobalThemeData.lightColorScheme.primary
                            ).animate().fadeIn(),
                          ),
                      ]
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
