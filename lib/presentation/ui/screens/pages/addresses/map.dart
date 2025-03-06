import 'package:autocyr/domain/models/profile/address.dart';
import 'package:autocyr/presentation/notifier/auth_notifier.dart';
import 'package:autocyr/presentation/notifier/customer_notifier.dart';
import 'package:autocyr/presentation/notifier/map_notifier.dart';
import 'package:autocyr/presentation/ui/atoms/buttons/progress_button.dart';
import 'package:autocyr/presentation/ui/atoms/fields/custom_field.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label10.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/helpers/snacks.dart';
import 'package:autocyr/presentation/ui/molecules/custom_buttons/custom_button.dart';
import 'package:autocyr/presentation/ui/organisms/loaders/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class AddressMapScreen extends StatefulWidget {
  const AddressMapScreen({super.key});

  @override
  State<AddressMapScreen> createState() => _AddressMapScreenState();
}

class _AddressMapScreenState extends State<AddressMapScreen> {

  late TextEditingController addressController = TextEditingController();
  late GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  retrieveUserPosition() async {
    var map = Provider.of<MapNotifier>(context, listen: false);
    await map.getUserPosition();
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: map.center!,
          zoom: 17,
        )
      )
    );
  }

  retrieveSelectedPosition(LatLng latLng) async {
    var map = Provider.of<MapNotifier>(context, listen: false);
    map.setCenter(latLng);
    map.setCurrent(false);
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: latLng,
          zoom: 17,
        )
      )
    );
  }

  _save(BuildContext context) async {
    final auth = Provider.of<AuthNotifier>(context, listen: false);
    final map = Provider.of<MapNotifier>(context, listen: false);
    final customer = Provider.of<CustomerNotifier>(context, listen: false);

    if(addressController.text.isNotEmpty) {
      Map<String, dynamic> address = {
        "libelle": addressController.text,
        "latitude": map.center!.latitude.toString(),
        "longitude": map.center!.longitude.toString(),
        "statut": 1
      };
      Map<String, dynamic> body = {
        "address": address,
      };
      addressController.clear();
      await customer.updateAddresses(body: body, auth: auth, context: context);
    }else{
      Snacks.failureBar("Veuillez renseigner un libellé pour l'adresse avant de continuer", context);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: GlobalThemeData.lightColorScheme.tertiary,
          actions: [
            IconButton(
              onPressed: () => retrieveUserPosition(),
              icon: const Icon(
                Icons.my_location,
                color: Colors.white,
                size: 20,
              )
            )
          ],
        ),
      body: Consumer3<MapNotifier, AuthNotifier, CustomerNotifier>(
            builder: (context, map, auth, customer, child) {
              List<Address> addresses = auth.client?.adressesClient ?? [];

              if(map.loading){
                return Loader(context: context, size: size, message: "Chargement de la carte...").animate().fadeIn();
              }

              return Stack(
                children: [
                  GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: map.center!,
                      zoom: 15,
                    ),
                    onMapCreated: _onMapCreated,
                    markers: {
                      Marker(
                        markerId: const MarkerId("1"),
                        icon: map.customIcon == null ? BitmapDescriptor.defaultMarker : map.customIcon!,
                        position: map.center!,
                        draggable: true,
                      ),
                      if(addresses.isNotEmpty)
                        ...addresses.map((address) => Marker(
                          markerId: MarkerId("${address.longitude} ${address.latitude}"),
                          icon: map.storeIcon == null ? BitmapDescriptor.defaultMarker : map.storeIcon!,
                          position: LatLng(double.parse(address.latitude), double.parse(address.longitude)),
                          draggable: true,
                        ))
                    },
                    zoomControlsEnabled: false,
                    onTap: (LatLng latLng) => retrieveSelectedPosition(latLng),
                  ).animate().fadeIn(),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                        border: Border.all(color: GlobalThemeData.lightColorScheme.tertiaryContainer),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                "assets/markers/location.png",
                                width: 20,
                                height: 20,
                                fit: BoxFit.fill,
                              ),
                              const Gap(10),
                              Label10(text: "Votre position", color: Colors.black87, weight: FontWeight.bold, maxLines: 1)
                            ],
                          ),
                          const Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                "assets/markers/place.png",
                                width: 20,
                                height: 20,
                                fit: BoxFit.fill,
                              ),
                              const Gap(10),
                              Label10(text: "Vos adresses", color: Colors.black87, weight: FontWeight.bold, maxLines: 1)
                            ],
                          ),
                        ],
                      ).animate().fadeIn(),
                    ),
                  ),
                  PositionedDirectional(
                    width: size.width,
                    bottom: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: size.width,
                          margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                            border: Border.all(color: GlobalThemeData.lightColorScheme.tertiaryContainer),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Label14(text: "Nouvelle adresse", color: Colors.black, weight: FontWeight.bold, maxLines: 2).animate().slide(),
                                  const Gap(20),
                                  CustomField(
                                    controller: addressController,
                                    keyboardType: TextInputType.text,
                                    label: "Libellé de l'adresse",
                                    fontSize: 12,
                                    icon: Icons.location_on_rounded,
                                  )
                                ],
                              ).animate().fadeIn(),
                              const Gap(10),
                              customer.loading ?
                                ProgressButton(
                                  widthSize: size.width * 0.9,
                                  context: context,
                                  bgColor: GlobalThemeData.lightColorScheme.onTertiary,
                                  shimmerColor: GlobalThemeData.lightColorScheme.tertiary
                                ).animate().fadeIn()
                                  :
                                CustomButton(
                                  text: "Enregistrer",
                                  size: size,
                                  globalWidth: size.width * 0.87,
                                  widthSize: size.width * 0.83,
                                  backSize: size.width * 0.83,
                                  context: context,
                                  function: () => _save(context),
                                  textColor: GlobalThemeData.lightColorScheme.tertiary,
                                  buttonColor: GlobalThemeData.lightColorScheme.onTertiary,
                                  backColor: GlobalThemeData.lightColorScheme.tertiary
                                )
                            ],
                          ),
                        ).animate().fadeIn(),
                      ],
                    ),
                  )
                ],
              );
            }
        )
    );
  }
}
