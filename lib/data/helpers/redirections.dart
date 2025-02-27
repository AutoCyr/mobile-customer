import 'package:autocyr/presentation/ui/helpers/snacks.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Redirections {

  launchWebsite({required BuildContext context, required String url}) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      Snacks.failureBar("Le lien n'est pas valide", context);
    }
  }

  launchCall({required BuildContext context, required String number}) async {
    String url = "tel://$number";
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      Snacks.failureBar("Le numéro n'est pas valide", context);
    }
  }

  launchMail({required BuildContext context, required String email}) async {
    String url = "mailto:$email";
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      Snacks.failureBar("L'adresse mail n'est pas valide", context);
    }
  }

  openMap({required BuildContext context, required String latitude, required String longitude}) async {
    String googleMapUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';

    if (await canLaunchUrl(Uri.parse(googleMapUrl))) {
      await launchUrl(Uri.parse(googleMapUrl));
    } else {
      Snacks.failureBar("Les coordonnées géographiques ne sont pas valides", context);
    }
  }

}