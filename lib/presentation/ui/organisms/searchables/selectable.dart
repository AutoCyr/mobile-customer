import 'package:autocyr/domain/models/abstractables/selectable.dart';
import 'package:autocyr/domain/models/commons/bike_make.dart';
import 'package:autocyr/domain/models/commons/car_make.dart';
import 'package:autocyr/domain/models/commons/country.dart';
import 'package:autocyr/presentation/notifier/common_notifier.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label10.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:provider/provider.dart';

class CustomSelectable extends StatefulWidget {
  final List<Selectable> list;
  final String typeSelection;
  final bool multiple;
  final Function onSave;
  final dynamic notifier;
  const CustomSelectable({super.key, required this.list, required this.typeSelection, required this.multiple, required this.onSave, required this.notifier});

  @override
  State<CustomSelectable> createState() => _CustomSelectableState();
}

class _CustomSelectableState extends State<CustomSelectable> {

  late List<Selectable> localList = [];
  List<Selectable>? selectedList = [];
  Selectable? localSelectedObject;

  loadList() async {
    setState(() {
      switch(widget.typeSelection) {
        case "country":
          localList = widget.list;
          localSelectedObject = widget.notifier.getCountry;
          break;
        case "article":
          localList = widget.list;
          break;
        case "bike":
          localList = widget.list;
          if(widget.multiple) {
            List<BikeMake> selected = [];
            for(var element in widget.notifier.selectedBikeMakes) {
              selected.add(element);
            }
            selectedList = selected;
          }
          break;
        case "car":
          localList = widget.list;
          if(widget.multiple) {
            List<CarMake> selected = [];
            for(var element in widget.notifier.selectedCarMakes) {
              selected.add(element);
            }
            selectedList = selected;
          }
          break;
      }
    });
  }

  void filterList(String searchQuery) {
    List<Selectable> filtered = [];
    for (var value in widget.list) {
      if (value.name.toLowerCase().contains(searchQuery.toLowerCase())) {
        filtered.add(value);
      }
    }
    setState(() {
      localList = filtered;
    });
  }

  @override
  void initState() {
    super.initState();
    loadList();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: GlobalThemeData.lightColorScheme.primary),
        backgroundColor: GlobalThemeData.lightColorScheme.onTertiary,
        title: SizedBox(
          height: 45,
          child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                fillColor: GlobalThemeData.lightColorScheme.primary.withOpacity(0.1),
                hintText: "Rechercher",
                border: InputBorder.none,
                hintStyle: const TextStyle(
                  fontSize: 13
                ),
              ),
              style: const TextStyle(
                  fontSize: 13
              ),
              autofocus: false,
              onChanged: (value) => filterList(value),
            ),
        ).animate().fadeIn(),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.clear, color: GlobalThemeData.lightColorScheme.error,),
          ).animate().fadeIn(),
          if(localSelectedObject != null)
            Consumer<CommonNotifier>(
              builder: (context, common, child) {
                return IconButton(
                  onPressed: () async {
                    switch(widget.typeSelection) {
                      case "country":
                        widget.notifier.setCountry(localSelectedObject! as Country);
                        break;
                      case "bike":
                        widget.notifier.setBikeMake(localSelectedObject! as BikeMake);
                        break;
                      case "car":
                        widget.notifier.setCarMake(localSelectedObject! as CarMake);
                        break;
                    }
                    await widget.onSave();
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.check, color: GlobalThemeData.lightColorScheme.primary,),
                ).animate().fadeIn();
              }
            ),
        ]
      ),
      body: GroupedListView<dynamic, String>(
        elements: localList,
        groupBy: (element) {
          return element.name.substring(0, 1);
        },
        groupSeparatorBuilder: (String groupByValue) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 45,
            width: size.width,
            color: GlobalThemeData.lightColorScheme.primary.withOpacity(0.1),
            child: Row(
              children: [
                Label14(text: groupByValue, color: GlobalThemeData.lightColorScheme.primary, weight: FontWeight.bold, maxLines: 1),
              ],
            ),
          ).animate().fadeIn();
        },
        itemBuilder: (context, dynamic element) {
          return InkWell(
            splashColor: GlobalThemeData.lightColorScheme.primary.withOpacity(0.1),
            onTap: () {
              setState(() {
                if(widget.multiple) {
                  if(selectedList!.contains(element)) {
                    selectedList!.remove(element);
                  } else {
                    selectedList!.add(element);
                  }
                } else {
                  localSelectedObject = element == localSelectedObject ? null : element;
                }
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              width: size.width,
              decoration: BoxDecoration(
                color: localSelectedObject == element || selectedList!.contains(element) ? GlobalThemeData.lightColorScheme.primary : Colors.transparent,
              ),
              child: Row(
                children: [
                  Label14(
                    text: element.name,
                    color: localSelectedObject == element || selectedList!.contains(element) ? GlobalThemeData.lightColorScheme.onTertiary : GlobalThemeData.lightColorScheme.primary,
                    weight: FontWeight.w400,
                    maxLines: 1
                  ),
                ],
              ),
            ),
          ).animate().fadeIn();
        },
        itemComparator: (item1, item2) => item1.name.compareTo(item2.name),
        useStickyGroupSeparators: true,
        floatingHeader: true,
        order: GroupedListOrder.ASC,
      )
    );
  }
}
