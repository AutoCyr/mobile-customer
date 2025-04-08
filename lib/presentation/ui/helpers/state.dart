import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/molecules/custom_buttons/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';

class StateScreen extends StatefulWidget {
  final IconData icon;
  final String message;
  final bool isError;
  final VoidCallback? function;
  const StateScreen({super.key, required this.icon, required this.message, required this.isError, this.function});

  @override
  State<StateScreen> createState() => _StateScreenState();
}

class _StateScreenState extends State<StateScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height-kToolbarHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(widget.icon, color: Colors.grey, size: 150,).animate().fadeIn(),
          const Gap(20),
          Label12(text: widget.message, color: Colors.black, weight: FontWeight.bold, maxLines: 2,).animate().fadeIn(),
          const Gap(20),
          if(widget.isError)
            CustomButton(
              text: "Actualiser",
              size: size,
              globalWidth: size.width * 0.9,
              widthSize: size.width * 0.87,
              backSize: size.width * 0.87,
              context: context,
              function: () => widget.function!(),
              textColor: GlobalThemeData.lightColorScheme.primary,
              buttonColor: GlobalThemeData.lightColorScheme.onTertiary,
              backColor: GlobalThemeData.lightColorScheme.primary
            ).animate().fadeIn(),
        ],
      ),
    );
  }
}
