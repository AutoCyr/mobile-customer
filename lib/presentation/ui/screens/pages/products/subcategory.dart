import 'package:autocyr/domain/models/core/category.dart';
import 'package:autocyr/domain/models/core/subcategory.dart';
import 'package:autocyr/presentation/notifier/common_notifier.dart';
import 'package:autocyr/presentation/ui/atoms/buttons/progress_button.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label10.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/helpers/state.dart';
import 'package:autocyr/presentation/ui/organisms/loaders/loader.dart';
import 'package:autocyr/presentation/ui/screens/helpers/subcategory_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class SubcategoryScreen extends StatefulWidget {
  final Category category;
  const SubcategoryScreen({super.key, required this.category});

  @override
  State<SubcategoryScreen> createState() => _SubcategoryScreenState();
}

class _SubcategoryScreenState extends State<SubcategoryScreen> {

  bool _search = false;

  List<Subcategory> subcategories = [];
  List<Subcategory> filteredSubcategories = [];

  retrieveSubcategories() async {
    final common = Provider.of<CommonNotifier>(context, listen: false);
    if(common.subcategories.isEmpty) {
      await common.retrieveSubcategories(context: context);
    }
    setState(() {
      filteredSubcategories = subcategories = common.subcategories.where((subcategory) => subcategory.categoryId == widget.category.id).toList();
    });
  }

  void filterList(String searchQuery) {
    List<Subcategory> filtered = [];
    for (var value in subcategories) {
      if (value.name.toLowerCase().contains(searchQuery.toLowerCase())) {
        filtered.add(value);
      }
    }
    setState(() {
      filteredSubcategories = filtered;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      retrieveSubcategories();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalThemeData.lightColorScheme.onTertiary,
        title: _search == false ?
          Label14(text: "Sous-catégories de pièces", color: Colors.black, weight: FontWeight.bold, maxLines: 1).animate().fadeIn()
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
            return Loader(context: context, size: size, message: "Chargement des sous-catégories...").animate().fadeIn();
          }

          if(filteredSubcategories.isEmpty && !common.filling) {
            return const StateScreen(icon: Icons.inbox_sharp, message: "Aucune sous-catégorie trouvée.", isError: false,);
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
              ...filteredSubcategories.map((subcategory) => SubcategoryWidget(subcategory: subcategory)),
            ],
          );
        }
      )
    );
  }
}
