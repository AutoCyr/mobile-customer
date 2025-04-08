import 'package:autocyr/domain/models/pieces/detail_piece.dart';
import 'package:autocyr/presentation/notifier/auth_notifier.dart';
import 'package:autocyr/presentation/notifier/common_notifier.dart';
import 'package:autocyr/presentation/notifier/customer_notifier.dart';
import 'package:autocyr/presentation/ui/atoms/buttons/progress_button.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/helpers/state.dart';
import 'package:autocyr/presentation/ui/molecules/custom_buttons/custom_button.dart';
import 'package:autocyr/presentation/ui/organisms/loaders/loader.dart';
import 'package:autocyr/presentation/ui/screens/helpers/piece_widget.dart';
import 'package:autocyr/presentation/ui/screens/pages/searchs/filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class AskProductResult extends StatefulWidget {
  final Map<String, String> payload;
  final String filePath;
  const AskProductResult({super.key, required this.payload, required this.filePath});

  @override
  State<AskProductResult> createState() => _AskProductResultState();
}

class _AskProductResultState extends State<AskProductResult> {

  bool _search = false;

  List<DetailPiece> results = [];
  List<DetailPiece> filteredResults = [];
  List<DetailPiece> searchedResults = [];

  retrieveResults() async {
    final customer = Provider.of<CustomerNotifier>(context, listen: false);
    setState(() {
      searchedResults = filteredResults = results = customer.resultPieces;
    });
  }

  void filterList(String searchQuery) {
    List<DetailPiece> filtered = [];
    for (var value in filteredResults) {
      if(value.piece != null ? value.piece!.nomPiece.toLowerCase().contains(searchQuery.toLowerCase()) : value.article!.name.toLowerCase().contains(searchQuery.toLowerCase())) {
        filtered.add(value);
      }
    }
    setState(() {
      searchedResults = filtered;
    });
  }

  applyFilters() async {
    final customer = Provider.of<CustomerNotifier>(context, listen: false);

    // Vérifier si aucun filtre n'est activé
    bool noFiltersActive = customer.autoFilters.isEmpty &&
        customer.motorFilters.isEmpty &&
        customer.categoryFilters.isEmpty;

    List<DetailPiece> filtered = [];

    if (noFiltersActive) {
      filtered = results;
    } else {
      filtered = results.where((element) {
        bool matchesAnyFilter = false;

        // Vérification des filtres "auto"
        if (customer.autoFilters.isNotEmpty) {
          bool hasMatchingAuto = element.autos?.any((auto) => customer.autoFilters.contains(auto.typeAutoId)) ?? false;
          if (hasMatchingAuto) {
            matchesAnyFilter = true; // Si au moins un filtre est satisfait, on inclut la pièce
          }
        }

        // Vérification des filtres "motor"
        if (!matchesAnyFilter && customer.motorFilters.isNotEmpty) {
          bool hasMatchingMotor = element.moteurs?.any((motor) => customer.motorFilters.contains(motor.typeMoteurId)) ?? false;
          if (hasMatchingMotor) {
            matchesAnyFilter = true; // Si au moins un filtre est satisfait, on inclut la pièce
          }
        }

        // Vérification des filtres "category"
        if (!matchesAnyFilter && customer.categoryFilters.isNotEmpty) {
          bool hasMatchingCategory = element.categories?.any((category) => customer.categoryFilters.contains(category.categorieEnginId)) ?? false;
          if (hasMatchingCategory) {
            matchesAnyFilter = true; // Si au moins un filtre est satisfait, on inclut la pièce
          }
        }

        return matchesAnyFilter; // Inclure la pièce si elle satisfait au moins un filtre
      }).toList();
    }

    setState(() {
      searchedResults = filteredResults = filtered;
    });
  }

  _save() async {
    final customer = Provider.of<CustomerNotifier>(context, listen: false);
    await customer.createRequest(body: widget.payload, filepath: widget.filePath, name: "image_piece", context: context);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      retrieveResults();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalThemeData.lightColorScheme.onTertiary,
        title: _search == false ?
          Label14(text: "Résultats", color: Colors.black, weight: FontWeight.bold, maxLines: 1).animate().fadeIn()
            :
        SizedBox(
          height: 45,
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                filled: true,
                fillColor: GlobalThemeData.lightColorScheme.primary.withOpacity(0.1),
                focusColor: GlobalThemeData.lightColorScheme.primary,
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: GlobalThemeData.lightColorScheme.primary,
                        width: 2
                    )
                ),
                labelText: "Rechercher",
                labelStyle: TextStyle(
                    color: GlobalThemeData.lightColorScheme.primary,
                    fontSize: 13
                )
            ),
            style: const TextStyle(
                fontSize: 13
            ),
            autofocus: true,
            onChanged: (value) => filterList(value),
            cursorColor: GlobalThemeData.lightColorScheme.primary,
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
          IconButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FilterScreen(onUpdate: () => applyFilters(),))),
            icon: const Icon(Icons.tune_rounded),
          ).animate().fadeIn(),
        ],
      ),
      body: Consumer<CustomerNotifier>(
        builder: (context, customer, child) {
          if(customer.action) {
            return Loader(context: context, size: size, message: "Création de la demande...").animate().fadeIn();
          }

          if(customer.errorPieces.isEmpty && searchedResults.isEmpty && !customer.loading) {
            return SizedBox(
              width: size.width,
              height: size.height-kToolbarHeight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.inbox_sharp, color: Colors.grey, size: 150,).animate().fadeIn(),
                    const Gap(20),
                    Label12(text: "Aucune pièce ne correspond à votre recherche. \nVeuillez soumettre vos spécifications à AUTOCYR pour qu'il prenne en main la suite des opérations.", color: Colors.black, weight: FontWeight.normal, maxLines: 10,).animate().fadeIn(),
                    const Gap(20),
                    CustomButton(
                      text: "Créer une demande",
                      size: size,
                      globalWidth: size.width * 0.95,
                      widthSize: size.width * 0.9,
                      backSize: size.width * 0.92,
                      context: context,
                      function: () => _save(),
                      textColor: GlobalThemeData.lightColorScheme.primary,
                      buttonColor: GlobalThemeData.lightColorScheme.onTertiary,
                      backColor: GlobalThemeData.lightColorScheme.primary
                    ).animate().fadeIn(),
                  ],
                ),
              ),
            );
          }

          return GridView.count(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            mainAxisSpacing: 8,
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            childAspectRatio: 0.75,
            children: [
              ...searchedResults.map((piece) => PieceWidget(piece: piece)),
            ],
          );
        }
      )
    );
  }
}
