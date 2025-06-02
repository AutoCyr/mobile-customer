import 'package:autocyr/presentation/notifier/auth_notifier.dart';
import 'package:autocyr/presentation/ui/atoms/buttons/progress_button.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label17.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label20.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label30.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/molecules/custom_buttons/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class SendCodeScreen extends StatefulWidget {
  final int userId;
  final String? phone;
  const SendCodeScreen({super.key, required this.userId, this.phone});

  @override
  State<SendCodeScreen> createState() => _SendCodeScreenState();
}

class _SendCodeScreenState extends State<SendCodeScreen> {

  _send() async {
    final auth = Provider.of<AuthNotifier>(context, listen: false);
    Map<String, dynamic> body = {
      "user_id": widget.userId.toString(),
      "phone": widget.phone
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Label14(text: "Nous allons envoyer un code à votre numéro de téléphone ci-dessous", color: Colors.black, weight: FontWeight.bold, maxLines: 3).animate().fadeIn(),
                              const Gap(10),
                              Label17(text: "${widget.phone}", color: GlobalThemeData.lightColorScheme.primary, weight: FontWeight.bold, maxLines: 3).animate().fadeIn(),
                            ],
                          ),
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
                                text: "Envoyer le code",
                                size: size,
                                globalWidth: size.width * 0.9,
                                widthSize: size.width * 0.87,
                                backSize: size.width * 0.87,
                                context: context,
                                function: () => _send(),
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
      )
    );
  }
}
