import 'package:car_rental/data.models/Car.dart'; // Update this line to match the correct case
import 'package:car_rental/presentation/widgets/car_card.dart';
import 'package:car_rental/presentation/widgets/profile_section.dart';
import 'package:flutter/material.dart';

class CarListScreen extends StatelessWidget {
  final List<Car> cars = [
    Car(
        model: "Toyota Fortuner",
        distance: 870,
        fuelCapacity: 50,
        pricePerHour: 270,
        imgURL: "assets/fortuner.png"),
    Car(
        model: "Mahindra Thar",
        distance: 870,
        fuelCapacity: 50,
        pricePerHour: 45,
        imgURL: "assets/thar.png"),
    Car(
        model: "Mahindra Scorpio",
        distance: 870,
        fuelCapacity: 50,
        pricePerHour: 45,
        imgURL: "assets/scorpio.png"),
    Car(
        model: "Toyota Innova",
        distance: 870,
        fuelCapacity: 50,
        pricePerHour: 45,
        imgURL: "assets/innova.png"),
    Car(
        model: "Maruti Ertiga",
        distance: 870,
        fuelCapacity: 50,
        pricePerHour: 45,
        imgURL: "assets/ertiga.png"),
    Car(
        model: "Mahindra XUV700",
        distance: 870,
        fuelCapacity: 50,
        pricePerHour: 45,
        imgURL: "assets/Mahindra.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Car'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileSection(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage('user.png'), // Path to your image
                // backgroundColor:
                //     Colors.transparent, // Optional: make background transparent
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0), // Rounded corners
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cars.length,
              itemBuilder: (context, index) {
                return CarCard(car: cars[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
