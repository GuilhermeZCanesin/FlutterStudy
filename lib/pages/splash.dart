import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_bils_app/widgets/animatedlogo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Future.delayed(const Duration(seconds: 3), () {
        if (mounted) {
          Get.offNamed('/home');
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
            body: Center(
      child: AnimatedSplashLogo(),
    )));
  }
}
