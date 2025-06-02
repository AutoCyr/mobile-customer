import 'dart:async';

import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:flutter/material.dart';

class CustomCountdown extends StatefulWidget {
  final Duration duration;
  final VoidCallback onCountdownComplete;
  const CustomCountdown({super.key, required this.duration, required this.onCountdownComplete});

  @override
  State<CustomCountdown> createState() => _CustomCountdownState();
}

class _CustomCountdownState extends State<CustomCountdown> {

  Duration? _duration;
  Timer? _timer;
  int _countdownValue = 0;

  @override
  void initState() {
    super.initState();
    _duration = widget.duration;
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_duration!.inSeconds <= 0) {
        _timer?.cancel();
        widget.onCountdownComplete();
      } else {
        setState(() {
          _countdownValue = _duration!.inSeconds;
          _duration = _duration! - const Duration(seconds: 1);
        });
      }
    });
  }

  String formatDuration(int seconds) {
    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Label14(text: formatDuration(_countdownValue), color: GlobalThemeData.lightColorScheme.primary, weight: FontWeight.bold, maxLines: 1);
  }
}