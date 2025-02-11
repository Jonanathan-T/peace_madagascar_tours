import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/injection/injection.dart';
import 'core/routes/app_router.dart';
import 'core/themes/app_styles.dart';

void main() {
  configureDependencies();
  usePathUrlStrategy();
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Peace Madagascar Tours',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppStyles.primaryColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.plusJakartaSans(),
          bodyMedium: GoogleFonts.plusJakartaSans(),
          bodySmall: GoogleFonts.plusJakartaSans(),
        ),
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
