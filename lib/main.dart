import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'core/config/google_maps_config.dart';
import 'core/routes/app_router.dart';
import 'core/themes/app_styles.dart';

Future<void> main() async {
  if (kIsWeb) {
    usePathUrlStrategy();
    await dotenv.load(fileName: ".env");
    configureGoogleMaps();
    // debugDefaultTargetPlatformOverride = TargetPlatform.web;
  }
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
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 600, name: MOBILE),
          const Breakpoint(start: 601, end: 900, name: TABLET),
          const Breakpoint(start: 901, end: 1200, name: DESKTOP),
          const Breakpoint(start: 1201, end: double.infinity, name: 'LARGE_DESKTOP'),
        ],
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppStyles.primaryColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.plusJakartaSans(),
          bodyMedium: GoogleFonts.plusJakartaSans(),
          bodySmall: GoogleFonts.plusJakartaSans(),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          shadowColor: Colors.black45,
          elevation: 2.0,
          centerTitle: true,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
