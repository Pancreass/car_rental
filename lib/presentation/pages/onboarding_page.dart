import 'package:car_rental/presentation/pages/car_list_screen.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color(0xff2C2B34),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/onboarding.png"),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text("Premium Cars, \n Enjoy the luxury", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Text("Premium and Prestige car daily rental \n Experience the thrill at a lower prize ",
                style: TextStyle(color: Colors.grey, fontSize: 16), 
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: 320,
                  height: 54,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CarListScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    
                  ),
                  child: Text("Let\'s Go",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold ),)),
                )
              ],),
            ),
          )
        ],
      ),
    );
  }
}