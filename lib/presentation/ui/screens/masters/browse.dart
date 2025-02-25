import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label17.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/screens/pages/products/ask.dart';
import 'package:autocyr/presentation/ui/screens/pages/searchs/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';

class BrowseScreen extends StatefulWidget {
  const BrowseScreen({super.key});

  @override
  State<BrowseScreen> createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen> {

  List<Map<String, dynamic>> options = [
    {
      "label": "Rechercher une boutique",
      "image": "assets/pngs/store.png",
      "widget": const SearchShopScreen()
    },
    {
      "label": "Emettre une demande personnalisée",
      "image": "assets/pngs/request.png",
      "widget": const AskScreen()
    },
    /*{
      "label": "Rechercher une pièce",
      "image": "assets/pngs/search.png",
      "widget": null
    },*/
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalThemeData.lightColorScheme.onTertiary,
        title: Label14(text: "Parcourir", color: GlobalThemeData.lightColorScheme.tertiary, weight: FontWeight.bold, maxLines: 1).animate().fadeIn(),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          Label14(text: "Retrouvez ici des options pour vous aider à trouver les pièces que vous recherchez", color: Colors.black, weight: FontWeight.normal, maxLines: 3).animate().fadeIn(),
          const Gap(20),
          ...options.map((option) => InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              if(option["widget"] != null) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => option["widget"]));
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                width: size.width,
                height: size.width * 0.3,
                decoration: BoxDecoration(
                  color: GlobalThemeData.lightColorScheme.onTertiary,
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                  border: Border.all(color: GlobalThemeData.lightColorScheme.tertiary, width: 1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Label14(text: option["label"], color: GlobalThemeData.lightColorScheme.tertiary, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          option["image"],
                          width: size.width * 0.15,
                          height: size.width * 0.15,
                          fit: BoxFit.contain,
                        ).animate().fadeIn().tint(color: GlobalThemeData.lightColorScheme.tertiaryContainer),
                      ],
                    ),
                  ],
                ),
              ).animate().fadeIn(),
            ),
          ))
        ],
      ),
    );
  }
}
