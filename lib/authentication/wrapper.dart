import 'package:car_rental/authentication/login.dart';
import 'package:car_rental/presentation/pages/onboarding_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Decider extends StatefulWidget {
  const Decider({super.key});

  @override
  State<Decider> createState() => _DeciderState();
}

class _DeciderState extends State<Decider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
            if(snapshot.hasData){
              return const OnboardingPage();
            }else{
              return const Login();
            }
        }
      ),
    );
  }
}