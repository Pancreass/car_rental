// Update this import to match the correct case
import 'package:car_rental/data.models/Car.dart'; // Change from 'car.dart' to 'Car.dart'
import 'package:car_rental/presentation/widgets/car_card.dart';
import 'package:car_rental/presentation/widgets/more_card.dart';
import 'package:flutter/material.dart';

class CarDetalsPage extends StatelessWidget {
 final Car car;

  const CarDetalsPage({super.key, required this.car}); // Add 'required' keyword to 'car' parameter

  // ... rest of your code remains the same

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline),
            Text(
              "Information",
            )
          ],
        ),
      ),
      body: Column(
        children: [
          CarCard(
            car: Car(
                model:car.model,
                distance: car.distance,
                fuelCapacity: car.fuelCapacity,
                pricePerHour: car.pricePerHour),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
            
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xffF3F3F3),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                       color: Colors.black12,
                       blurRadius: 10,
                       spreadRadius: 5,
              
              
                    )
                   
              
                  ]
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/user.png"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Jane Cooper",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "\$4,253",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 20,),
            Expanded(
              child: Container(
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: AssetImage("assets/maps.png"),
                  fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 5,
                    )
                  ]
                ),
              ),
            )
                    
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
               MoreCard(
              car: Car(
                model:car.model,
                distance: car.distance,
                fuelCapacity: car.fuelCapacity,
                pricePerHour: car.pricePerHour),
            ), 
            SizedBox(height: 5,),
            MoreCard(
              car:Car(
                model:car.model,
                distance: car.distance,
                fuelCapacity: car.fuelCapacity,
                pricePerHour: car.pricePerHour),
            ),
            SizedBox(height: 5,),
            MoreCard(
              car: Car(
                model:car.model,
                distance: car.distance,
                fuelCapacity: car.fuelCapacity,
                pricePerHour: car.pricePerHour),
            ),
            ]
            ),
          ),
        ],
        ),
            
    );
  }
}
