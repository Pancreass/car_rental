// Update this import to match the correct case
import 'package:car_rental/data.models/Car.dart'; // Change from 'car.dart' to 'Car.dart'
import 'package:car_rental/presentation/pages/MapsDetailsPage.dart';
import 'package:car_rental/presentation/widgets/car_card.dart';
import 'package:car_rental/presentation/widgets/more_card.dart';
import 'package:car_rental/presentation/widgets/profile_section.dart';
import 'package:flutter/material.dart';

class CarDetalsPage extends StatefulWidget {
  final Car car;

  const CarDetalsPage({super.key, required this.car});
  @override
  State<CarDetalsPage> createState() => _CarDetalsPageState();
}

class _CarDetalsPageState extends State<CarDetalsPage>
    with SingleTickerProviderStateMixin {
  AnimationController? _Controller;
  Animation<double>? _animation;
  @override
  void initState() {
    _Controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    _animation = Tween<double>(
      begin: 1.0,
      end: 1.5,
    ).animate(_Controller!)
      ..addListener(() {
        setState(() {});
      });
    _Controller!.forward();
    super.initState();
  }

  @override
  void dispose() {
    _Controller!.forward();
    super.dispose();
  }

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
      body: ListView(
        children: [
          CarCard(
            car: Car(
                model: widget.car.model,
                distance: widget.car.distance,
                fuelCapacity: widget.car.fuelCapacity,
                pricePerHour: widget.car.pricePerHour,
                imgURL: widget.car.imgURL),
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
                        ]),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProfileSection(),
                              ),
                            );
                          },
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("assets/user.png"),
                          ),
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
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      //MapsDeatails
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Mapsdetailspage(car: widget.car)),
                      );
                    },
                    child: Container(
                        height: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                spreadRadius: 5,
                              )
                            ]),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Transform.scale(
                              scale: _animation!.value,
                              alignment: Alignment.center,
                              child: Image.asset(
                                "assets/maps.png",
                                fit: BoxFit.cover,
                              ),
                            ))),
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
                      model: widget.car.model,
                      distance: widget.car.distance,
                      fuelCapacity: widget.car.fuelCapacity,
                      pricePerHour: widget.car.pricePerHour,
                      imgURL: widget.car.imgURL), // Add imgURL here
                ),
                SizedBox(
                  height: 5,
                ),
                MoreCard(
                  car: Car(
                      model: widget.car.model,
                      distance: widget.car.distance,
                      fuelCapacity: widget.car.fuelCapacity,
                      pricePerHour: widget.car.pricePerHour,
                      imgURL: widget.car.imgURL), // Add imgURL here
                ),
                SizedBox(
                  height: 5,
                ),
                MoreCard(
                  car: Car(
                      model: widget.car.model,
                      distance: widget.car.distance,
                      fuelCapacity: widget.car.fuelCapacity,
                      pricePerHour: widget.car.pricePerHour,
                      imgURL: widget.car.imgURL), // Add imgURL here
                ),
                SizedBox(
                  height: 5,
                ),
                MoreCard(
                  car: Car(
                      model: widget.car.model,
                      distance: widget.car.distance,
                      fuelCapacity: widget.car.fuelCapacity,
                      pricePerHour: widget.car.pricePerHour,
                      imgURL: widget.car.imgURL), // Add imgURL here
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
