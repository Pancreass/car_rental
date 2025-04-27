import 'package:car_rental/data.models/Car.dart';
import 'package:car_rental/presentation/pages/car_details_page.dart';
// import 'package:car_rental/presentation/pages/car_list_screen.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  final Car car;

  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CarDetalsPage(
                    car: car,
                  )),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color(0xffF3F3F3),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 5,
                blurRadius: 10,
              ),
            ]),
        child: Column(
          children: [
            Image.asset(
              car.imgURL,
              height: 120,
            ),
            Text(
              car.model,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/gps.png"),
                        Text("${car.distance.toStringAsFixed(0)}km"),
                      ],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Row(
                      children: [
                        Image.asset("assets/pump.png"),
                        Text("${car.fuelCapacity.toStringAsFixed(0)}L"),
                      ],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "\₹${car.pricePerHour.toStringAsFixed(2)}/h",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
