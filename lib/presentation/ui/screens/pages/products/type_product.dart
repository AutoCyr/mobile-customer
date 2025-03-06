import 'package:autocyr/data/helpers/preferences.dart';
import 'package:autocyr/domain/models/commons/engin_type.dart';
import 'package:autocyr/domain/models/pieces/detail_piece.dart';
import 'package:autocyr/presentation/notifier/auth_notifier.dart';
import 'package:autocyr/presentation/notifier/customer_notifier.dart';
import 'package:autocyr/presentation/ui/atoms/buttons/progress_button.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label10.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/helpers/state.dart';
import 'package:autocyr/presentation/ui/organisms/loaders/loader.dart';
import 'package:autocyr/presentation/ui/screens/helpers/piece_widget.dart';
import 'package:autocyr/presentation/ui/screens/pages/searchs/filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:refresh_loadmore/refresh_loadmore.dart';

class TypeProductScreen extends StatefulWidget {
  final EnginType type;
  const TypeProductScreen({super.key, required this.type});

  @override
  State<TypeProductScreen> createState() => _TypeProductScreenState();
}

class _TypeProductScreenState extends State<TypeProductScreen> {

  int view = 0;
  bool _search = false;

  List<DetailPiece> pieces = [];
  List<DetailPiece> filteredPieces = [];
  List<DetailPiece> searchedPieces = [];

  Map<String, dynamic> getParams(int view) {
    final auth = Provider.of<AuthNotifier>(context, listen: false);

    Map<String, dynamic> params = {
      "page": view,
      "limit": 50,
      "type_engin_id": widget.type.id,
      "country_id": auth.getCountry.id
    };
    return params;
  }

  retrievePieces(int view, bool more) async {
    final customer = Provider.of<CustomerNotifier>(context, listen: false);

    Map<String, dynamic> params = getParams(view);
    await customer.retrieveTypePieces(context: context, params: params, more: more);
    searchedPieces = filteredPieces = pieces = customer.typePieces;
  }

  void filterList(String searchQuery) {
    List<DetailPiece> filtered = [];
    for (var value in filteredPieces) {
      if(value.piece != null ? value.piece!.nomPiece.toLowerCase().contains(searchQuery.toLowerCase()) : value.article!.name.toLowerCase().contains(searchQuery.toLowerCase())) {
        filtered.add(value);
      }
    }
    setState(() {
      searchedPieces = filtered;
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
      filtered = pieces;
    } else {
      filtered = pieces.where((element) {
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
      searchedPieces = filteredPieces = filtered;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      view++;
      retrievePieces(view, false);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalThemeData.lightColorScheme.onTertiary,
        title: _search == false ?
          Label14(text: "Articles pour ${widget.type.libelle.toLowerCase()}", color: GlobalThemeData.lightColorScheme.tertiary, weight: FontWeight.bold, maxLines: 1).animate().fadeIn()
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
          IconButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FilterScreen(onUpdate: () => applyFilters(),))),
            icon: const Icon(Icons.tune_rounded),
          ).animate().fadeIn(),
        ],
      ),
      body: Consumer<CustomerNotifier>(
        builder: (context, customer, child) {

          if(customer.loading) {
            return Loader(context: context, size: size, message: "Chargement des pièces...").animate().fadeIn();
          }

          if(customer.errorPieces.isNotEmpty && !customer.loading) {
            return StateScreen(icon: Icons.running_with_errors_sharp, message: customer.errorPieces, isError: true, function: () => retrievePieces(view, false));
          }

          if(customer.errorPieces.isEmpty && searchedPieces.isEmpty && !customer.loading) {
            return const StateScreen(icon: Icons.inbox_sharp, message: "Aucune pièce trouvée.", isError: false,);
          }

          return RefreshLoadmore(
              onRefresh: () async {
                setState(() {
                  view = 1;
                });
                retrievePieces(view, false);
              },
              onLoadmore: () async {
                setState(() {
                  view++;
                });
                retrievePieces(view, true);
              },
              noMoreWidget: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Center(
                  child: Label10(text: "Plus de pièces trouvées", color: GlobalThemeData.lightColorScheme.outline, weight: FontWeight.bold, maxLines: 2),
                ),
              ).animate().fadeIn(),
              loadingWidget: ProgressButton(
                  widthSize: size.width * 0.2,
                  context: context,
                  bgColor: GlobalThemeData.lightColorScheme.onTertiary,
                  shimmerColor: GlobalThemeData.lightColorScheme.tertiary
              ).animate().fadeIn(),
              isLastPage: customer.typePieceMeta.currentPage < customer.typePieceMeta.lastPage ? false : true,
              child: GridView.count(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                mainAxisSpacing: 8,
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                childAspectRatio: 0.75,
                children: [
                  ...searchedPieces.map((piece) => PieceWidget(piece: piece)),
                ],
              )
          );
        }
      )
    );
  }
}
