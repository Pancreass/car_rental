import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:car_rental/authentication/wrapper.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  signUp() async{
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: password.text);
      Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Decider()),
    );

    }catch(e){
      print(e.toString());
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Signup Page")),
      body: Column(
        children: [
          TextField(
            controller: email,
            decoration: InputDecoration(
              hintText: "Enter your email: "
            ),
          ),
          TextField(
            controller: password,
            decoration: InputDecoration(
              hintText: "Enter your password: "
            )
          ),

          ElevatedButton(onPressed: ()=>signUp(), child: Text("Signup"))
        ]
      ),
    );
  }
}