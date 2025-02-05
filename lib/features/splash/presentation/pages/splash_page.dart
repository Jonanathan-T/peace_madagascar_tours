import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:peaces_madagascar_tours/core/themes/app_styles.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 5));
    if (mounted) {
      context.router.replaceNamed('/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 1),
            Flexible(
              flex: 3,
              child: Image.asset(
                'assets/logos/logo.png',
                fit: BoxFit.scaleDown,
              ),
            ),
            SpinKitThreeBounce(
              color: AppStyles.primaryColor,
              size: 25.0,
            ),
            const Spacer(flex: 1),
            const Text(
              "Developed By - Smile Technologie",
              style: TextStyle(color: Colors.black38),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height * .02),
          ],
        ),
      ),
    );
  }
}
