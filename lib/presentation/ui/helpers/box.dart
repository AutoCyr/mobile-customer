import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';

class Box {
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
                  child: Label14(text: "Confirmer l'opération", color: GlobalThemeData.lightColorScheme.error, weight: FontWeight.bold, maxLines: 1).animate().fadeIn(),
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
                        splashColor: GlobalThemeData.lightColorScheme.secondary.withOpacity(0.1),
                        onTap: () => Navigator.pop(context),
                        child: Label12(text: "Annuler", color: GlobalThemeData.lightColorScheme.secondary, weight: FontWeight.bold, maxLines: 1)
                    ).animate().fadeIn(),
                    const Gap(20),
                    InkWell(
                        splashColor: GlobalThemeData.lightColorScheme.error.withOpacity(0.1),
                        onTap: () => function(),
                        child: Label12(text: "Confirmer", color: GlobalThemeData.lightColorScheme.error, weight: FontWeight.bold, maxLines: 1)
                    ).animate().fadeIn(),
                  ],
                )
              ],
            ),
          );
        }
    );
  }

  void confirmOperationBox({required BuildContext context, required Function function}) {
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
                  child: Label14(text: "Confirmer l'opération", color: GlobalThemeData.lightColorScheme.error, weight: FontWeight.bold, maxLines: 1).animate().fadeIn(),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Label12(text: "Voulez-vous vraiment effectuer cette opération ?", color: Colors.black, weight: FontWeight.normal, maxLines: 1).animate().fadeIn(),
                  ],
                ),
                const Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                        splashColor: GlobalThemeData.lightColorScheme.error.withOpacity(0.1),
                        onTap: () => Navigator.pop(context),
                        child: Label12(text: "Annuler", color: GlobalThemeData.lightColorScheme.error, weight: FontWeight.bold, maxLines: 1)
                    ).animate().fadeIn(),
                    const Gap(20),
                    InkWell(
                        splashColor: GlobalThemeData.lightColorScheme.secondary.withOpacity(0.1),
                        onTap: () async {
                          await function();
                        },
                        child: Label12(text: "Confirmer", color: GlobalThemeData.lightColorScheme.secondary, weight: FontWeight.bold, maxLines: 1)
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