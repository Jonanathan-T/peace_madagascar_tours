import 'package:flutter/material.dart';

import '../../../core/core.dart';

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
