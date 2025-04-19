import 'package:car_rental/presentation/pages/car_details_page.dart';
import 'package:car_rental/presentation/pages/car_list_screen.dart';
import 'package:car_rental/presentation/pages/onboarding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // removed const here
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CarDetalsPage(),
    );
  }
}
//hi kunsh here
//hi show this to everyone
//hello is this branch ku?? pls respiond
