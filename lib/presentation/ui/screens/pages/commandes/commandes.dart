import 'package:autocyr/domain/models/features/commande.dart';
import 'package:autocyr/presentation/notifier/customer_notifier.dart';
import 'package:autocyr/presentation/ui/atoms/buttons/progress_button.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label10.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/helpers/state.dart';
import 'package:autocyr/presentation/ui/organisms/loaders/loader.dart';
import 'package:autocyr/presentation/ui/screens/helpers/commande_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:refresh_loadmore/refresh_loadmore.dart';

class CommandeListScreen extends StatefulWidget {
  const CommandeListScreen({super.key});

  @override
  State<CommandeListScreen> createState() => _CommandeListScreenState();
}

class _CommandeListScreenState extends State<CommandeListScreen> {

  int view = 0;
  bool _search = false;

  List<Commande> commandes = [];
  List<Commande> filteredCommandes = [];

  Map<String, dynamic> getParams(int view) {
    Map<String, dynamic> params = {
      "page": view,
      "limit": 50
    };
    return params;
  }

  retrieveCommandes(int view, bool more) async {
    final customer = Provider.of<CustomerNotifier>(context, listen: false);

    Map<String, dynamic> params = getParams(view);
    await customer.retrieveCommandes(context: context, params: params, more: more);
    filteredCommandes = commandes = customer.commandes;
  }

  void filterList(String searchQuery) {
    List<Commande> filtered = [];
    for (var value in commandes) {
      if(value.partenaire.raisonSociale.toLowerCase().contains(searchQuery.toLowerCase()) || (value.pieceDetail.piece != null ? value.pieceDetail.piece!.nomPiece.toLowerCase().contains(searchQuery.toLowerCase()) : value.pieceDetail.article!.name.toLowerCase().contains(searchQuery.toLowerCase()))) {
        filtered.add(value);
      }
    }
    setState(() {
      filteredCommandes = filtered;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      view++;
      retrieveCommandes(view, false);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: GlobalThemeData.lightColorScheme.tertiary),
        backgroundColor: GlobalThemeData.lightColorScheme.onTertiary,
        title: _search == false ?
          Label14(text: "Mes commandes", color: GlobalThemeData.lightColorScheme.tertiaryContainer, weight: FontWeight.bold, maxLines: 1).animate().fadeIn()
            :
          SizedBox(
              height: 45,
              child: TextFormField(
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
                autofocus: true,
                onChanged: (value) => filterList(value),
                cursorColor: GlobalThemeData.lightColorScheme.tertiaryContainer,
              ),
          ).animate().fadeIn(),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _search = !_search;
                filterList("");
              });
            },
            icon: _search ? const Icon(Icons.clear) : const Icon(Icons.search_sharp),
          ).animate().fadeIn(),
        ],
      ),
      body: Consumer<CustomerNotifier>(
          builder: (context, customer, child) {

            if(customer.loading) {
              return Loader(context: context, size: size, message: "Chargement des commandes...").animate().fadeIn();
            }

            if(customer.errorCommandes.isNotEmpty && !customer.loading) {
              return StateScreen(icon: Icons.running_with_errors_sharp, message: customer.errorCommandes, isError: true, function: () => retrieveCommandes(view, false));
            }

            if(customer.errorCommandes.isEmpty && filteredCommandes.isEmpty && !customer.loading) {
              return const StateScreen(icon: Icons.inbox_sharp, message: "Aucune commande trouvée.", isError: false,);
            }

            return RefreshLoadmore(
                onRefresh: () async {
                  setState(() {
                    view = 1;
                  });
                  retrieveCommandes(view, false);
                },
                onLoadmore: () async {
                  setState(() {
                    view++;
                  });
                  retrieveCommandes(view, true);
                },
                noMoreWidget: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: Label10(text: "Plus de commandes trouvées", color: GlobalThemeData.lightColorScheme.outline, weight: FontWeight.bold, maxLines: 2),
                  ),
                ).animate().fadeIn(),
                loadingWidget: ProgressButton(
                    widthSize: size.width * 0.2,
                    context: context,
                    bgColor: GlobalThemeData.lightColorScheme.onTertiary,
                    shimmerColor: GlobalThemeData.lightColorScheme.tertiary
                ).animate().fadeIn(),
                isLastPage: customer.commandeMeta.currentPage < customer.commandeMeta.lastPage ? false : true,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    Commande commande = filteredCommandes[index];
                    return CommandeWidget(commande: commande).animate().fadeIn();
                  },
                  itemCount: filteredCommandes.length
                )
            );
          }
      ),
    );
  }
}
