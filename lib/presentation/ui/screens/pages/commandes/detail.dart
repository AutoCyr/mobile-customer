import 'package:autocyr/data/helpers/redirections.dart';
import 'package:autocyr/data/network/urls.dart';
import 'package:autocyr/domain/models/features/commande.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label13.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label17.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:intl/intl.dart';

class CommandeDetailScreen extends StatefulWidget {
  final Commande commande;
  const CommandeDetailScreen({super.key, required this.commande});

  @override
  State<CommandeDetailScreen> createState() => _CommandeDetailScreenState();
}

class _CommandeDetailScreenState extends State<CommandeDetailScreen> {

  Commande? detail;

  @override
  void initState() {
    super.initState();
    detail = widget.commande;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: GlobalThemeData.lightColorScheme.onTertiary,
          title: Label14(text: "Détail de la commande", color: Colors.black, weight: FontWeight.bold, maxLines: 1).animate().fadeIn()
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: size.width * 0.3,
                child: Label17(text: "Commande", color: GlobalThemeData.lightColorScheme.onSurface, weight: FontWeight.bold, maxLines: 1).animate().fadeIn()
              ),
              Container(
                constraints: BoxConstraints(maxWidth: size.width * 0.6),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    color: GlobalThemeData.lightColorScheme.onTertiary.withOpacity(0.7),
                    border: Border.all(color: GlobalThemeData.lightColorScheme.primary.withOpacity(0.1), width: 1),
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))
                ),
                child: Label13(text: "${DateFormat.yMMMMEEEEd("fr").format(detail!.dateCommande)} à ${DateFormat.Hm("fr").format(detail!.dateCommande)}", color: GlobalThemeData.lightColorScheme.primary, weight: FontWeight.normal, maxLines: 2),
              ).animate().fadeIn()
            ],
          ),
          const Gap(20),
          Label17(text: "Informations sur la pièce", color: GlobalThemeData.lightColorScheme.onSurface, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
          const Gap(20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width * 0.6,
                height: size.width * 0.6,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                    border: Border.all(color: GlobalThemeData.lightColorScheme.primary.withOpacity(0.1), width: 1),
                    image: DecorationImage(
                        onError: (Object e, StackTrace? stackTrace) => Image.asset(
                          "assets/images/back-2.webp",
                          fit: BoxFit.cover,
                        ),
                        image: NetworkImage(
                          Urls.imageUrl+detail!.pieceDetail.imagePiece,
                        ),
                        fit: BoxFit.cover
                    )
                )
              ).animate().fadeIn(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                        color: GlobalThemeData.lightColorScheme.surfaceTint
                    ),
                    child: Center(
                      child: Label12(
                          text: detail!.pieceDetail.typeEngin.libelle,
                          color: GlobalThemeData.lightColorScheme.onPrimary,
                          weight: FontWeight.bold,
                          maxLines: 1
                      ).animate().fadeIn(),
                    ),
                  ),
                ],
              )
            ],
          ),
          const Gap(10),
          Label14(text: detail!.pieceDetail.piece != null ? detail!.pieceDetail.piece!.nomPiece : detail!.pieceDetail.article!.name, color: Colors.black87, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
          const Gap(10),
          Label13(text: "Prix - ${detail!.pieceDetail.prixPiece} FCFA", color: GlobalThemeData.lightColorScheme.outline, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
          const Gap(10),
          Label13(text: detail!.pieceDetail.garantie == 1 ? "Pièce garantie" : "Pièce non garantie", color: GlobalThemeData.lightColorScheme.outline, weight: FontWeight.normal, maxLines: 2).animate().fadeIn(),
          const Gap(10),
          Label13(text: detail!.pieceDetail.autres ?? "Pas d'autres informations disponible", color: GlobalThemeData.lightColorScheme.outline, weight: FontWeight.normal, maxLines: 20).animate().fadeIn(),
          const Gap(20),
          Label17(text: "Informations sur le vendeur", color: GlobalThemeData.lightColorScheme.onSurface, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: size.width * 0.6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Label14(text: detail!.partenaire.raisonSociale, color: GlobalThemeData.lightColorScheme.onSurface, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
                    const Gap(10),
                    Label13(text: "${detail!.partenaire.villePartenaire}, ${detail!.partenaire.quartierPartenaire}", color: GlobalThemeData.lightColorScheme.outline, weight: FontWeight.normal, maxLines: 2).animate().fadeIn(),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () => Redirections().launchCall(context: context, number: detail!.partenaire.telephonePartenaire),
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                                side: BorderSide(color: GlobalThemeData.lightColorScheme.primary.withOpacity(0.1)),
                                borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))
                            )
                        ),
                        backgroundColor: WidgetStateProperty.all(GlobalThemeData.lightColorScheme.onTertiary),
                      ),
                      icon: Icon(Icons.settings_phone_sharp, color: GlobalThemeData.lightColorScheme.primary, size: 20,)
                  ),
                  IconButton(
                      onPressed: () => Redirections().shareWhatsapp(context: context, piece: detail!.pieceDetail, partenaire: detail!.partenaire),
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                                side: BorderSide(color: GlobalThemeData.lightColorScheme.primary.withOpacity(0.1)),
                                borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))
                            )
                        ),
                        backgroundColor: WidgetStateProperty.all(GlobalThemeData.lightColorScheme.onTertiary),
                      ),
                      icon: Icon(Bootstrap.whatsapp, color: Color(0xff1b8755), size: 20,)
                  ),
                  IconButton(
                      onPressed: () => Redirections().launchMail(context: context, email: detail!.partenaire.emailPartenaire),
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                                side: BorderSide(color: GlobalThemeData.lightColorScheme.primary.withOpacity(0.1)),
                                borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))
                            )
                        ),
                        backgroundColor: WidgetStateProperty.all(GlobalThemeData.lightColorScheme.onTertiary),
                      ),
                      icon: Icon(Icons.alternate_email_sharp, color: GlobalThemeData.lightColorScheme.primary, size: 20,)
                  ),
                ],
              )
            ],
          ),
        ],
      )
    );
  }
}
