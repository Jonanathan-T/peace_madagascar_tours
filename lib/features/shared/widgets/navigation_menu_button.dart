import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'widgets.dart';

class NavigationMenuButton extends StatelessWidget {
  final Offset offset;
  final Icon icon;
  final Map<int, String> routes;
  final Map<int, List<PopupMenuEntry<int>>> dropdownItems;

  const NavigationMenuButton({
    super.key,
    required this.offset,
    required this.icon,
    required this.routes,
    required this.dropdownItems,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double padding = constraints.maxWidth < 790 ? 20.0 : 50.0;
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: Row(
          children: [
            ImageWithSizeWidget(
              imagePath: 'assets/logos/logo.png',
              size: 150,
              onTap: () => context.router.replaceNamed('/splash'),
            ),
            Spacer(),
            // Menu items for Mobile
            if (constraints.maxWidth <= 790) ...[
              PopupMenuButton<int>(
                position: PopupMenuPosition.under,
                offset: offset,
                icon: icon,
                iconSize: 30,
                onSelected: (value) => _onSelected(value, context),
                itemBuilder: (context) => _generateMenuItemsForMobile(),
              ),
            ] else ...[
              // Menu items for Desktop
              ..._generateMenuItemsForDesktop(context),
              Spacer(),
              ContactButton(),
            ]
          ],
        ),
      );
    });
  }

  List<Widget> _generateMenuItemsForDesktop(BuildContext context) {
    List<Widget> items = [];
    List<int> orderedKeys = [0, 1, 2, 3, 4];

    for (int key in orderedKeys) {
      if (routes.containsKey(key)) {
        items.add(
          MenuItemButtonWidget(
            label: _formatMenuTitle(routes[key]!),
            onPressed: () => context.router.replaceNamed(routes[key]!),
          ),
        );
      } else if (dropdownItems.containsKey(key)) {
        PopupMenuButton<int> dropdown = PopupMenuButton<int>(
          offset: Offset(0, 45),
          onSelected: (value) => _onSelected(value, context),
          itemBuilder: (context) => dropdownItems[key]!.sublist(2),
          tooltip: "Show ${_dropdownItemsLabel(key).toLowerCase()} menu",
          child: MenuItemButtonWidget(label: _dropdownItemsLabel(key), isList: true),
        );
        items.add(dropdown);
      }
    }
    return items;
  }

  List<PopupMenuEntry<int>> _generateMenuItemsForMobile() {
    List<PopupMenuEntry<int>> items = [];
    List<int> orderedKeys = [0, 1, 2, 3, 4];

    for (int key in orderedKeys) {
      if (routes.containsKey(key)) {
        items.add(
          PopupMenuItem<int>(
            value: key,
            child: Text(
              _formatMenuTitle(routes[key]!),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        );
      } else if (dropdownItems.containsKey(key)) {
        items.addAll(dropdownItems[key]!);
        if (key == dropdownItems.keys.last) {
          items.add(PopupMenuDivider());
        }
      }
    }

    return items;
  }

  String _formatMenuTitle(String route) {
    switch (route) {
      case '/home':
        return 'Accueil';
      case '/who_are_we':
        return 'Qui sommes-nous';
      case '/our_values':
        return 'Nos valeurs';
      case '/our_mission':
        return 'Notre mission';
      case '/circuit':
        return 'Circuit';
      case '/contact':
        return 'Contact';
      case '/galerie':
        return 'Galerie';
      default:
        return route;
    }
  }

  String _dropdownItemsLabel(int key) {
    switch (key) {
      case 1:
        return 'A propos';
      case 2:
        return 'Circuits';
      default:
        return '';
    }
  }

  void _onSelected(int value, BuildContext context) {
    if (routes.containsKey(value)) {
      debugPrint("route: ***${routes[value]}***");
      context.router.replaceNamed(routes[value]!);
    }
  }
}
