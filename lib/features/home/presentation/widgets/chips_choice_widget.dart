import 'package:flutter/material.dart';

import '../../../../core/themes/app_styles.dart';

class ChipsChoiceWidget extends StatefulWidget {
  const ChipsChoiceWidget({super.key});

  @override
  State<ChipsChoiceWidget> createState() => _ChipsChoiceWidgetState();
}

class _ChipsChoiceWidgetState extends State<ChipsChoiceWidget> {
  final List<String> _options = ['Andasibe', 'Canal de Pangalane', 'Ankanin\'ny Nofy', 'Manambato', 'Foulpointe', 'Sainte Marie'];
  final List<String> _selectedOptions = [];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      children: _options.map((option) {
        return ChoiceChip(
          label: Text(option),
          selected: _selectedOptions.contains(option),
          selectedColor: AppStyles.primaryColor.withValues(alpha: 0.5),
          onSelected: (bool selected) {
            setState(() {
              if (selected) {
                _selectedOptions.add(option);
              } else {
                _selectedOptions.remove(option);
              }
            });
          },
        );
      }).toList(),
    );
  }
}
