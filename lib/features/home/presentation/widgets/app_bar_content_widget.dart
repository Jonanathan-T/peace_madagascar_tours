import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/themes/app_styles.dart';

class AppBarContent extends StatelessWidget {
  const AppBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageWithSize(imagePath: 'assets/logos/logo.png', size: 80),
          Spacer(),
          if (constraints.maxWidth > 790) ...[
            NavButton(label: "ACCUEIL"),
            NavButton(label: "A PROPOS"),
            NavButton(label: "CIRCUITS"),
            NavButton(label: "INFOS"),
            NavButton(label: "GALERIE"),
            Spacer(),
            ContactButton(),
          ] else ...[
            Icon(Icons.menu),
          ]
        ],
      );
    });
  }
}

class ImageWithSize extends StatelessWidget {
  final String imagePath;
  final double size;
  const ImageWithSize({required this.imagePath, required this.size, super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      height: size,
      width: size,
      fit: BoxFit.contain,
    );
  }
}

class NavButton extends StatelessWidget {
  final String label;
  const NavButton({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.keyboard_arrow_down),
      iconAlignment: IconAlignment.end,
      label: Text(label, style: TextStyle(color: AppStyles.primaryColor)),
    );
  }
}

class ContactButton extends StatelessWidget {
  const ContactButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      style: FilledButton.styleFrom(backgroundColor: AppStyles.accentColor),
      onPressed: launchEmail,
      icon: const Icon(Icons.email),
      label: const Text("Contacts"),
    );
  }
}

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
