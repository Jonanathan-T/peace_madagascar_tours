import 'package:url_launcher/url_launcher.dart';

Future<void> launchEmail() async {
  final Uri emailUri = Uri(
    scheme: 'mailto',
    path: 'peacemadagascartours@gmail.com',
    query: 'subject=Demande de devis',
  );

  if (!await launchUrl(emailUri)) {
    throw 'Impossible d\'ouvrir l\'e-mail';
  }
}

Future<void> openSocialNetworkLink(
  String link,
  SocialNetwork socialNetwork,
) async {
  final Uri url = Uri.parse(link);

  if (!await launchUrl(url, webOnlyWindowName: "_blank")) {
    throw 'Impossible d\'ouvrir la page ${socialNetwork.toString()}';
  }
}

enum SocialNetwork {
  facebook,
  twitter,
  instagram,
}
