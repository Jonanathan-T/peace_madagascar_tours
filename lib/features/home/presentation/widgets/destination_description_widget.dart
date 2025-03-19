import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class DestinationDescriptionWidget extends StatelessWidget {
  const DestinationDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: AppStyles.accentColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Icon(
                    Icons.public,
                    size: 32,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "Peace Madagascar Tours",
                  style: TextStyle(
                    color: AppStyles.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                const Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(right: 50.0),
                    child: Text(
                      'De plus, nous pouvons personnaliser vos voyages partout à Madagascar et vous permettant ainsi d\'explorer chaque recoin de ce pays fascinant !',
                      style: TextStyle(
                        color: Colors.black54,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                OutlinedButton.icon(
                  onPressed: launchEmail,
                  icon: const Icon(Icons.arrow_right_alt, color: AppStyles.primaryColor),
                  iconAlignment: IconAlignment.end,
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: AppStyles.primaryColor,
                    ), // Change la couleur du contour ici
                  ),
                  label: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: const Text(
                      "Contacter-nous",
                      style: TextStyle(color: AppStyles.primaryColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage("assets/images/IMG-20241113-WA0023.jpg"),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
