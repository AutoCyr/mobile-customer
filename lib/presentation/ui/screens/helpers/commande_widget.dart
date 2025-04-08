import 'package:autocyr/domain/models/features/commande.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label13.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label17.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/screens/pages/commandes/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class CommandeWidget extends StatelessWidget {
  final Commande commande;
  const CommandeWidget({super.key, required this.commande});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CommandeDetailScreen(commande: commande))),
      child: Container(
        width: size.width,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: GlobalThemeData.lightColorScheme.primary.withOpacity(0.1), width: 1),
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.shopping_cart, size: 20, color: Colors.black87).animate().fadeIn(),
                const Gap(10),
                SizedBox(
                  width: size.width * 0.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Label14(text: commande.pieceDetail.piece != null ? commande.pieceDetail.piece!.nomPiece : commande.pieceDetail.article!.name, color: Colors.black87, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
                      const Gap(10),
                      Label12(text: "le ${DateFormat.yMMMMEEEEd("fr").format(commande.dateCommande)} à ${DateFormat.Hm("fr").format(commande.dateCommande)}", color: Colors.black87, weight: FontWeight.normal, maxLines: 1).animate().fadeIn(),
                    ],
                  ),
                )
              ],
            ),
            Container(
              width: size.width * 0.1,
              height: size.width * 0.1,
              decoration: BoxDecoration(
                  color: GlobalThemeData.lightColorScheme.primary,
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(5))
              ),
              child: Center(
                child: Icon(Icons.chevron_right, size: 20, color: GlobalThemeData.lightColorScheme.onTertiary),
              ).animate().fadeIn(),
            )
          ],
        ),
      ),
    );
  }
}
