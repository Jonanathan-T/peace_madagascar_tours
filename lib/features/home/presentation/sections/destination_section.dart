import 'package:flutter/material.dart';

import '../../../../core/themes/app_styles.dart';

import '../widgets/widgets.dart';
import 'adventure_section.dart';
import 'booking_section.dart';

class DestinationSection extends StatelessWidget {
  final Size size;
  const DestinationSection({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: constraints.maxWidth < 768
            ? CrossAxisAlignment.stretch
            : CrossAxisAlignment.center,
        children: [
          Row(
            spacing: 10.0,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.flight_takeoff,
                color: Color(0xFF113175),
              ),
              Text(
                "VISA CATEGORIE",
                style: TextStyle(color: AppStyles.primaryColor),
              ),
            ],
          ),
          Text(
            "Nos Destinations",
            style: AppStyles.headerTextStyle.copyWith(
              color: AppStyles.primaryColor,
              fontSize: constraints.maxWidth < 600
                  ? 24
                  : 32, // Taille de police responsive
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15.0),
          SizedBox(
            width: size.width * .45,
            child: Text(
              "Nous vous invitons à explorer la beauté de l'Est de Madagascar à travers nos circuits soigneusement élaborés. Voici quelques-unes des merveilles que vous découvrirez avec nous :",

              textAlign: TextAlign.justify, // Centrer le texte
              style: TextStyle(
                fontSize: constraints.maxWidth < 600
                    ? 14
                    : 16, // Taille de police responsive
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            width: size.width * 0.8,
            child: TouristDestinationsWidget(),
          ),
          const SizedBox(height: 30.0),
          Container(
            width: size.width * 0.8,
            height: size.height * 0.75,
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        image:
                            AssetImage("assets/images/IMG-20241113-WA0006.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 25.0),
                Flexible(
                  flex: 2,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const DestinationDescriptionWidget(),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.0),
          AdventureSection(size: size),
          BookingSection(size: size),
        ],
      );
    });
  }
}
