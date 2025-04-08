import 'package:autocyr/presentation/notifier/auth_notifier.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/screens/global.dart';
import 'package:autocyr/presentation/ui/screens/starters/chooser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  _startVerification() async {
    final auth = Provider.of<AuthNotifier>(context, listen: false);
    bool connection = await auth.verifyConnection();

    if(connection) {
      if(mounted) {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const GlobalScreen(index: 0)), (route) => false);
      }
    } else {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ChooserScreen()));
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 7), () {
        _startVerification();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff094A84),
              Color(0xff0E98CA),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Image.asset(
            "assets/logos/auto_white.png",
            width: 200,
          ).animate().fadeIn()
        ),
      ),
    );
  }
}
