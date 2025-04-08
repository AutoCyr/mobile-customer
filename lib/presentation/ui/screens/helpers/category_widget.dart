import 'package:autocyr/data/network/urls.dart';
import 'package:autocyr/domain/models/core/category.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label10.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/screens/pages/products/subcategory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;
  const CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SubcategoryScreen(category: category))),
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
                      Urls.imageUrl+category.image!,
                    ),
                    fit: BoxFit.contain
                )
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            width: size.width,
            decoration: BoxDecoration(
              color: GlobalThemeData.lightColorScheme.primary.withOpacity(0.1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Label12(text: category.name, color: Colors.black, weight: FontWeight.normal, maxLines: 2)
              ],
            ),
          )
        ],
      ).animate().fadeIn(),
    );
  }
}
