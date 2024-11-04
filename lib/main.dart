import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_bils_app/binds/counter.dart';
import 'package:the_bils_app/pages/home.dart';
import 'package:the_bils_app/pages/second.dart';
import 'package:the_bils_app/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => const SplashScreen()),
        GetPage(name: '/home', page: () => const Home(), binding: SampleBind()),
        GetPage(
            name: '/second', page: () => const Second(), binding: SampleBind()),
      ],
    );
  }
}
