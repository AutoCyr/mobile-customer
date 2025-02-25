import 'package:autocyr/presentation/ui/atoms/labels/label10.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/screens/masters/browse.dart';
import 'package:autocyr/presentation/ui/screens/masters/home.dart';
import 'package:autocyr/presentation/ui/screens/masters/profile.dart';
import 'package:autocyr/presentation/ui/screens/masters/store.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class GlobalScreen extends StatefulWidget {
  final int index;
  const GlobalScreen({super.key, required this.index});

  @override
  State<GlobalScreen> createState() => _GlobalScreenState();
}

class _GlobalScreenState extends State<GlobalScreen> {

  int selectedIndex = 0;
  late List fullable = [const HomeScreen(), const StoreScreen(), const BrowseScreen(), const ProfileScreen()];

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: DoubleBackToCloseApp(
        snackBar: SnackBar(
          content: Label12(text: "Appuyez encore pour fermer l'application", color: Colors.white, weight: FontWeight.bold, maxLines: 2),
        ),
        child: Center(
          child: fullable.elementAt(selectedIndex),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: StylishBottomBar(
          option: DotBarOptions(
            dotStyle: DotStyle.circle,
            inkColor: GlobalThemeData.lightColorScheme.tertiary,
          ),
          items: [
            BottomBarItem(
              icon: const Icon(Icons.house_siding_sharp, size: 20),
              title: Label12(text: "Accueil", color: Colors.black, weight: FontWeight.normal, maxLines: 2),
              selectedColor: GlobalThemeData.lightColorScheme.tertiary,
            ),
            BottomBarItem(
              icon: const Icon(Icons.store, size: 20),
              title: Label12(text: "Articles", color: Colors.black, weight: FontWeight.normal, maxLines: 2),
              selectedColor: GlobalThemeData.lightColorScheme.tertiary,
            ),
            BottomBarItem(
                icon: const Icon(Icons.history_edu_sharp, size: 20),
                title: Label12(text: "Parcourir", color: Colors.black, weight: FontWeight.normal, maxLines: 2),
                selectedColor: GlobalThemeData.lightColorScheme.tertiary
            ),
            BottomBarItem(
                icon: const Icon(Icons.person_pin_rounded, size: 20),
                title: Label12(text: "Profil", color: Colors.black, weight: FontWeight.normal, maxLines: 2),
                selectedColor: GlobalThemeData.lightColorScheme.tertiary
            ),
          ],
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
        ),
      ),
    );
  }
}
