import 'package:autocyr/data/network/urls.dart';
import 'package:autocyr/domain/models/pieces/detail_piece.dart';
import 'package:autocyr/presentation/notifier/auth_notifier.dart';
import 'package:autocyr/presentation/notifier/common_notifier.dart';
import 'package:autocyr/presentation/notifier/customer_notifier.dart';
import 'package:autocyr/presentation/ui/atoms/buttons/progress_button.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label10.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label13.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label17.dart';
import 'package:autocyr/presentation/ui/atoms/loaders/loading.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/helpers/image_category.dart';
import 'package:autocyr/presentation/ui/molecules/custom_buttons/custom_icon_button.dart';
import 'package:autocyr/presentation/ui/organisms/searchables/selectable.dart';
import 'package:autocyr/presentation/ui/organisms/selectors/selector.dart';
import 'package:autocyr/presentation/ui/screens/helpers/category_widget.dart';
import 'package:autocyr/presentation/ui/screens/helpers/piece_widget.dart';
import 'package:autocyr/presentation/ui/screens/pages/addresses/list.dart';
import 'package:autocyr/presentation/ui/screens/pages/products/ask.dart';
import 'package:autocyr/presentation/ui/screens/pages/products/category.dart';
import 'package:autocyr/presentation/ui/screens/pages/products/detail.dart';
import 'package:autocyr/presentation/ui/screens/pages/products/type_product.dart';
import 'package:autocyr/presentation/ui/screens/pages/searchs/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Map> options = [
    {
      "label": "Adresses",
      "iconData": Icons.location_history_outlined,
      "widget": const AddressListScreen()
    }
  ];

  List<Map<String, dynamic>> searchOptions = [
    {
      "label": "Rechercher une boutique",
      "image": "assets/pngs/shop.png",
      "widget": const SearchShopScreen()
    },
    {
      "label": "Emettre une demande personnalisée",
      "image": "assets/pngs/search.png",
      "widget": const AskScreen()
    },
  ];

  retrieveCommons() async {
    final common = Provider.of<CommonNotifier>(context, listen: false);
    if(!common.filling) {
      if(common.countries.isEmpty) {
        await common.retrieveCountries(context: context);
      }
      if(common.enginTypes.isEmpty) {
        await common.retrieveEnginTypes(context: context);
      }
      if(common.categories.isEmpty) {
        await common.retrieveCategories(context: context);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      retrieveCommons();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalThemeData.lightColorScheme.onPrimary,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/logos/auto.png",
                  width: 45,
                  height: 45,
                ).animate().fadeIn()
              ]
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => BottomSelector().showIconMenu(
                context: context,
                options: options,
                title: "Actions rapides"
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(color: GlobalThemeData.lightColorScheme.primary.withOpacity(0.5), width: 1.2)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(300),
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
                      child: Image.asset(
                        "assets/images/user.jpg",
                        fit: BoxFit.cover,
                        height: 45,
                        width: 45,
                      ).animate().fadeIn(),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: Consumer3<CommonNotifier, AuthNotifier, CustomerNotifier>(
        builder: (context, common, auth, customer, child) {

          return ListView(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                height: size.height * 0.35,
                width: size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage("assets/images/ads.webp"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.srcATop),
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Label17(text: "🌍 Vos pièces, où que vous soyez...", color: GlobalThemeData.lightColorScheme.onTertiary, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
                    const Gap(10),
                    Label12(text: "Nous adaptons notre catalogue à votre pays pour une recherche encore plus précise. Choisissez le vôtre dès maintenant.", color: GlobalThemeData.lightColorScheme.onTertiary, weight: FontWeight.normal, maxLines: 4).animate().fadeIn(),
                    const Gap(20),
                    Row(
                      children: [
                        Label12(text: "Pays actuel ", color: GlobalThemeData.lightColorScheme.onTertiary, weight: FontWeight.bold, maxLines: 1).animate().fadeIn(),
                        const Gap(10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CustomSelectable(list: common.countries, typeSelection: "country", multiple: false, onSave: (){}, notifier: auth)));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                              color: GlobalThemeData.lightColorScheme.onTertiary
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Label12(text: auth.country!.name, color: GlobalThemeData.lightColorScheme.primary, weight: FontWeight.bold, maxLines: 1).animate().fadeIn(),
                                const Gap(5),
                                Icon(Icons.arrow_drop_down_outlined, color: GlobalThemeData.lightColorScheme.primary, size: 15,),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ).animate().fadeIn(),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                GlobalThemeData.lightColorScheme.primary.withOpacity(0.2),
                                Colors.transparent
                              ]
                          ),
                        ),
                        child: Label14(text: "Pièces par engins", color: Colors.black, weight: FontWeight.bold, maxLines: 1).animate().fadeIn()
                    ),
                    const Gap(20),
                    common.filling && common.enginTypes.isEmpty ?
                      Column(
                        children: [
                          Label10(text: "Chargement des types d'engin...", color: Colors.black, weight: FontWeight.normal, maxLines: 1).animate().fadeIn(),
                          const Gap(10),
                          Loading(
                            widthSize: size.width,
                            context: context,
                            bgColor: GlobalThemeData.lightColorScheme.onTertiary,
                            shimmerColor: GlobalThemeData.lightColorScheme.primary
                          )
                        ]
                      ).animate().fadeIn()
                        :
                      SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ...common.enginTypes.map((e) => Container(
                              margin: const EdgeInsets.only(right: 30),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => TypeProductScreen(type: e)));
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ImageCategory().loadImage(e.libelle),
                                    Label12(text: e.libelle, color: Colors.black, weight: FontWeight.normal, maxLines: 2)
                                  ],
                                ),
                              ),
                            )),
                          ],
                        ),
                      ).animate().fadeIn(),
                  ],
                ),
              ),
              const Gap(40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            GlobalThemeData.lightColorScheme.primary.withOpacity(0.2),
                            Colors.transparent
                          ]
                        ),
                      ),
                      child: Label14(text: "Facilitations", color: Colors.black, weight: FontWeight.bold, maxLines: 1).animate().fadeIn()
                    ),
                    const Gap(20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...searchOptions.map((option) => InkWell(
                          splashColor: Colors.transparent,
                          onTap: () {
                            if(option["widget"] != null) {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => option["widget"]));
                            }
                          },
                          child: SizedBox(
                            width: size.width * 0.45,
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                  width: size.width,
                                  decoration: BoxDecoration(
                                    color: GlobalThemeData.lightColorScheme.onTertiary,
                                    gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Colors.transparent,
                                        GlobalThemeData.lightColorScheme.primary.withOpacity(0.2)
                                      ]
                                    ),
                                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Image.asset(
                                        option["image"],
                                        width: 75,
                                        height: 75,
                                        fit: BoxFit.contain,
                                      ).animate().fadeIn(),
                                    ],
                                  ),
                                ).animate().fadeIn(),
                                Container(
                                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                  width: size.width,
                                  decoration: BoxDecoration(
                                    color: GlobalThemeData.lightColorScheme.primary.withOpacity(0.2),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Label12(text: option["label"], color: Colors.black, weight: FontWeight.normal, maxLines: 2)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              ),
              const Gap(40)
            ],
          );
        }
      ),
    );
  }
}
