import 'package:car_rental/authentication/wrapper.dart';
import 'package:car_rental/firebase_options.dart';
import 'package:car_rental/presentation/pages/MapsDetailsPage.dart';
import 'package:car_rental/presentation/pages/car_details_page.dart';
import 'package:car_rental/presentation/pages/car_list_screen.dart';
import 'package:car_rental/presentation/pages/onboarding_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:car_rental/presentation/widgets/profile_section.dart';
// import 'package:car_rental/presentation/widgets/profile_section.dart';
import 'package:flutter/material.dart';

void main() async {
  try{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    );  
    runApp(const MainApp());
  }catch(e){
    print(e.toString());
  }
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
      home: Decider(),
    );
  }
}
//hi kunsh here
//hi show this to everyone
//hello is this branch ku?? pls respiond
