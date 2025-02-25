import 'package:autocyr/domain/models/commons/engin_type.dart';
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

  final TextEditingController _nomPieceController = TextEditingController();
  final TextEditingController _marqueController = TextEditingController();
  final TextEditingController _typeController = TextEditingController();
  final TextEditingController _modeleController = TextEditingController();
  final TextEditingController _numeroController = TextEditingController();
  final TextEditingController _anneeController = TextEditingController();
  final TextEditingController _prixController = TextEditingController();
  final TextEditingController _autreController = TextEditingController();

  retrieveCommons() async {
    final common = Provider.of<CommonNotifier>(context, listen: false);
    if(!common.filling) {
      if(common.carMakes.isEmpty) {
        await common.retrieveAutoMakes(context: context);
      }
      if(common.bikeMakes.isEmpty) {
        await common.retrieveBikeMakes(context: context);
      }
      if(common.enginTypes.isEmpty) {
        await common.retrieveEnginTypes(context: context);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
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
                        /*if(media == null)
                          GestureDetector(
                            onTap: () => getImageFromGallery(),
                            child: Container(
                              width: size.width,
                              height: size.width * 0.3,
                              decoration: BoxDecoration(
                                  color: GlobalThemeData.lightColorScheme.tertiary.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: Center(
                                child: Label12(text: "Sélectionner une image", color: Colors.black, weight: FontWeight.bold, maxLines: 1).animate().fadeIn(),
                              ),
                            ).animate().fadeIn(),
                          )
                        else if(media != null)
                          Container(
                              width: size.width,
                              height: size.width * 0.3,
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                color: GlobalThemeData.lightColorScheme.tertiary.withOpacity(0.1),
                                borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: size.width * 0.27,
                                          height: size.width * 0.27,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: GlobalThemeData.lightColorScheme.tertiary, width: 1),
                                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                                            image: DecorationImage(
                                                image: FileImage(media!),
                                                fit: BoxFit.cover
                                            ),
                                          )
                                      ),
                                      const Gap(10),
                                      SizedBox(
                                        width: size.width * 0.55,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      media = null;
                                                    });
                                                  },
                                                  child: const Icon(
                                                    Icons.close,
                                                    color: Colors.black,
                                                    size: 20,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Label12(text: "Média sélectionné", color: Colors.black, weight: FontWeight.bold, maxLines: 1).animate().fadeIn(),
                                                const Gap(5),
                                                Label12(text: _image!.name, color: Colors.black, weight: FontWeight.bold, maxLines: 1).animate().fadeIn(),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )

                                    ],
                                  )
                                ],
                              )
                          ).animate().fadeIn(),
                        const Gap(10),*/
                        CustomField(
                          controller: _nomPieceController,
                          keyboardType: TextInputType.text,
                          label: "Nom de la pièce",
                          fontSize: 12,
                          icon: Icons.text_fields_outlined,
                        ).animate().fadeIn(),
                        const Gap(10),
                        common.filling ?
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
                        common.filling ?
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: size.width * 0.45,
                              child: CustomField(
                                controller: _modeleController,
                                keyboardType: TextInputType.text,
                                label: "Modèle",
                                fontSize: 12,
                                icon: Icons.style_outlined,
                              ).animate().fadeIn(),
                            ),
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
                          ],
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: size.width * 0.45,
                              child: CustomField(
                                controller: _anneeController,
                                keyboardType: TextInputType.number,
                                label: "Année",
                                fontSize: 12,
                                icon: Icons.calendar_today_outlined,
                              ).animate().fadeIn(),
                            ),
                            SizedBox(
                              width: size.width * 0.45,
                              child: CustomField(
                                controller: _prixController,
                                keyboardType: TextInputType.number,
                                label: "Prix",
                                fontSize: 12,
                                icon: Icons.onetwothree_sharp,
                              ).animate().fadeIn(),
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
                            controller: _autreController,
                            keyboardType: TextInputType.text,
                            label: "Autres informations",
                            fontSize: 12,
                            icon: Icons.more_horiz_outlined
                        ).animate().fadeIn(),
                        const Gap(20),
                        customer.loading ?
                          ProgressButton(
                            widthSize: size.width * 0.9,
                            context: context,
                            bgColor: GlobalThemeData.lightColorScheme.onTertiary,
                            shimmerColor: GlobalThemeData.lightColorScheme.tertiary
                          ).animate().fadeIn()
                            :
                          SizedBox(
                            width: size.width,
                            child: CustomButton(
                                text: "Envoyer",
                                size: size,
                                globalWidth: size.width * 0.95,
                                widthSize: size.width * 0.9,
                                backSize: size.width * 0.9,
                                context: context,
                                function: () {},
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
