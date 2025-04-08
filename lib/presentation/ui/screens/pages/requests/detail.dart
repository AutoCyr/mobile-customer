import 'package:autocyr/data/helpers/redirections.dart';
import 'package:autocyr/domain/models/features/demande.dart';
import 'package:autocyr/domain/models/features/demande_info.dart';
import 'package:autocyr/presentation/notifier/customer_notifier.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label10.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label13.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label17.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/helpers/state.dart';
import 'package:autocyr/presentation/ui/organisms/loaders/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class RequestDetailScreen extends StatefulWidget {
  final Demande demande;
  const RequestDetailScreen({super.key, required this.demande});

  @override
  State<RequestDetailScreen> createState() => _RequestDetailScreenState();
}

class _RequestDetailScreenState extends State<RequestDetailScreen> {

  DemandeInfo? detail;

  retrieveDemande() async {
    final customer = Provider.of<CustomerNotifier>(context, listen: false);

    Map<String, dynamic> params = {
      "demande_id": widget.demande.demandeId
    };
    await customer.retrieveRequest(context: context, params: params);
    detail = customer.demandeInfo;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      retrieveDemande();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: GlobalThemeData.lightColorScheme.onTertiary,
          title: Label14(text: "Détail de la demande", color: Colors.black, weight: FontWeight.bold, maxLines: 1).animate().fadeIn()
      ),
      body: Consumer<CustomerNotifier>(
        builder: (context, customer, child) {
          if(customer.loading) {
            return Loader(context: context, size: size, message: "Chargement des informations de la demande...").animate().fadeIn();
          }

          if(customer.error.isNotEmpty && !customer.loading) {
            return StateScreen(icon: Icons.running_with_errors_sharp, message: customer.error, isError: true, function: () => retrieveDemande());
          }

          if(customer.error.isEmpty && detail == null && !customer.loading) {
            return const StateScreen(icon: Icons.inbox_sharp, message: "Détails de la demande non trouvée.", isError: false,);
          }

          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                width: size.width,
                decoration: BoxDecoration(
                  color: GlobalThemeData.lightColorScheme.primary,
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                  border: Border.all(color: GlobalThemeData.lightColorScheme.primary, width: 1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Label17(text: "Demande #${detail!.reference}", color: GlobalThemeData.lightColorScheme.onTertiary, weight: FontWeight.bold, maxLines: 1).animate().fadeIn(),
                    const Gap(10),
                    Label13(text: "Effectuée le ${DateFormat.yMMMMEEEEd("fr").format(detail!.dateDemande)} à ${DateFormat.Hm("fr").format(detail!.dateDemande)}", color: GlobalThemeData.lightColorScheme.onTertiary, weight: FontWeight.normal, maxLines: 2).animate().fadeIn(),
                  ],
                ),
              ),
              const Gap(10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: size.width,
                decoration: BoxDecoration(
                  color: GlobalThemeData.lightColorScheme.onTertiary,
                  border: Border.all(color: GlobalThemeData.lightColorScheme.primary, width: 1),
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
              if(detail!.etatDemande == 1)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      width: size.width,
                      decoration: BoxDecoration(
                        color: GlobalThemeData.lightColorScheme.onTertiary,
                        border: Border.all(color: GlobalThemeData.lightColorScheme.primary, width: 1),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Label14(text: "Partenaires assignés", color: GlobalThemeData.lightColorScheme.onSurface, weight: FontWeight.normal, maxLines: 2).animate().fadeIn(),
                          const Gap(20),
                          Label12(
                              text: "AUTOCYR ne s'impliquera pas dans le traitement de la demande. \nVeuillez contacter le(s) partenaire(s) assigné(s) pour obtenir des informations supplémentaires.",
                              color: Colors.red.shade300,
                              weight: FontWeight.normal,
                              maxLines: 10
                          ).animate().fadeIn(),
                          const Gap(20),
                          if(detail!.interventions.isNotEmpty)
                            ...detail!.interventions.map((e) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      constraints: BoxConstraints(maxWidth: size.width * 0.6),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Label14(text: e.partenaire.raisonSociale, color: GlobalThemeData.lightColorScheme.onSurface, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
                                          const Gap(10),
                                          Label13(text: "${e.partenaire.villePartenaire}, ${e.partenaire.quartierPartenaire}", color: GlobalThemeData.lightColorScheme.outline, weight: FontWeight.normal, maxLines: 2).animate().fadeIn(),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                            onPressed: () => Redirections().launchCall(context: context, number: e.partenaire.telephonePartenaire),
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
                                            onPressed: () => Redirections().launchMail(context: context, email: e.partenaire.emailPartenaire),
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
                              );
                            })
                          else if(detail!.interventions.isEmpty)
                            Center(
                              child: Label10(text: "Aucun partenaire assigné à la demande.", color: GlobalThemeData.lightColorScheme.outline, weight: FontWeight.bold, maxLines: 2).animate().fadeIn(),
                            )
                        ],
                      ),
                    ),
                  ],
                ),
            ],
          );
        }
      )
    );
  }
}
