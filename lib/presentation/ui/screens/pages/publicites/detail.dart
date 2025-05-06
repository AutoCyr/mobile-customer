import 'package:autocyr/data/helpers/redirections.dart';
import 'package:autocyr/data/network/urls.dart';
import 'package:autocyr/domain/models/features/publicite.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label10.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label12.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label13.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/organisms/banners/blurred_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class PubliciteDetailScreen extends StatefulWidget {
  final Publicite publicite;
  const PubliciteDetailScreen({super.key, required this.publicite});

  @override
  State<PubliciteDetailScreen> createState() => _PubliciteDetailScreenState();
}

class _PubliciteDetailScreenState extends State<PubliciteDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: GlobalThemeData.lightColorScheme.onSecondary),
          backgroundColor: GlobalThemeData.lightColorScheme.primary,
          title: Label14(text: "Détails de la publicité", color: GlobalThemeData.lightColorScheme.onPrimary, weight: FontWeight.bold, maxLines: 1).animate().fadeIn()
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          SizedBox(
            width: size.width,
            height: size.height * 0.25,
            child: BlurredBanner(imageUrl: widget.publicite.banner).animate().fadeIn()
          ),
          const Gap(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: size.width * 0.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Label13(
                        text: widget.publicite.libelle,
                        color: Colors.black,
                        weight: FontWeight.bold,
                        maxLines: 2
                    ).animate().fadeIn(),
                    const Gap(10),
                    Label12(
                        text: "De ${widget.publicite.nomAnnonceur}",
                        color: Colors.black,
                        weight: FontWeight.normal,
                        maxLines: 2
                    ).animate().fadeIn(),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () => Redirections().launchCall(context: context, number: widget.publicite.contactAnnonceur),
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                                side: BorderSide(color: GlobalThemeData.lightColorScheme.primary.withOpacity(0.1)),
                                borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))
                            )
                        ),
                        backgroundColor: WidgetStateProperty.all(GlobalThemeData.lightColorScheme.primary),
                      ),
                      icon: Icon(Icons.settings_phone_sharp, color: GlobalThemeData.lightColorScheme.onPrimary, size: 20,)
                  ).animate().fadeIn(),
                  if(widget.publicite.sitewebAnnonceur != null)
                    Row(
                      children: [
                        const Gap(10),
                        IconButton(
                            onPressed: () => Redirections().launchWebsite(context: context, url: widget.publicite.sitewebAnnonceur!),
                            style: ButtonStyle(
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                      side: BorderSide(color: GlobalThemeData.lightColorScheme.primary.withOpacity(0.1)),
                                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))
                                  )
                              ),
                              backgroundColor: WidgetStateProperty.all(GlobalThemeData.lightColorScheme.primary),
                            ),
                            icon: Icon(Icons.public_outlined, color: GlobalThemeData.lightColorScheme.onPrimary, size: 20,)
                        ).animate().fadeIn(),
                      ],
                    )
                ],
              ),
            ],
          ),
          const Gap(20),
          Label13(
              text: widget.publicite.description,
              color: Colors.black,
              weight: FontWeight.normal,
              maxLines: 200
          ).animate().fadeIn(),
        ],
      ),
    );
  }
}
