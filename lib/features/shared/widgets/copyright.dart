import 'package:flutter/material.dart';

class Copyright extends StatelessWidget {
  const Copyright({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40.0),
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.sizeOf(context).height * .02,
      ),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 0.5, color: Colors.black12),
        ),
      ),
      child: Center(
        child: Text(
          'Tous droits réservés 2025 ${DateTime.now().year > 2025 ? "- ${DateTime.now().year}" : ""}- Peace Madagascar Tours - © Copyrights',
          style: ThemeData().textTheme.displaySmall!.copyWith(
                color: Colors.black54,
                fontSize: 12.0,
              ),
        ),
      ),
    );
  }
}
