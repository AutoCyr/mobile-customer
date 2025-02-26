import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';

class UiTools {

  selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2023),
      lastDate: DateTime(2101),
      helpText: "Choisir une date",
      initialEntryMode: DatePickerEntryMode.calendarOnly,
    );
    if (picked != null) {
      return picked;
    }
  }

  selectTime(BuildContext context) async {
    final picked = showTimePicker(
      context: context,
      initialEntryMode: TimePickerEntryMode.inputOnly,
      initialTime: TimeOfDay.now(),
      helpText: "Choisir une heure",
    );
    if(picked != null) {
      return picked;
    }
  }

  checkFields(List<TextEditingController> fields) {
    for(TextEditingController field in fields) {
      if(field.text.isEmpty) {
        return false;
      }
    }
    return true;
  }

}