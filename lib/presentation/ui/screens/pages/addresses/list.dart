import 'package:autocyr/domain/models/profile/address.dart';
import 'package:autocyr/domain/models/profile/partenaire.dart';
import 'package:autocyr/presentation/notifier/auth_notifier.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/helpers/state.dart';
import 'package:autocyr/presentation/ui/screens/pages/addresses/map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class AddressListScreen extends StatefulWidget {
  const AddressListScreen({super.key});

  @override
  State<AddressListScreen> createState() => _AddressListScreenState();
}

class _AddressListScreenState extends State<AddressListScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: GlobalThemeData.lightColorScheme.tertiary),
        backgroundColor: GlobalThemeData.lightColorScheme.onTertiary,
        title: Label14(text: "Mes adresses", color: GlobalThemeData.lightColorScheme.tertiary, weight: FontWeight.bold, maxLines: 1).animate().fadeIn(),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const AddressMapScreen())),
            icon: const Icon(Icons.add),
          ).animate().fadeIn(),
        ]
      ),
      body: Consumer<AuthNotifier>(
          builder: (context, auth, child) {
            List<Address> addresses = auth.client?.adressesClient ?? [];

            if(addresses.isEmpty) {
              return const StateScreen(icon: Icons.location_off_sharp, message: "Aucune adresse trouvée.", isError: false,);
            }

            return ListView(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                children: [
                  ...addresses.reversed.map((address) => Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      children: [
                        const Icon(Icons.location_on_rounded, color: Colors.grey, size: 24,),
                        const Gap(20),
                        SizedBox(
                            width: size.width * 0.8,
                            child: Label12(text: address.libelle, color: Colors.black, weight: FontWeight.bold, maxLines: 2)
                        ),
                      ],
                    ),
                  ).animate().slide())
                ]
            );
          }
      ),
    );
  }
}
