import 'package:flutter/material.dart';

import '../../../core/core.dart';

class MenuItemButtonWidget extends StatelessWidget {
  final String label;
  final Function()? onPressed;
  final bool isList;
  const MenuItemButtonWidget({
    required this.label,
    super.key,
    this.onPressed,
    this.isList = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: isList
          ? const Icon(
              Icons.keyboard_arrow_down,
              color: AppStyles.primaryColor,
            )
          : SizedBox.shrink(),
      iconAlignment: IconAlignment.end,
      label: Text(
        label.toUpperCase(),
        style: TextStyle(
          color: AppStyles.primaryColor,
          // fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
