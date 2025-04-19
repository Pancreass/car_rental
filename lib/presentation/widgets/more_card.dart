import 'package:car_rental/data.models/car.dart';
import 'package:flutter/material.dart';

class MoreCard extends StatelessWidget {
  final Car car;

  const MoreCard({super.key, required this.car}); // Mengubah tipe data 'car' menjadi 'Car' dan menambahkan 'required' untuk mengindikas

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                car.model,
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Icon(Icons.directions_car, color: Colors.white, size: 16,),
                  SizedBox(width: 5,),
                  Text("${car.distance}km"),
                ],
              )
            ],
            
          ),
          Icon(Icons.arrow_forward_ios, color: Colors.white,size: 24,)
        ],
      ),
    );
  }
}