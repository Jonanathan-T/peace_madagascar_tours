import 'package:flutter/material.dart';

import '../../../../core/themes/app_styles.dart';

class WhyUsSection extends StatelessWidget {
  final Size size;
  const WhyUsSection({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .75,
      margin: EdgeInsets.symmetric(
        vertical: 40.0,
        horizontal: size.width * .17,
      ),
      child: Row(
        spacing: 10.0,
        children: [
          Flexible(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Flexible(
                    flex: 5,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/IMG-20241113-WA0020.jpg',
                              ),
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        Positioned(
                          top: 20.0,
                          left: 10.0,
                          child: Container(
                            height: 280.0,
                            width: 210.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppStyles.accentColor),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Flexible(flex: 4, child: SizedBox()),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                spacing: 8.0,
                children: [
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFD5418),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/IMG-20241113-WA0018.jpg',
                          ),
                        ),
                        // color: const Color(0xFFFDEE18),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 10.0,
                    children: [
                      Icon(
                        Icons.flight_takeoff,
                        color: Color(0xFF113175),
                      ),
                      Text(
                        "POURQUOI NOUS?",
                        style: TextStyle(color: AppStyles.primaryColor),
                      ),
                    ],
                  ),
                  Text(
                    "Tour Opérateur réceptif",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: AppStyles.primaryColor,
                    ),
                  ),
                  Text(
                    "Situé à Tamatave, nous sommes votre tour opérateur dédié à vous offrir des voyages qui apportent paix et tranquillité. Notre slogan, *\"No work, no stress, peace Madagascar,\"* résume parfaitement notre philosophie : nous croyons que les vacances doivent être un moment de détente où vous pouvez échapper au stress du quotidien et vous ressourcer au cœur de la nature malgache.",
                    style: TextStyle(color: Colors.grey, height: 1.8),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 25.0),
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    width: double.infinity,
                    height: 150.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0x7A757575),
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      spacing: 25.0,
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color(0xFFFD5418),
                          child: Icon(
                            Icons.photo_camera_outlined,
                            size: 24,
                            color: Colors.white,
                          ),
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Vanila Chant Joëlle",
                                style: TextStyle(
                                  color: Color(0xFF113175),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                "Co-fondatrice de Peace Madagascar Tours",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                "Passionné de voyage, il fait sien l'adage que \"Voyager est un Art de vivre\".",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                ),
                                overflow: TextOverflow.clip,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    spacing: 10.0,
                    children: [
                      OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: AppStyles.primaryColor,
                          ),
                        ),
                        icon: const Icon(Icons.arrow_right_alt, color: AppStyles.primaryColor),
                        iconAlignment: IconAlignment.end,
                        label: const Text(
                          "Voir plus",
                          style: TextStyle(color: AppStyles.primaryColor),
                        ),
                      ),
                      SizedBox(width: 20.0),
                      CircleAvatar(
                        backgroundColor: const Color(0xFFFD5418),
                        child: Icon(
                          Icons.phone,
                          size: 24,
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        spacing: 2.0,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nous contacter",
                            style: TextStyle(
                              color: Color(0xFF113175),
                            ),
                          ),
                          Text(
                            "+261 38 87 407 45",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF113175),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
