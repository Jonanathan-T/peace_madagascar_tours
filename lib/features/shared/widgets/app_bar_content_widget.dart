import 'package:flutter/material.dart';

import 'widgets.dart';

/*

 final Map<String, List<Map<String, dynamic>>> _dropdownItems = {
  'A PROPOS': [
    {"title": "Qui sommes-nous ?"},
    {"title": "Nos valeurs"},
    {"title": "Nos engagements"}
  ],
  'CIRCUITS': [
    {"title": "Vacances de l'Est", "circuit": circuitEst},
    {"title": "La Route Nationale N°02"},
    {"title": "La vie de l’Est"},
    {"title": "Circuit Lémuriens"}
  ],
};

@RoutePage()
class AppBarContent extends StatelessWidget {
  const AppBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageWithSize(
            imagePath: 'assets/logos/logo.png',
            size: 150,
            onTap: () => context.router.replaceNamed('/splash'),
          ),
          Spacer(),
          if (constraints.maxWidth > 790) ...[
            NavButton(
              label: "ACCUEIL",
              onPressed: () => context.router.replaceNamed('/home'),
            ),
            ..._dropdownItems.keys.map((label) => NavButtonWithDropdown(label: label)),
            NavButton(
              label: "INFOS",
              onPressed: () => context.router.replaceNamed('/contact'),
            ),
            NavButton(
              label: "GALERIE",
              onPressed: () => context.router.replaceNamed('/galerie'),
            ),
            Spacer(),
            ContactButton(),
          ] else ...[
            PopupMenuButton<int>(
              position: PopupMenuPosition.under,
              offset: Offset(0, 25),
              icon: Icon(Icons.menu),
              onSelected: (value) {
                switch (value) {
                  case 0:
                    context.router.replaceNamed('/home');
                    break;
                  case 1:
                    context.router.replaceNamed('/contact');
                    break;
                  case 2:
                    context.router.replaceNamed('/galerie');
                    break;
                  // A propos
                  case 30:
                    context.router.replaceNamed('/home');
                    break;
                  case 31:
                    context.router.replaceNamed('/contact');
                    break;
                  case 32:
                    context.router.replaceNamed('/galerie');
                    break;
                  // Circuits
                  case 40:
                    context.router.replace(CircuitDetailRoute(circuit: circuitEst));
                    break;
                  case 41:
                    context.router.replaceNamed('/home');
                    break;
                  case 42:
                    context.router.replaceNamed('/galerie');
                    break;
                  case 43:
                    context.router.replaceNamed('/galerie');
                    break;
                }
              },
              itemBuilder: (context) => [
                PopupMenuItem<int>(value: 0, child: Text('ACCUEIL')),
                PopupMenuItem<int>(value: 1, child: Text('INFOS')),
                PopupMenuItem<int>(value: 2, child: Text('GALERIE')),
                ..._dropdownItems.entries.expand((entry) {
                  final index = _dropdownItems.keys.toList().indexOf(entry.key) + 3;
                  return <PopupMenuEntry<int>>[
                    PopupMenuDivider(),
                    PopupMenuItem<int>(
                      value: null,
                      child: Text(
                        entry.key,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    ...entry.value.map(
                      (item) => PopupMenuItem<int>(
                        value: index * 10 + entry.value.indexOf(item),
                        child: Text(item['title']!),
                      ),
                    ),
                  ];
                }),
              ],
            ),
          ]
        ],
      );
    });
  }
}



*/

class AppBarContentWidget extends StatelessWidget {
  final Map<int, String> routes = {
    0: '/home',
    10: '/who_are_we',
    11: '/our_values',
    12: '/our_mission',
    20: '/circuit/eastern_holidays',
    21: '/circuit/',
    22: '/circuit/life_in_the_east',
    3: '/contact',
    4: '/galerie',
  };

  final Map<int, List<PopupMenuEntry<int>>> dropdownItems = {
    1: [
      PopupMenuDivider(),
      PopupMenuItem<int>(
        value: null,
        child: Text(
          "A PROPOS",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      PopupMenuItem<int>(value: 10, child: Text("Qui sommes-nous ?")),
      PopupMenuItem<int>(value: 11, child: Text("Nos valeurs")),
      PopupMenuItem<int>(value: 12, child: Text("Nos engagements")),
    ],
    2: [
      PopupMenuDivider(),
      PopupMenuItem<int>(
        value: null,
        child: Text(
          "CIRCUITS",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      PopupMenuItem<int>(value: 20, child: Text("Vacances de l'Est")),
      PopupMenuItem<int>(value: 21, child: Text('La Route Nationale N°02')),
      PopupMenuItem<int>(value: 22, child: Text('La vie de l’Est')),
      // PopupMenuItem<int>(value: 23, child: Text('Circuit Lémuriens')),
    ],
  };

  AppBarContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationMenuButton(
      offset: Offset(0, 25),
      icon: Icon(Icons.menu),
      routes: routes,
      dropdownItems: dropdownItems,
    );
  }
}
