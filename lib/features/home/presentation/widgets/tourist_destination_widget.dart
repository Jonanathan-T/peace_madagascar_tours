import 'package:flutter/material.dart';
import '../../../../core/themes/app_styles.dart';

class TouristDestinationsWidget extends StatelessWidget {
  final List<TouristDestination> destinations;

  const TouristDestinationsWidget({super.key, required this.destinations});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 16 / 7,
      ),
      itemCount: destinations.length,
      itemBuilder: (context, index) {
        final destination = destinations[index];
        return Card(
          color: AppStyles.white,
          shadowColor: Colors.black38,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black12),
            borderRadius: BorderRadius.circular(
                15.0), // Ajustez la valeur pour l'arrondi souhaité
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              spacing: 10.0,
              children: [
                /*CachedNetworkImage(
                  imageUrl: destination.imageUrl,
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),*/
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage(
                          destination.imageUrl,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8.0,
                    children: [
                      Text(
                        destination.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: AppStyles.primaryColor,
                        ),
                      ),
                      Text(destination.description),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class TouristDestination {
  final String name;
  final String description;
  // final int day;
  // final int night;
  final String imageUrl;

  TouristDestination({
    required this.name,
    required this.description,
    // required this.day,
    // required this.night,
    required this.imageUrl,
  });
}
