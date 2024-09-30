import 'package:codelab3/main.dart';
import 'package:codelab3/pages/initial_page.dart';
import 'package:codelab3/pages/landing_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      // ignore: use_build_context_synchronously
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const InitialPage()));
    });
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
          color: mainThemeColor,
        ),
      ),
      const Align(
        alignment: Alignment.center,
        child: Icon(
          Icons.pool,
          color: Colors.white,
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: LinearProgressIndicator(
            valueColor:
                AlwaysStoppedAnimation<Color>(Colors.white.withOpacity(0.4))),
      ),
    ]));
  }
}
