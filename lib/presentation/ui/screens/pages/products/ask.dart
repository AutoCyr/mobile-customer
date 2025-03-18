import 'package:autocyr/domain/models/commons/engin_type.dart';
import 'package:autocyr/presentation/notifier/auth_notifier.dart';
import 'package:autocyr/presentation/notifier/common_notifier.dart';
import 'package:autocyr/presentation/notifier/customer_notifier.dart';
import 'package:autocyr/presentation/ui/atoms/buttons/progress_button.dart';
import 'package:autocyr/presentation/ui/atoms/fields/custom_field.dart';
import 'package:autocyr/presentation/ui/atoms/fields/custom_selectable_field.dart';
import 'package:autocyr/presentation/ui/atoms/fields/description_field.dart';
import 'package:autocyr/presentation/ui/atoms/fields/object_selectable_field.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label10.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/helpers/snacks.dart';
import 'package:autocyr/presentation/ui/helpers/ui.dart';
import 'package:autocyr/presentation/ui/molecules/custom_buttons/custom_button.dart';
import 'package:autocyr/presentation/ui/organisms/searchables/searchable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class AskScreen extends StatefulWidget {
  const AskScreen({super.key});

  @override
  State<AskScreen> createState() => _AskScreenState();
}

class _AskScreenState extends State<AskScreen> {

  late bool _isGarantie = false;
  late String typeKey = "";

  final TextEditingController _articleController = TextEditingController();
  final TextEditingController _marqueController = TextEditingController();
  final TextEditingController _typeController = TextEditingController();
  final TextEditingController _modeleController = TextEditingController();
  final TextEditingController _numeroController = TextEditingController();
  final TextEditingController _anneeController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _autreController = TextEditingController();

  _search() async {
    final customer = Provider.of<CustomerNotifier>(context, listen: false);
    final auth = Provider.of<AuthNotifier>(context, listen: false);
    final common = Provider.of<CommonNotifier>(context, listen: false);

    if(UiTools().checkFields([_articleController, _typeController, _descriptionController])) {
      Map<String, dynamic> payload = {
        "country_id": auth.getClient.paysId,
        "client_id" : auth.getClient.clientId,
        "article_id" : common.article!.id,
        "type_engin_id" : typeKey,
        "marque_id": _typeController.text.toLowerCase() != "quatre roues" ? common.bikeMake!.id : common.carMake!.id,
        "description": _descriptionController.text,
        "modele": _modeleController.text,
        "numero": _numeroController.text,
        "annee": _anneeController.text,
        "garantie" : _isGarantie ? "1" : "0",
        "autres" : _autreController.text
      };
      await customer.searchRequest(context: context, params: payload);
    } else {
      Snacks.failureBar("Veuillez remplir tous les champs avant de continuer", context);
    }
  }

