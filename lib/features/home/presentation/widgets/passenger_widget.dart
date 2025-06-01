import 'package:flutter/material.dart';

import '../../../../core/themes/app_styles.dart';

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
          padding: const EdgeInsets.all(8.0),
          child: Center(child: child),
        ),
      ],
    );
  }
}

class PassengerCountWidget extends StatefulWidget {
  const PassengerCountWidget({super.key});

  @override
  State<PassengerCountWidget> createState() => _PassengerCountWidgetState();
}

class _PassengerCountWidgetState extends State<PassengerCountWidget> {
  int _passengerCount = 2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 10.0,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              if (_passengerCount > 1) _passengerCount--;
            });
          },
          child: Icon(
            Icons.remove,
            color: AppStyles.accentColor,
          ),
        ),
        Text(
          "$_passengerCount",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        InkWell(
          onTap: () {
            setState(() {
              _passengerCount++;
            });
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
