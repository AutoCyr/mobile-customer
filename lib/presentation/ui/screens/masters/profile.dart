import 'package:autocyr/presentation/notifier/auth_notifier.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label13.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label17.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/screens/layouts/requests.dart';
import 'package:autocyr/presentation/ui/screens/pages/commandes/commandes.dart';
import 'package:autocyr/presentation/ui/screens/pages/requests/requests.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  List<Map<String, dynamic>> tiles = [
    {
      "label": "Mes commandes",
      "iconData": Icons.shopping_cart_checkout_rounded,
      "widget": const CommandeListScreen()
    },
    {
      "label": "Mes demandes personnalisées",
      "iconData": Icons.content_paste_go_rounded,
      "widget": const RequestLayoutScreen()
    }
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: GlobalThemeData.lightColorScheme.onTertiary),
        backgroundColor: GlobalThemeData.lightColorScheme.primary,
        title: Label14(text: "Mon profil", color: GlobalThemeData.lightColorScheme.onTertiary, weight: FontWeight.bold, maxLines: 1).animate().fadeIn()
      ),
      body: Consumer<AuthNotifier>(
        builder: (context, auth, child) {


          return ListView(
            children: [
              Container(
                height: size.height * 0.3,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                  color: GlobalThemeData.lightColorScheme.primary,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.8),
                                      spreadRadius: 10,
                                      blurRadius: 5,
                                      offset: const Offset(0, 7)
                                  )
                                ]
                            ),
                            child: Image.asset("assets/images/user.jpg", fit: BoxFit.cover, height: 75, width: 75,),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(right: 20)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Label17(text: auth.getClient.pseudoClient, color: GlobalThemeData.lightColorScheme.onTertiary, weight: FontWeight.bold, maxLines: 1,).animate().fadeIn(),
                            const Gap(10),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                color: GlobalThemeData.lightColorScheme.onTertiary,
                                borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                              ),
                              child: Center(
                                child: Label13(text: "Utilisateur", color: GlobalThemeData.lightColorScheme.primary, weight: FontWeight.bold, maxLines: 1,).animate().fadeIn(),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ).animate().fadeIn(),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    ...tiles.map((tile) => Container(
                      padding: const EdgeInsets.symmetric( vertical: 5),
                      decoration: BoxDecoration(
                          color: GlobalThemeData.lightColorScheme.onTertiary,
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))
                      ),
                      child: ListTile(
                          onTap: () {
                            if(tile["widget"] != null) {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => tile["widget"]!));
                            }
                          },
                          leading: Icon(
                            tile["iconData"],
                            color: GlobalThemeData.lightColorScheme.primary,
                          ),
                          title: Label13(text: tile["label"], color: Colors.black, weight: FontWeight.normal, maxLines: 2).animate().fadeIn(),
                          trailing: const Icon(
                            Icons.keyboard_arrow_right,
                            size: 20,
                          )
                      ).animate().fadeIn(),
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RichText(
                          text: const TextSpan(
                            text: "© Autocyr 2025",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Lufga",
                            ),
                          ),
                        )
                      ],
                    ),
                    const Gap(10),
                    Image.asset(
                      "assets/logos/auto.png",
                      width: 35,
                    ).animate().fadeIn(),
                  ],
                ),
              ).animate().fadeIn(),
            ],
          );
        }
      ),
    );
  }
}
