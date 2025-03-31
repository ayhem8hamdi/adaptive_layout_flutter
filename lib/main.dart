import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_pratique/views/home_screen.dart';
import 'package:responsive_pratique/views/methods/custom_app_bar.dart';
import 'package:responsive_pratique/views/widgets/custom_drawer.dart';

void main() {
  runApp(DevicePreview(
    enabled: false,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color(0xffDBDBDB),
          appBar: MediaQuery.of(context).size.width <= 900
              ? customAppBar(context)
              : null,
          drawer: const CustomDrawer(),
          body: const HomeScreen(),
        ));
  }
}
