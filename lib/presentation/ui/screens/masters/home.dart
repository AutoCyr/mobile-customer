import 'package:autocyr/data/network/urls.dart';
import 'package:autocyr/domain/models/pieces/detail_piece.dart';
import 'package:autocyr/presentation/notifier/common_notifier.dart';
import 'package:autocyr/presentation/notifier/customer_notifier.dart';
import 'package:autocyr/presentation/ui/atoms/buttons/progress_button.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label10.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label13.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label17.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/helpers/image_category.dart';
import 'package:autocyr/presentation/ui/molecules/custom_buttons/custom_icon_button.dart';
import 'package:autocyr/presentation/ui/organisms/selectors/selector.dart';
import 'package:autocyr/presentation/ui/screens/helpers/piece_widget.dart';
import 'package:autocyr/presentation/ui/screens/pages/addresses/list.dart';
import 'package:autocyr/presentation/ui/screens/pages/products/detail.dart';
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

  retrieveCommons() async {
    final common = Provider.of<CommonNotifier>(context, listen: false);
    if(!common.filling) {
      if(common.enginTypes.isEmpty) {
        await common.retrieveEnginTypes(context: context);
      }
    }
  }

  retrievePieces() async {
    final customer = Provider.of<CustomerNotifier>(context, listen: false);
    if(!customer.filling) {
      if(customer.pieces.isEmpty) {
        await customer.retrievePieces(context: context);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      retrieveCommons();
      retrievePieces();
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
                ).animate().fadeIn().tint(color: GlobalThemeData.lightColorScheme.tertiary),
              ]
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => BottomSelector().showIconMenu(
                context: context,
                options: [],
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
                      border: Border.all(color: GlobalThemeData.lightColorScheme.tertiary.withOpacity(0.5), width: 1.2)
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
      body: Consumer2<CommonNotifier, CustomerNotifier>(
        builder: (context, common, customer, child) {

          return ListView(
            children: [
              Container(
                height: size.width * 0.5,
                width: size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage("assets/images/ads.webp"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.srcATop),
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const AddressListScreen())),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        width: size.width,
                        decoration: BoxDecoration(
                          color: GlobalThemeData.lightColorScheme.tertiary,
                        ),
                        child: Center(
                          child: Label12(
                              text: "Ajouter vos adresses",
                              color:GlobalThemeData.lightColorScheme.onTertiary,
                              weight: FontWeight.bold,
                              maxLines: 1
                          ).animate().fadeIn(),
                        ),
                      ),
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
                    Label17(text: "Pièces par catégorie", color: Colors.black, weight: FontWeight.bold, maxLines: 1).animate().fadeIn(),
                    const Gap(20),
                    common.filling && common.enginTypes.isEmpty ?
                      Column(
                        children: [
                          Label10(text: "Chargement des catégories...", color: Colors.black, weight: FontWeight.normal, maxLines: 1).animate().fadeIn(),
                          const Gap(10),
                          ProgressButton(
                            widthSize: size.width,
                            context: context,
                            bgColor: GlobalThemeData.lightColorScheme.onTertiary,
                            shimmerColor: GlobalThemeData.lightColorScheme.tertiary
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

                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                                              color: GlobalThemeData.lightColorScheme.tertiaryContainer.withOpacity(0.1)
                                          )
                                        ),
                                        ImageCategory().loadImage(e.libelle),
                                      ],
                                    ),
                                    const Gap(10),
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
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Label17(text: "Dernières pièces", color: Colors.black, weight: FontWeight.bold, maxLines: 1).animate().fadeIn(),
                    const Gap(20),
                    customer.filling && customer.pieces.isEmpty ?
                      Column(
                        children: [
                          Label10(text: "Chargement des pièces...", color: Colors.black, weight: FontWeight.normal, maxLines: 1).animate().fadeIn(),
                          const Gap(10),
                          ProgressButton(
                              widthSize: size.width,
                              context: context,
                              bgColor: GlobalThemeData.lightColorScheme.onTertiary,
                              shimmerColor: GlobalThemeData.lightColorScheme.tertiary
                          )
                        ]
                      ).animate().fadeIn()
                        :
                      GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        mainAxisSpacing: 32,
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        childAspectRatio: 0.75,
                        children: [
                          ...customer.pieces.map((piece) => PieceWidget(piece: piece)),
                        ],
                      )
                  ],
                ),
              )
            ],
          );
        }
      ),
    );
  }
}
