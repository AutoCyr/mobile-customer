import 'package:autocyr/data/network/urls.dart';
import 'package:autocyr/domain/models/pieces/detail_piece.dart';
import 'package:autocyr/presentation/notifier/auth_notifier.dart';
import 'package:autocyr/presentation/notifier/customer_notifier.dart';
import 'package:autocyr/presentation/ui/atoms/buttons/progress_button.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label10.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label13.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label17.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/helpers/box.dart';
import 'package:autocyr/presentation/ui/helpers/state.dart';
import 'package:autocyr/presentation/ui/molecules/custom_buttons/custom_button.dart';
import 'package:autocyr/presentation/ui/organisms/loaders/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class PieceDetailScreen extends StatefulWidget {
  final DetailPiece detail;
  const PieceDetailScreen({super.key, required this.detail});

  @override
  State<PieceDetailScreen> createState() => _PieceDetailScreenState();
}

class _PieceDetailScreenState extends State<PieceDetailScreen> {

  retrievePieceDetails() async {
    final customer = Provider.of<CustomerNotifier>(context, listen: false);
    await customer.getPiece(id: widget.detail.detailPieceId.toString(), context: context);
  }

  save() async {
    final auth = Provider.of<AuthNotifier>(context, listen: false);
    final customer = Provider.of<CustomerNotifier>(context, listen: false);

    Map<String, dynamic> body = {
      "partenaire_id": widget.detail.partenaireId,
      "detail_piece_id": widget.detail.detailPieceId,
      "client_id": auth.getClient.clientId
    };
    await customer.createCommande(body: body, context: context);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      retrievePieceDetails();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(color: GlobalThemeData.lightColorScheme.primary),
            backgroundColor: GlobalThemeData.lightColorScheme.onTertiary,
            title: Label14(text: "Détail de la pièce", color: Colors.black, weight: FontWeight.bold, maxLines: 1).animate().fadeIn()
        ),
        body: Consumer<CustomerNotifier>(
            builder: (context, customer, child) {
              if(customer.loading) {
                return Loader(context: context, size: size, message: "Chargement des informations de la pièce...").animate().fadeIn();
              }

              if(customer.errorPiece.isNotEmpty && !customer.loading) {
                return StateScreen(icon: Icons.running_with_errors_sharp, message: customer.errorPiece, isError: true, function: () => retrievePieceDetails());
              }

              if(customer.errorPiece.isEmpty && customer.piece == null && !customer.loading) {
                return const StateScreen(icon: Icons.inbox_sharp, message: "Détails de la pièce non trouvée.", isError: false,);
              }

              return ListView(
                children: [
                  Container(
                    width: size.width,
                    height: size.width,
                    decoration: BoxDecoration(
                        border: Border.all(color: GlobalThemeData.lightColorScheme.primary, width: 1),
                        image: DecorationImage(
                            onError: (Object e, StackTrace? stackTrace) => Image.asset(
                              "assets/images/back-2.webp",
                              fit: BoxFit.cover,
                            ),
                            image: NetworkImage(
                              Urls.imageUrl+customer.piece!.imagePiece,
                            ),
                            fit: BoxFit.cover
                        )
                    ),
                  ).animate().fadeIn(),
                  const Gap(20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * 0.6,
                          child: Label17(text: "Informations sur la pièce", color: GlobalThemeData.lightColorScheme.onSurface, weight: FontWeight.bold, maxLines: 2).animate().fadeIn()
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                              width: size.width * 0.3,
                              decoration: BoxDecoration(
                                  color: GlobalThemeData.lightColorScheme.surfaceTint
                              ),
                              child: Center(
                                child: Label12(
                                    text: customer.piece!.typeEngin.libelle,
                                    color: GlobalThemeData.lightColorScheme.onTertiary,
                                    weight: FontWeight.bold,
                                    maxLines: 1
                                ).animate().fadeIn(),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Gap(10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Label14(text: customer.piece!.piece != null ? customer.piece!.piece!.nomPiece : customer.piece!.article!.name, color: Colors.black87, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
                        const Gap(10),
                        Label13(text: "Prix - ${customer.piece!.prixPiece} FCFA", color: GlobalThemeData.lightColorScheme.outline, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
                        const Gap(10),
                        Label13(text: customer.piece!.garantie == 1 ? "Pièce garantie" : "Pièce non garantie", color: GlobalThemeData.lightColorScheme.outline, weight: FontWeight.normal, maxLines: 2).animate().fadeIn(),
                        const Gap(10),
                        Label13(text: customer.piece!.autres ?? "Pas d'autres informations disponible", color: GlobalThemeData.lightColorScheme.outline, weight: FontWeight.normal, maxLines: 20).animate().fadeIn(),
                      ],
                    ),
                  ),
                  if(customer.piece!.autos!.isNotEmpty || customer.piece!.moteurs!.isNotEmpty || customer.piece!.categories!.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(20),
                          Label17(text: "Disponibilités de la pièce", color: GlobalThemeData.lightColorScheme.onSurface, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Gap(10),
                              Container(
                                width: size.width,
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                decoration: BoxDecoration(
                                    color: GlobalThemeData.lightColorScheme.primary.withOpacity(0.7),
                                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))
                                ),
                                child: Label12(text: "Marques compatibles", color: GlobalThemeData.lightColorScheme.onTertiary, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
                              ),
                              const Gap(10),
                              if(customer.piece!.marques!.isNotEmpty && customer.piece!.marques != null)
                                Wrap(
                                  spacing: 10,
                                  runSpacing: 10,
                                  children: [
                                    ...customer.piece!.marques!.map((e) => Container(
                                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                      decoration: BoxDecoration(
                                          color: GlobalThemeData.lightColorScheme.inversePrimary,
                                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))
                                      ),
                                      child: Label10(text: e.marque.name, color: GlobalThemeData.lightColorScheme.outline, weight: FontWeight.bold, maxLines: 1).animate().fadeIn(),
                                    )),
                                  ],
                                )
                              else
                                Label12(text: "Disponible pour toutes les marques correspondant au type d'engin choisi", color: Colors.green.shade700, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
                              const Gap(10),
                            ],
                          ),
                          if(customer.piece!.autos!.isNotEmpty)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Gap(10),
                                Container(
                                  width: size.width,
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: GlobalThemeData.lightColorScheme.primary.withOpacity(0.7),
                                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))
                                  ),
                                  child: Label12(text: "Types de véhicules", color: GlobalThemeData.lightColorScheme.onTertiary, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
                                ),
                                const Gap(10),
                                ...customer.piece!.autos!.map((e) => Container(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    children: [
                                      Icon(Icons.info_outline, size: 20, color: GlobalThemeData.lightColorScheme.outline,).animate().fadeIn(),
                                      const Gap(10),
                                      Label12(text: e.typeAuto.libelle, color: GlobalThemeData.lightColorScheme.outline, weight: FontWeight.bold, maxLines: 1).animate().fadeIn(),
                                    ],
                                  ).animate().fadeIn(),
                                )).toList(),
                              ],
                            ),
                          if(customer.piece!.moteurs!.isNotEmpty)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Gap(10),
                                Container(
                                  width: size.width,
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: GlobalThemeData.lightColorScheme.primary.withOpacity(0.7),
                                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))
                                  ),
                                  child: Label12(text: "Types de moteur", color: GlobalThemeData.lightColorScheme.onTertiary, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
                                ),
                                const Gap(10),
                                ...customer.piece!.moteurs!.map((e) => Container(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    children: [
                                      Icon(Icons.info_outline, size: 20, color: GlobalThemeData.lightColorScheme.outline,).animate().fadeIn(),
                                      const Gap(10),
                                      Label12(text: e.typeMoteur.libelle, color: GlobalThemeData.lightColorScheme.outline, weight: FontWeight.bold, maxLines: 1).animate().fadeIn(),
                                    ],
                                  ).animate().fadeIn(),
                                )).toList(),
                              ],
                            ),
                          if(customer.piece!.categories!.isNotEmpty)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Gap(10),
                                Container(
                                  width: size.width,
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: GlobalThemeData.lightColorScheme.primary.withOpacity(0.7),
                                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))
                                  ),
                                  child: Label12(text: "Catégories d'engin", color: GlobalThemeData.lightColorScheme.onTertiary, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
                                ),
                                const Gap(10),
                                ...customer.piece!.categories!.map((e) => Container(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    children: [
                                      Icon(Icons.info_outline, size: 20, color: GlobalThemeData.lightColorScheme.outline,).animate().fadeIn(),
                                      const Gap(10),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Label12(text: e.categorieEngin.libelle, color: GlobalThemeData.lightColorScheme.outline, weight: FontWeight.bold, maxLines: 1).animate().fadeIn(),
                                          if(e.hybride == 1)
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Gap(5),
                                                Label10(text: "Hybride", color: GlobalThemeData.lightColorScheme.outline, weight: FontWeight.normal, maxLines: 1).animate().fadeIn(),
                                              ],
                                            ),
                                        ],
                                      ),
                                    ],
                                  ).animate().fadeIn(),
                                )).toList(),
                              ],
                            ),
                        ],
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                          color: GlobalThemeData.lightColorScheme.outline,
                          thickness: 1,
                          height: 1,
                        ).animate().fadeIn(),
                        const Gap(10),
                        Label12(
                            text: "AUTOCYR sert principalement à vous mettre en relation avec les vendeurs. Toute autre gestion se fait en dehors de la plateforme. Nous ne sommes pas impliqués dans ces échanges.",
                            color: Colors.red.shade300,
                            weight: FontWeight.normal,
                            maxLines: 10
                        ).animate().fadeIn(),
                        const Gap(10),
                        customer.action ?
                          ProgressButton(
                            widthSize: size.width * 0.95,
                            context: context,
                            bgColor: GlobalThemeData.lightColorScheme.onTertiary,
                            shimmerColor: GlobalThemeData.lightColorScheme.primary
                          ).animate().fadeIn()
                            :
                          SizedBox(
                            child: CustomButton(
                              text: "Contacter le vendeur",
                              size: size,
                              globalWidth: size.width * 0.95,
                              widthSize: size.width * 0.89,
                              backSize: size.width * 0.89,
                              context: context,
                              function: () {
                                Box().confirmOperationBox(
                                  context: context,
                                  function: () {
                                    Navigator.pop(context);
                                    save();
                                  }
                                );
                              },
                              textColor: GlobalThemeData.lightColorScheme.primary,
                              buttonColor: GlobalThemeData.lightColorScheme.onTertiary,
                              backColor: GlobalThemeData.lightColorScheme.primary
                            ).animate().fadeIn(),
                          ),
                      ],
                    ),
                  ),
                ],
              );
            }
        )
    );
  }
}
