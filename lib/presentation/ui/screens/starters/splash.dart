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
      _startVerification();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/logos/auto.png",
          width: 200,
        ).animate().fadeIn().tint(color: GlobalThemeData.lightColorScheme.tertiary),
      ),
    );
  }
}
