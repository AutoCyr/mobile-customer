import 'package:autocyr/data/network/urls.dart';
import 'package:autocyr/domain/models/pieces/detail_piece.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label10.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/screens/pages/products/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';

class PieceWidget extends StatelessWidget {
  final DetailPiece piece;
  const PieceWidget({super.key, required this.piece});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PieceDetailScreen(detail: piece))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.width * 0.35,
            width: size.width,
            decoration: BoxDecoration(
                border: Border.all(color: GlobalThemeData.lightColorScheme.tertiary.withOpacity(0.1), width: 1),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                image: DecorationImage(
                    onError: (Object e, StackTrace? stackTrace) => Image.asset(
                      "assets/images/back-2.webp",
                      fit: BoxFit.cover,
                    ),
                    image: NetworkImage(
                      Urls.imageUrl+piece.imagePiece,
                    ),
                    fit: BoxFit.cover
                )
            ),
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Label10(text: piece.typeEngin.libelle, color: Colors.grey, weight: FontWeight.bold, maxLines: 1),
              Label10(text: piece.garantie == 1 ? "Garantie" : "Non garantie", color: Colors.black87, weight: FontWeight.normal, maxLines: 1)
            ],
          ).animate().fadeIn(),
          const Gap(5),
          Label14(text: piece.piece != null ? piece.piece!.nomPiece : piece.article!.name, color: Colors.black87, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
          if(piece.partenaire != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(5),
                Label12(text: piece.partenaire!.villePartenaire, color: Colors.black54, weight: FontWeight.bold, maxLines: 1).animate().fadeIn(),
                const Gap(5),
                Label12(text: piece.partenaire!.quartierPartenaire, color: Colors.black54, weight: FontWeight.normal, maxLines: 1).animate().fadeIn(),
              ],
            )
        ],
      ).animate().fadeIn(),
    );
  }
}
