import 'package:autocyr/domain/models/commons/partner_type.dart';
import 'package:autocyr/domain/models/profile/address.dart';
import 'package:autocyr/presentation/notifier/auth_notifier.dart';
import 'package:autocyr/presentation/notifier/common_notifier.dart';
import 'package:autocyr/presentation/notifier/map_notifier.dart';
import 'package:autocyr/presentation/ui/atoms/buttons/progress_button.dart';
import 'package:autocyr/presentation/ui/atoms/fields/custom_selectable_field.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label10.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class SearchShopScreen extends StatefulWidget {
  const SearchShopScreen({super.key});

  @override
  State<SearchShopScreen> createState() => _SearchShopScreenState();
}

class _SearchShopScreenState extends State<SearchShopScreen> {

  bool isActive = true;

  String zone = "";
  String type = "";

  Address? currentAddress;
  Address? selectedAddress;

  final TextEditingController _zoneController = TextEditingController();
  final TextEditingController _typeController = TextEditingController();

  retrieveCommons() async {
    final common = Provider.of<CommonNotifier>(context, listen: false);
    if(common.partnerTypes.isEmpty) {
      await common.retrievePartnerTypes(context: context);
    }
  }

  retrieveUserPosition() async {
    var map = Provider.of<MapNotifier>(context, listen: false);
    await map.getUserPosition();
    Map<String, dynamic> address = {
      "libelle": "Votre position actuelle",
      "latitude": map.center!.latitude.toString(),
      "longitude": map.center!.longitude.toString(),
      "statut": 1
    };
    Address location = Address.fromJson(address);
    setState(() {
      currentAddress = location;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      retrieveUserPosition();
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
        title: Label14(text: "Rechercher une boutique", color: GlobalThemeData.lightColorScheme.onTertiary, weight: FontWeight.bold, maxLines: 1).animate().fadeIn()
      ),
      body: Consumer2<AuthNotifier, CommonNotifier>(
        builder: (context, auth, common, child) {
          List<Address> addresses = auth.client?.adressesClient ?? [];

          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: GlobalThemeData.lightColorScheme.onTertiary,
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                  border: Border.all(color: GlobalThemeData.lightColorScheme.tertiary.withOpacity(0.5), width: 1)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Label14(text: "Recherche rapide", color: GlobalThemeData.lightColorScheme.tertiary, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isActive = !isActive;
                            });
                          },
                          icon: Icon(isActive ? Icons.arrow_drop_up_outlined : Icons.arrow_drop_down_outlined, color: GlobalThemeData.lightColorScheme.tertiary,),
                        ).animate().fadeIn(),
                      ],
                    ),
                    if(isActive)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: size.width * 0.43,
                                child: CustomSelectableField(
                                    controller: _zoneController,
                                    key: zone,
                                    keyboardType: TextInputType.none,
                                    label: "Choisir une zone",
                                    fontSize: 12,
                                    icon: Icons.my_location_sharp,
                                    context: context,
                                    options: [
                                      if(currentAddress != null)
                                        currentAddress!,
                                      ...addresses
                                    ],
                                    displayField: (value) => (value as Address).libelle,
                                    onSelected: (value) {
                                      setState(() {
                                        _zoneController.text = value.libelle;
                                        zone = (value as Address).libelle;
                                        selectedAddress = value;
                                      });
                                    }
                                ).animate().fadeIn(),
                              ),
                              SizedBox(
                                width: size.width * 0.43,
                                child: common.filling ?
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Label10(text: "Chargement des types de partenaire...", color: GlobalThemeData.lightColorScheme.tertiary, weight: FontWeight.normal, maxLines: 1).animate().fadeIn(),
                                      const Gap(10),
                                      ProgressButton(
                                          widthSize: size.width * 0.45,
                                          context: context,
                                          bgColor: GlobalThemeData.lightColorScheme.onTertiary,
                                          shimmerColor: GlobalThemeData.lightColorScheme.tertiary
                                      )
                                    ]
                                ).animate().fadeIn()
                                    :
                                CustomSelectableField(
                                    controller: _typeController,
                                    key: type,
                                    keyboardType: TextInputType.none,
                                    label: "Type de partenaire",
                                    fontSize: 12,
                                    icon: Icons.person_pin_outlined,
                                    context: context,
                                    options: common.partnerTypes,
                                    displayField: (value) => (value as PartnerType).libelle,
                                    onSelected: (value) {
                                      common.setPartnerType(value as PartnerType);
                                      setState(() {
                                        _typeController.text = value.libelle;
                                        type = value.id.toString();
                                      });
                                    }
                                ).animate().fadeIn(),
                              ),
                            ],
                          ),
                          const Gap(10),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: GlobalThemeData.lightColorScheme.tertiary.withOpacity(0.1),
                                focusColor: GlobalThemeData.lightColorScheme.tertiary,
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: GlobalThemeData.lightColorScheme.tertiary,
                                        width: 2
                                    )
                                ),
                                labelText: "Rechercher",
                                labelStyle: TextStyle(
                                    color: GlobalThemeData.lightColorScheme.tertiary,
                                    fontSize: 13
                                )
                            ),
                            style: const TextStyle(
                                fontSize: 13
                            ),
                            autofocus: false,
                            onChanged: (value) {

                            },
                            cursorColor: GlobalThemeData.lightColorScheme.tertiaryContainer,
                          ).animate().fadeIn(),
                        ],
                      )
                  ],
                ),
              ),
              const Gap(20),
            ],
          );
        }
      )
    );
  }
}
