import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/screens/pages/requests/requests.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class RequestLayoutScreen extends StatefulWidget {
  const RequestLayoutScreen({super.key});

  @override
  State<RequestLayoutScreen> createState() => _RequestLayoutScreenState();
}

class _RequestLayoutScreenState extends State<RequestLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: GlobalThemeData.lightColorScheme.onTertiary),
          backgroundColor: GlobalThemeData.lightColorScheme.primary,
          title: Label14(text: "Demandes", color: GlobalThemeData.lightColorScheme.onTertiary, weight: FontWeight.bold, maxLines: 1).animate().fadeIn(),
          actions: [
            /*IconButton(
               onPressed: () {
                 setState(() {
                   _search = !_search;
                   filterList("");
                 });
               },
               icon: _search ? const Icon(Icons.clear) : const Icon(Icons.search_sharp),
             ).animate().fadeIn(),*/
          ],
          bottom: TabBar(
            labelStyle: const TextStyle(
              fontSize: 13,
              fontFamily: "Lufga",
              fontWeight: FontWeight.w600
            ),
            labelColor: GlobalThemeData.lightColorScheme.onTertiary,
            unselectedLabelColor: GlobalThemeData.lightColorScheme.onTertiary.withOpacity(0.7),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: GlobalThemeData.lightColorScheme.onTertiary,
            tabs: const [
              Tab(text: 'En attente',),
              Tab(text: 'Traitées',)
            ]
          ),
        ),
        body: const TabBarView(
          children: [
            RequestListScreen(state: 0),
            RequestListScreen(state: 1),
          ],
        ),
      ),
    );
  }
}
