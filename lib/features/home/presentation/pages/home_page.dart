import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const List<String> images = [
    'assets/images/IMG-20241113-WA0001.jpg',
    'assets/images/IMG-20241113-WA0002.jpg',
    'assets/images/IMG-20241113-WA0005.jpg',
    'assets/images/IMG-20241113-WA0007.jpg',
    'assets/images/IMG-20241113-WA0011.jpg',
    'assets/images/IMG-20241113-WA0014.jpg',
    'assets/images/IMG-20241113-WA0015.jpg',
    'assets/images/IMG-20241113-WA0019.jpg',
    'assets/images/IMG-20241113-WA0021.jpg',
    'assets/images/IMG-20241113-WA0022.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logos/logo.png',
                height: 75,
                width: 75,
              ),
              Spacer(),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.keyboard_arrow_down),
                iconAlignment: IconAlignment.end,
                label: Text(
                  "ACCUEIL",
                  style: TextStyle(
                    color: Color(0xFF113175),
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.keyboard_arrow_down),
                iconAlignment: IconAlignment.end,
                label: Text(
                  "A PROPOS",
                  style: TextStyle(
                    color: Color(0xFF113175),
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.keyboard_arrow_down),
                iconAlignment: IconAlignment.end,
                label: Text(
                  "CIRCUITS",
                  style: TextStyle(
                    color: Color(0xFF113175),
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.keyboard_arrow_down),
                iconAlignment: IconAlignment.end,
                label: Text(
                  "INFOS",
                  style: TextStyle(
                    color: Color(0xFF113175),
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.keyboard_arrow_down),
                iconAlignment: IconAlignment.end,
                label: Text(
                  "GALERIE",
                  style: TextStyle(
                    color: Color(0xFF113175),
                  ),
                ),
              ),
              Spacer(),
              FilledButton.icon(
                style: FilledButton.styleFrom(
                  backgroundColor: Color(0xFFFD5418),
                ),
                onPressed: /* () => context.router.pushNamed('/contact') */
                    () => launchEmail(),
                icon: const Icon(Icons.phone),
                label: Text("Contacts"),
              ),
            ],
          ),
        ),
      ),
      body: ClipRect(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 50.0),
          children: [
            Container(
              height: height * .85,
              // margin: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: Color(0xFF113175),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          'assets/images/IMG-20241113-WA0003.jpg',
                        ),
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     gradient: const LinearGradient(
                  //       colors: [Color(0xFF113175), Colors.transparent],
                  //       begin: Alignment.bottomCenter,
                  //       end: Alignment.topCenter,
                  //     ),
                  //     borderRadius: BorderRadius.circular(8.0),
                  //   ),
                  // ),
                  Positioned(
                    left: -70,
                    bottom: -100,
                    child: Image.asset(
                      'assets/baobab.png',
                      width: 350,
                      height: 350,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: -75,
                    child: Image.asset(
                      'assets/baobab.png',
                      width: 300,
                      height: 300,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 30,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FittedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bienvenue Chez\nPeace Madagascar\nTours !',
                              style: TextStyle(
                                fontSize: 42,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            OutlinedButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_right_alt,
                                color: Colors.white,
                              ),
                              label: Text(
                                "Voir plus",
                                style: TextStyle(color: Colors.white),
                              ),
                              iconAlignment: IconAlignment.end,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: const Wrap(
                spacing: 8,
                runSpacing: 8,
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  _FeatureCard(
                    icon: Icons.restaurant_menu,
                    title: 'Visites gastronomiques',
                    description:
                        "Dolor sit amet, consectetur adipiscing elit. Sed sit amet rcus nun Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet rcus nunc. Duis egestas ac",
                  ),
                  _FeatureCard(
                    icon: Icons.beach_access,
                    title: 'Opportunités de voyage',
                    description:
                        "Dolor sit amet, consectetur adipiscing elit. Sed sit amet rcus nun Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet rcus nunc. Duis egestas ac",
                  ),
                  _FeatureCard(
                    icon: Icons.travel_explore,
                    title: 'Planification de voyage en solo',
                    description:
                        "Dolor sit amet, consectetur adipiscing elit. Sed sit amet rcus nun Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet rcus nunc. Duis egestas ac",
                  ),
                ],
              ),
            ),
            Container(
              height: height * .75,
              margin: EdgeInsets.symmetric(
                vertical: 40.0,
                horizontal: width * .17,
              ),
              child: Row(
                spacing: 10.0,
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      child: Flex(
                        direction: Axis.vertical,
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
                                  top: 10.0,
                                  left: 10.0,
                                  child: Container(
                                    height: 280.0,
                                    width: 210.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color(0xFFFD5418),
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(flex: 4, child: SizedBox()),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      // color: Colors.green,
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
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 10.0,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              spacing: 10.0,
                              children: [
                                //Image.asset('assets/flight.png'),
                                Icon(
                                  Icons.flight_takeoff,
                                  color: Color(0xFF113175),
                                ),
                                Text(
                                  "POURQUOI NOUS?",
                                  style: TextStyle(
                                    color: Color(0xFF113175),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Tour Operateur \nréceptif",
                              style: TextStyle(
                                color: Color(0xFF113175),
                                fontWeight: FontWeight.bold,
                                fontSize: 32.0,
                              ),
                            ),
                            Text(
                              "Agence Réceptive locale, basée à Madagascar depuis une vingtaine  d'années, qui a pour vocation d'organiser des circuits dans tout  Madagascar avec des services de qualité répondant aux exigences de vos  clients.",
                              style: TextStyle(
                                color: Colors.grey[600],
                                height: 1.8,
                              ),
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
                                spacing: 10.0,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Tiana Gabriel Randrianarivony",
                                          style: TextStyle(
                                            color: Color(0xFF113175),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                          ),
                                        ),
                                        Text(
                                          "Co-fondateur de Peace Madagascar Tours",
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
                                  icon: Icon(
                                    Icons.arrow_right_alt,
                                  ),
                                  label: Text(
                                    "Voir plus",
                                    // style: TextStyle(color: Colors.white),
                                  ),
                                  iconAlignment: IconAlignment.end,
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
                  ),
                ],
              ),
            ),
            Container(
              height: height * .85,
              padding: EdgeInsets.symmetric(
                horizontal: width * .10,
                vertical: 50.0,
              ),
              decoration: BoxDecoration(
                color: Color(0xFFF9C407),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "DECOUVERTES:",
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Flexible(
                    child: CarouselView.weighted(
                      scrollDirection: Axis.horizontal,
                      elevation: 2.0,
                      itemSnapping: true,
                      reverse: true,
                      shrinkExtent: 0.5,
                      flexWeights: const <int>[1, 6, 1],
                      children: List<Widget>.generate(
                        images.length,
                        (int index) {
                          return MouseRegion(
                            child: SizedBox.expand(
                              child: Stack(
                                children: [
                                  SizedBox.expand(
                                    child: Image.asset(
                                      images[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    top: 15.0,
                                    right: 15.0,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child:
                                          Image.asset('assets/logos/logo.png'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class _FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _FeatureCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Taille maximum disponible
        double maxWidth = constraints.maxWidth * .32;
        double maxHeight = constraints.maxHeight;

        // Dimensions minimales souhaitées
        double minWidth = 150;
        // double minHeight = 100;

        // Calcul de la largeur et de la hauteur tout en respectant le ratio
        double width = maxWidth >= minWidth ? maxWidth : minWidth;
        double height = width / (16 / 9); // Exemple : Ratio 16:9

        // Assurer que la hauteur reste dans les limites
        if (height > maxHeight) {
          height = maxHeight;
          width = height * (16 / 9);
        }
        return Container(
          width: width,
          height: height,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: const Color(0xFFFD5418),
                  child: Icon(
                    icon,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF113175),
                  ),
                ),
                const SizedBox(height: 8),
                Flexible(
                  child: Text(
                    description,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
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

Future<void> launchEmail() async {
  final Uri emailUri = Uri(
    scheme: 'mailto',
    path: 'peacemadagascartours@gmail.com',
    query: 'subject=Demande de devis',
  );

  if (!await launchUrl(emailUri)) {
    throw 'Impossible d\'ouvrir l\'e-mail';
  }
}
