import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SearchPieceScreen extends StatefulWidget {
  const SearchPieceScreen({super.key});

  @override
  State<SearchPieceScreen> createState() => _SearchPieceScreenState();
}

class _SearchPieceScreenState extends State<SearchPieceScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: GlobalThemeData.lightColorScheme.onTertiary),
        backgroundColor: GlobalThemeData.lightColorScheme.tertiaryContainer,
        title: Label14(text: "Rechercher une pièce", color: GlobalThemeData.lightColorScheme.onTertiary, weight: FontWeight.bold, maxLines: 1).animate().fadeIn()
      ),

    );
  }
}
