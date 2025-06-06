import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/themes/app_styles.dart';
import '../../controller/boking_controller.dart';

class BookingButtonWidget extends StatelessWidget {
  final String title;
  final Widget child;
  const BookingButtonWidget({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 10.0,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Container(
          height: 36.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(25.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Center(child: child),
        ),
      ],
    );
  }
}

class PassengerCountWidget extends StatelessWidget {
  const PassengerCountWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final BookingController bookingController = Get.find();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 10.0,
      children: [
        InkWell(
          onTap: () {
            if (bookingController.passengerCount > 1) {
              bookingController.passengerCount--;
            }
          },
          child: Icon(
            Icons.remove,
            color: AppStyles.accentColor,
          ),
        ),
        Obx(() => Text(
              bookingController.passengerCount.toString(),
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            )),
        InkWell(
          onTap: () {
            bookingController.passengerCount++;
          },
          child: Icon(
            Icons.add,
            color: AppStyles.accentColor,
          ),
        ),
      ],
    );
  }
}
