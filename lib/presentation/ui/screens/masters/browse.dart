import 'package:autocyr/domain/models/core/category.dart';
import 'package:autocyr/presentation/notifier/common_notifier.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label17.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/helpers/state.dart';
import 'package:autocyr/presentation/ui/organisms/loaders/loader.dart';
import 'package:autocyr/presentation/ui/screens/helpers/category_widget.dart';
import 'package:autocyr/presentation/ui/screens/pages/products/ask.dart';
import 'package:autocyr/presentation/ui/screens/pages/searchs/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class BrowseScreen extends StatefulWidget {
  const BrowseScreen({super.key});

  @override
  State<BrowseScreen> createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen> {

  bool _search = false;

  List<Category> categories = [];
  List<Category> filteredCategories = [];

  retrieveCategories() async {
    final common = Provider.of<CommonNotifier>(context, listen: false);
    if(common.categories.isEmpty) {
      await common.retrieveCategories(context: context);
    }
    setState(() {
      filteredCategories = categories = common.categories;
    });
  }

  void filterList(String searchQuery) {
    List<Category> filtered = [];
    for (var value in categories) {
      if (value.name.toLowerCase().contains(searchQuery.toLowerCase())) {
        filtered.add(value);
      }
    }
    setState(() {
      filteredCategories = filtered;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      retrieveCategories();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalThemeData.lightColorScheme.onTertiary,
        title: _search == false ?
          Label14(text: "Catégories de pièces", color: Colors.black, weight: FontWeight.bold, maxLines: 1).animate().fadeIn()
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
          ).animate().fadeIn()
        ],
      ),
      body: Consumer<CommonNotifier>(
          builder: (context, common, child) {

            if(common.filling) {
              return Loader(context: context, size: size, message: "Chargement des catégories...").animate().fadeIn();
            }

            if(filteredCategories.isEmpty && !common.filling) {
              return const StateScreen(icon: Icons.inbox_sharp, message: "Aucune catégorie trouvée.", isError: false,);
            }

            return GridView.count(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              mainAxisSpacing: 8,
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              childAspectRatio: 0.65,
              children: [
                ...filteredCategories.map((category) => CategoryWidget(category: category)),
              ],
            );
          }
      )
    );
  }
}
