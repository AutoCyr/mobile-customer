import 'package:autocyr/data/network/urls.dart';
import 'package:autocyr/domain/models/core/subcategory.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label10.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/screens/pages/products/subcategory_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';

class SubcategoryWidget extends StatelessWidget {
  final Subcategory subcategory;
  const SubcategoryWidget({super.key, required this.subcategory});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SubcategoryProductScreen(subcategory: subcategory))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.width * 0.3,
            width: size.width,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                image: DecorationImage(
                    onError: (Object e, StackTrace? stackTrace) => Image.asset(
                      "assets/logos/auto.png",
                      fit: BoxFit.contain,
                    ),
                    image: NetworkImage(
                      Urls.imageUrl+subcategory.image!,
                    ),
                    fit: BoxFit.contain
                )
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            width: size.width,
            decoration: BoxDecoration(
              color: GlobalThemeData.lightColorScheme.tertiary.withOpacity(0.1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Label10(text: subcategory.name, color: Colors.black, weight: FontWeight.normal, maxLines: 2)
              ],
            ),
          )
        ],
      ).animate().fadeIn(),
    );
  }
}
