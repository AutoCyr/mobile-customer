import 'package:autocyr/presentation/notifier/common_notifier.dart';
import 'package:autocyr/presentation/notifier/customer_notifier.dart';
import 'package:autocyr/presentation/ui/atoms/buttons/progress_button.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label10.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/helpers/snacks.dart';
import 'package:autocyr/presentation/ui/organisms/loaders/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class FilterScreen extends StatefulWidget {
  final Function onUpdate;
  const FilterScreen({super.key, required this.onUpdate});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {

  List<int> autos = [];
  List<int> moteurs = [];
  List<int> categories = [];

  loadFilters() async {
    final customer = Provider.of<CustomerNotifier>(context, listen: false);
    setState(() {
      autos = customer.autoFilters;
      moteurs = customer.motorFilters;
      categories = customer.categoryFilters;
    });
  }

  retrieveCommons() async {
    final common = Provider.of<CommonNotifier>(context, listen: false);
    if(!common.filling) {
      if(common.autoTypes.isEmpty) {
        await common.retrieveAutoTypes(context: context);
      }
      if(common.enginCategories.isEmpty) {
        await common.retrieveEnginCategories(context: context);
      }
      if(common.motorTypes.isEmpty) {
        await common.retrieveMotorTypes(context: context);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await retrieveCommons();
      loadFilters();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: GlobalThemeData.lightColorScheme.onTertiary),
        backgroundColor: GlobalThemeData.lightColorScheme.primary,
        title: Label14(text: "Choisir des options", color: GlobalThemeData.lightColorScheme.onTertiary, weight: FontWeight.bold, maxLines: 1).animate().fadeIn(),
        actions: [
          Consumer2<CommonNotifier, CustomerNotifier>(
            builder: (context, common, customer, child) {
              if(!common.filling) {
                return IconButton(
                  onPressed: () async {
                    await customer.setAutoFilters(autos);
                    await customer.setMotorFilters(moteurs);
                    await customer.setCategoryFilters(categories);
                    Snacks.successBar("Filtres mis à jour", context);
                    await widget.onUpdate();
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.check),
                ).animate().fadeIn();
              }

              return const SizedBox();
            }
          )
        ],
      ),
      body: Consumer2<CommonNotifier, CustomerNotifier>(
        builder: (context, common, customer, child) {

          if(common.filling) {
            return Loader(context: context, size: size, message: "Chargement des options...").animate().fadeIn();
          }

          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    color: GlobalThemeData.lightColorScheme.primary.withOpacity(0.7),
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))
                ),
                child: Label12(text: "Types de véhicules", color: GlobalThemeData.lightColorScheme.onTertiary, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
              ),
              const Gap(10),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: common.autoTypes.length,
                  itemBuilder: (context, index) {
                    var auto = common.autoTypes[index];
                    return Row(
                      children: [
                        Checkbox(
                          value: autos.contains(auto.id),
                          onChanged: (value) async {
                            setState(() {
                              if(autos.contains(auto.id)) {
                                autos.remove(auto.id);
                              } else {
                                autos.add(auto.id);
                              }
                            });
                          },
                          activeColor: GlobalThemeData.lightColorScheme.primary,
                        ).animate().fadeIn(),
                        const Gap(10),
                        Label12(
                            text: auto.libelle,
                            color: autos.contains(auto.id) ? GlobalThemeData.lightColorScheme.primary : Colors.black,
                            weight: autos.contains(auto.id) ? FontWeight.bold : FontWeight.normal,
                            maxLines: 1
                        ).animate().fadeIn(),
                      ],
                    );
                  }
              ),
              const Gap(20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    color: GlobalThemeData.lightColorScheme.primary.withOpacity(0.7),
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))
                ),
                child: Label12(text: "Types de moteur", color: GlobalThemeData.lightColorScheme.onTertiary, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
              ),
              const Gap(10),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: common.motorTypes.length,
                  itemBuilder: (context, index) {
                    var motor = common.motorTypes[index];
                    return Row(
                      children: [
                        Checkbox(
                          value: moteurs.contains(motor.id),
                          onChanged: (value) async {
                            setState(() {
                              if(moteurs.contains(motor.id)) {
                                moteurs.remove(motor.id);
                              } else {
                                moteurs.add(motor.id);
                              }
                            });
                          },
                          activeColor: GlobalThemeData.lightColorScheme.primary,
                        ).animate().fadeIn(),
                        const Gap(10),
                        Label12(
                            text: motor.libelle,
                            color: moteurs.contains(motor.id) ? GlobalThemeData.lightColorScheme.primary : Colors.black,
                            weight: moteurs.contains(motor.id) ? FontWeight.bold : FontWeight.normal,
                            maxLines: 1
                        ).animate().fadeIn(),
                      ],
                    );
                  }
              ),
              const Gap(20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    color: GlobalThemeData.lightColorScheme.primary.withOpacity(0.7),
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))
                ),
                child: Label12(text: "Catégories d'engin", color: GlobalThemeData.lightColorScheme.onTertiary, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
              ),
              const Gap(10),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: common.enginCategories.length,
                  itemBuilder: (context, index) {
                    var category = common.enginCategories[index];
                    return Row(
                      children: [
                        Checkbox(
                          value: categories.contains(category.id),
                          onChanged: (value) async {
                            setState(() {
                              if(categories.contains(category.id)) {
                                categories.remove(category.id);
                              } else {
                                categories.add(category.id);
                              }
                            });
                          },
                          activeColor: GlobalThemeData.lightColorScheme.primary,
                        ).animate().fadeIn(),
                        const Gap(10),
                        Label12(
                            text: category.libelle,
                            color: categories.contains(category.id) ? GlobalThemeData.lightColorScheme.primary : Colors.black,
                            weight: categories.contains(category.id) ? FontWeight.bold : FontWeight.normal,
                            maxLines: 1
                        ).animate().fadeIn(),
                      ],
                    );
                  }
              ),
            ],
          );
        }
      )
    );
  }
}
