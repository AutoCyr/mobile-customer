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

  void confirmLogoutBox({required BuildContext context, required Function function}) {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero)
        ),
        context: context,
        builder: (BuildContext context){
          return SizedBox(
            height: 170,
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Label14(text: "Confirmer l'opération", color: GlobalThemeData.lightColorScheme.errorContainer, weight: FontWeight.bold, maxLines: 1).animate().fadeIn(),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Label12(text: "Voulez-vous vraiment vous déconnecter ?", color: Colors.black, weight: FontWeight.normal, maxLines: 1).animate().fadeIn(),
                  ],
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      splashColor: GlobalThemeData.lightColorScheme.secondaryContainer.withOpacity(0.1),
                      onTap: () => Navigator.pop(context),
                      child: Label12(text: "Annuler", color: GlobalThemeData.lightColorScheme.secondaryContainer, weight: FontWeight.bold, maxLines: 1)
                    ).animate().fadeIn(),
                    const Gap(20),
                    InkWell(
                      splashColor: GlobalThemeData.lightColorScheme.errorContainer.withOpacity(0.1),
                      onTap: () => function(),
                      child: Label12(text: "Confirmer", color: GlobalThemeData.lightColorScheme.errorContainer, weight: FontWeight.bold, maxLines: 1)
                    ).animate().fadeIn(),
                  ],
                )
              ],
            ),
          );
        }
    );
  }

}