  retrieveCommons() async {
    final common = Provider.of<CommonNotifier>(context, listen: false);
    if(!common.filling) {
      if(common.articles.isEmpty) {
        await common.retrieveArticles(context: context);
      }
      if(common.enginTypes.isEmpty) {
        await common.retrieveEnginTypes(context: context);
      }
      if(common.carMakes.isEmpty) {
        await common.retrieveAutoMakes(context: context);
      }
      if(common.bikeMakes.isEmpty) {
        await common.retrieveBikeMakes(context: context);
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
        iconTheme: IconThemeData(color: GlobalThemeData.lightColorScheme.onTertiary),
        backgroundColor: GlobalThemeData.lightColorScheme.tertiaryContainer,
        title: Label14(text: "Faire une demande", color: GlobalThemeData.lightColorScheme.onTertiary, weight: FontWeight.bold, maxLines: 1).animate().fadeIn()
      ),
      body: Consumer2<CommonNotifier, CustomerNotifier>(
          builder: (context, common, customer, child) {
            return SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        common.filling && common.articles.isEmpty ?
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Label10(text: "Chargement des pièces...", color: Colors.black, weight: FontWeight.normal, maxLines: 1).animate().fadeIn(),
                              const Gap(10),
                              ProgressButton(
                                  widthSize: size.width * 0.95,
                                  context: context,
                                  bgColor: GlobalThemeData.lightColorScheme.onTertiary,
                                  shimmerColor: GlobalThemeData.lightColorScheme.tertiary
                              )
                            ]
                          ).animate().fadeIn()
                            :
                          ObjectSelectableField(
                            controller: _articleController,
                            keyboardType: TextInputType.none,
                            label: "Pièce",
                            fontSize: 12,
                            icon: Icons.settings_outlined,
                            context: context,
                            onSelected: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return CustomSearchable(
                                    controller: _articleController,
                                    list: common.articles,
                                    typeSelection: "article"
                                );
                              }));
                            }
                          ).animate().fadeIn(),
                        const Gap(10),
                        common.filling && common.enginTypes.isEmpty ?
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Label10(text: "Chargement des catégories...", color: Colors.black, weight: FontWeight.normal, maxLines: 1).animate().fadeIn(),
                              const Gap(10),
                              ProgressButton(
                                  widthSize: size.width * 0.95,
                                  context: context,
                                  bgColor: GlobalThemeData.lightColorScheme.onTertiary,
                                  shimmerColor: GlobalThemeData.lightColorScheme.tertiary
                              )
                            ]
                          ).animate().fadeIn()
                            :
                          CustomSelectableField(
                            controller: _typeController,
                            key: typeKey,
                            keyboardType: TextInputType.none,
                            label: "Catégorie d'engin",
                            fontSize: 12,
                            icon: Icons.car_rental_outlined,
                            context: context,
                            options: common.enginTypes,
                            displayField: (value) => (value as EnginType).libelle,
                            onSelected: (value) {
                              setState(() {
                                _typeController.text = value.libelle;
                                typeKey = value.id.toString();
                              });
                            }
                          ).animate().fadeIn(),
                        const Gap(10),
                        common.filling && (common.carMakes.isEmpty || common.bikeMakes.isEmpty) ?
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Label10(text: "Chargement des marques...", color: Colors.black, weight: FontWeight.normal, maxLines: 1).animate().fadeIn(),
                              const Gap(10),
                              ProgressButton(
                                  widthSize: size.width * 0.95,
                                  context: context,
                                  bgColor: GlobalThemeData.lightColorScheme.onTertiary,
                                  shimmerColor: GlobalThemeData.lightColorScheme.tertiary
                              )
                            ]
                          ).animate().fadeIn()
                            :
                          ObjectSelectableField(
                            controller: _marqueController,
                            keyboardType: TextInputType.none,
                            label: "Marque",
                            fontSize: 12,
                            icon: Icons.loyalty_outlined,
                            context: context,
                            onSelected: () {
                              if(_typeController.text.isNotEmpty) {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return CustomSearchable(
                                    controller: _marqueController,
                                    list: _typeController.text.toLowerCase() != "quatre roues" ? common.bikeMakes : common.carMakes,
                                    typeSelection: _typeController.text.toLowerCase() != "quatre roues" ? "bike" : "car",
                                  );
                                }));
                              } else {
                                Snacks.failureBar("Veuillez sélectionner une catégorie d'engin", context);
                              }
                            }
                          ).animate().fadeIn(),
                        const Gap(10),
                        CustomField(
                          controller: _modeleController,
                          keyboardType: TextInputType.text,
                          label: "Modèle",
                          fontSize: 12,
                          icon: Icons.style_outlined,
                        ).animate().fadeIn(),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: size.width * 0.45,
                              child: CustomField(
                                controller: _numeroController,
                                keyboardType: TextInputType.text,
                                label: "Numéro",
                                fontSize: 12,
                                icon: Icons.onetwothree_sharp,
                              ).animate().fadeIn(),
                            ),
                            SizedBox(
                              width: size.width * 0.45,
                              child: CustomField(
                                controller: _anneeController,
                                keyboardType: TextInputType.number,
                                label: "Année",
                                fontSize: 12,
                                icon: Icons.calendar_today_outlined,
                              ).animate().fadeIn()
                            ),
                          ],
                        ),
                        const Gap(10),
                        Row(
                          children: [
                            Checkbox(
                              value: _isGarantie,
                              onChanged: (value) {
                                setState(() {
                                  _isGarantie = value!;
                                });
                              },
                              activeColor: GlobalThemeData.lightColorScheme.tertiary,
                            ).animate().fadeIn(),
                            const Gap(10),
                            const Text("Est garantie").animate().fadeIn(),
                          ],
                        ),
                        const Gap(10),
                        DescriptionField(
                          controller: _descriptionController,
                          keyboardType: TextInputType.text,
                          label: "Décrivez ce que vous recherchez...",
                          fontSize: 12,
                          icon: Icons.description_outlined,
                          maxLines: 3
                        ).animate().fadeIn(),
                        const Gap(10),
                        DescriptionField(
                          controller: _autreController,
                          keyboardType: TextInputType.text,
                          label: "Autres informations",
                          fontSize: 12,
                          icon: Icons.more_horiz_outlined,
                          maxLines: 7
                        ).animate().fadeIn(),
                        const Gap(20),
                        customer.loading ?
                          ProgressButton(
                            widthSize: size.width * 0.95,
                            context: context,
                            bgColor: GlobalThemeData.lightColorScheme.onTertiary,
                            shimmerColor: GlobalThemeData.lightColorScheme.tertiary
                          ).animate().fadeIn()
                            :
                          SizedBox(
                            width: size.width,
                            child: CustomButton(
                                text: "Lancer la recherche",
                                size: size,
                                globalWidth: size.width * 0.95,
                                widthSize: size.width * 0.9,
                                backSize: size.width * 0.9,
                                context: context,
                                function: () => _search(),
                                textColor: GlobalThemeData.lightColorScheme.tertiary,
                                buttonColor: GlobalThemeData.lightColorScheme.onTertiary,
                                backColor: GlobalThemeData.lightColorScheme.tertiary
                            ).animate().fadeIn(),
                          ),
                      ]
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
