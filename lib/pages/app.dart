import 'package:flutter/material.dart';
import 'package:wether/pages/schedule_page/schedule_page.dart';
import 'home_page/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      title: "Weather App",
      home: HomePage(),

    );
  }
}
