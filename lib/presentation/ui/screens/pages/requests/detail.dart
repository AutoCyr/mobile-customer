import 'package:autocyr/domain/models/features/demande.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label13.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label17.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class RequestDetailScreen extends StatefulWidget {
  final Demande demande;
  const RequestDetailScreen({super.key, required this.demande});

  @override
  State<RequestDetailScreen> createState() => _RequestDetailScreenState();
}

class _RequestDetailScreenState extends State<RequestDetailScreen> {

  Demande? detail;

  @override
  void initState() {
    super.initState();
    detail = widget.demande;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: GlobalThemeData.lightColorScheme.tertiary),
          backgroundColor: GlobalThemeData.lightColorScheme.onTertiary,
          title: Label14(text: "Détail de la demande", color: GlobalThemeData.lightColorScheme.tertiaryContainer, weight: FontWeight.bold, maxLines: 1).animate().fadeIn()
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            width: size.width,
            decoration: BoxDecoration(
              color: GlobalThemeData.lightColorScheme.tertiaryContainer,
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
              border: Border.all(color: GlobalThemeData.lightColorScheme.tertiary, width: 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Label17(text: "Demande #${detail!.reference}", color: GlobalThemeData.lightColorScheme.onTertiaryContainer, weight: FontWeight.bold, maxLines: 1).animate().fadeIn(),
                const Gap(10),
                Label13(text: "Effectuée le ${DateFormat.yMMMMEEEEd("fr").format(detail!.dateDemande)} à ${DateFormat.Hm("fr").format(detail!.dateDemande)}", color: GlobalThemeData.lightColorScheme.onTertiaryContainer, weight: FontWeight.normal, maxLines: 2).animate().fadeIn(),
              ],
            ),
          ),
          const Gap(10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: size.width,
            decoration: BoxDecoration(
              color: GlobalThemeData.lightColorScheme.onTertiary,
              border: Border.all(color: GlobalThemeData.lightColorScheme.tertiary, width: 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Label14(text: detail!.article.name, color: Colors.black87, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
                const Gap(10),
                Label14(text: "${detail!.marque.name} ${detail!.modelePiece ?? ""} ${detail!.numeroPiece ?? ""} ${detail!.anneePiece ?? ""}", color: Colors.black87, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
                const Gap(5),
                Label13(text: detail!.garantie == 1 ? "Pièce garantie" : "Pièce non garantie", color: Colors.black87, weight: FontWeight.normal, maxLines: 2).animate().fadeIn(),
                const Gap(10),
                Divider(
                  color: GlobalThemeData.lightColorScheme.onSurface,
                  thickness: 1,
                  height: 1,
                ).animate().fadeIn(),
                const Gap(10),
                Label14(text: "Description de la pièce", color: Colors.black87, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
                const Gap(5),
                Label12(text: detail!.descriptionPiece, color: Colors.black87, weight: FontWeight.normal, maxLines: 50).animate().fadeIn(),
                const Gap(10),
                if(detail!.autres != null)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(10),
                      Label14(text: "Autres informations", color: Colors.black87, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
                      const Gap(10),
                      Label12(text: detail!.autres!, color: Colors.black87, weight: FontWeight.bold, maxLines: 50).animate().fadeIn(),
                    ],
                  ).animate().fadeIn(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
