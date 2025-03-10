import 'package:autocyr/domain/models/profile/partenaire.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/screens/pages/products/shop_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';

class ShopWidget extends StatelessWidget {
  final Partenaire partenaire;
  const ShopWidget({super.key, required this.partenaire});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ShopProductScreen(partenaire: partenaire))),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            color: GlobalThemeData.lightColorScheme.onTertiary,
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
            border: Border.all(color: GlobalThemeData.lightColorScheme.tertiary.withOpacity(0.1), width: 1)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: size.width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Label14(text: partenaire.raisonSociale, color: GlobalThemeData.lightColorScheme.tertiary, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
                  const Gap(5),
                  Label12(text: partenaire.villePartenaire, color: GlobalThemeData.lightColorScheme.tertiary, weight: FontWeight.normal, maxLines: 1).animate().fadeIn(),
                ],
              ),
            ),
            Container(
              width: size.width * 0.1,
              height: size.width * 0.1,
              decoration: BoxDecoration(
                  color: GlobalThemeData.lightColorScheme.tertiary,
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(5))
              ),
              child: Center(
                child: Icon(Icons.chevron_right, size: 20, color: GlobalThemeData.lightColorScheme.onTertiary),
              ),
            ).animate().fadeIn()
          ],
        ),
      ).animate().fadeIn(),
    );
  }
}
