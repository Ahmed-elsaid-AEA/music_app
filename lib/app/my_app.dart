import 'package:flutter/material.dart';
import 'package:music_apps/core/resources/font_managers.dart';
import 'package:music_apps/core/resources/routes_managers.dart';
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily:FontsManagers.orbitronName
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.kSplashScreen,
      routes: RoutesManagers.routes,
    );
  }
}
