import 'package:flutter/material.dart';

import '../../../../core/themes/app_styles.dart';

class PassengerWidget extends StatefulWidget {
  const PassengerWidget({super.key});

  @override
  State<PassengerWidget> createState() => _PassengerWidgetState();
}

class _PassengerWidgetState extends State<PassengerWidget> {
  int _passengerCount = 2;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 10.0,
        children: [
          Text(
            "Passager",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(25.0),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            ),
          ),
        ],
      ),
    );
  }
}
