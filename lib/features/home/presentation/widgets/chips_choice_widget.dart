import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/themes/app_styles.dart';
import '../../controller/boking_controller.dart';

class ChipsChoiceWidget extends StatefulWidget {
  const ChipsChoiceWidget({super.key});

  @override
  State<ChipsChoiceWidget> createState() => _ChipsChoiceWidgetState();
}

class _ChipsChoiceWidgetState extends State<ChipsChoiceWidget> {
  @override
  Widget build(BuildContext context) {
    final BookingController bookingController = Get.find();
    return Obx(() => Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          children: bookingController.option.map((option) {
            return ChoiceChip(
              label: Text(option),
              selected: bookingController.selectedOption.contains(option),
              selectedColor: AppStyles.primaryColor.withValues(alpha: 0.5),
              onSelected: (bool selected) {
                setState(() {
                  if (selected) {
                    bookingController.addOption(option);
                  } else {
                    bookingController.removeOption(option);
                  }
                });
              },
            );
          }).toList(),
        ));
  }
}
