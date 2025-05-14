import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/app_styles.dart';

class WhyUsSection extends StatelessWidget {
  final Size size;
  const WhyUsSection({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double? height = constraints.maxWidth < 920 ? null : size.height * 0.75;
        double? width = 220.0;
        if (constraints.maxWidth <= 600) {
          //width = constraints.maxWidth * .9;
          width = double.infinity;
        }
        return Container(
          height: height,
          width: double.infinity,
          constraints: BoxConstraints(minHeight: 700),
          margin: EdgeInsets.symmetric(
            vertical: 40.0,
          ),
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 10.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            crossAxisAlignment: constraints.maxWidth < 790 ? WrapCrossAlignment.center : WrapCrossAlignment.start,
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: 360, maxHeight: 545.0),
                width: width,
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: (constraints.maxWidth <= 600) ? AlignmentDirectional.bottomCenter : AlignmentDirectional.topStart,
                  children: [
                    Container(
                      height: 280.0,
                      width: (constraints.maxWidth >= 600) ? width * .95 : double.infinity,
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
                    if (constraints.maxWidth >= 600)
                      Positioned(
                        top: 20.0,
                        left: 10.0,
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 360.0),
                          height: 280.0,
                          width: width * .95,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppStyles.accentColor),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Container(
                constraints: BoxConstraints(maxWidth: 360.0, maxHeight: 545.0),
                width: constraints.maxWidth <= 600 ? double.infinity : 160.0,
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
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
              Container(
                constraints: BoxConstraints(maxWidth: 420.0, maxHeight: 545.0, minWidth: 360.0),
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
                    AutoSizeText(
                      "Tour Opérateur réceptif",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: AppStyles.primaryColor,
                      ),
                      maxLines: 1,
                      minFontSize: 20,
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
            ],
          ),
        );
      },
    );
  }
}
