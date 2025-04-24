import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:car_rental/authentication/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  signIn() async {
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email.text, password: password.text) ;
    }catch(e){
      print(e.toString());
      return null;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: Column(
        children: [
          TextField(
            controller: email,
            decoration: InputDecoration(
              hintText: "Enter your email: "
            )
          ),
          TextField(
            controller: password,
            decoration: InputDecoration(
              hintText: "Enter your password: "
            )
          ),

          ElevatedButton(onPressed: (()=>signIn()), child: Text("Login")),// replace it with inkWell

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?"),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Signup()),
                  );
                },
                child: const Text("Sign up"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}