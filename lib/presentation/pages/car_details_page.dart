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
                        InkWell(
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
                            backgroundImage: AssetImage("assets/Onkar_Sir.jpg"),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Onkar Sir",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "\₹4,253",
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
                  child: InkWell(
                    onTap: () {
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
                if (widget.car.model != "Toyota Innova")
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CarDetalsPage(
                            car: Car(
                                model: "Toyota Innova",
                                distance: 920,
                                fuelCapacity: 45,
                                pricePerHour: 220,
                                imgURL: "assets/innova.png"),
                          ),
                        ),
                      );
                    },
                    child: MoreCard(
                      car: Car(
                          model: "Toyota Innova",
                          distance: 920,
                          fuelCapacity: 45,
                          pricePerHour: 220,
                          imgURL: "assets/innova.png"),
                    ),
                  ),
                SizedBox(height: 5),
                if (widget.car.model != "Mahindra Thar")
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CarDetalsPage(
                            car: Car(
                                model: "Mahindra Thar",
                                distance: 750,
                                fuelCapacity: 57,
                                pricePerHour: 280,
                                imgURL: "assets/thar.png"),
                          ),
                        ),
                      );
                    },
                    child: MoreCard(
                      car: Car(
                          model: "Mahindra Thar",
                          distance: 750,
                          fuelCapacity: 57,
                          pricePerHour: 280,
                          imgURL: "assets/thar.png"),
                    ),
                  ),
                SizedBox(height: 5),
                if (widget.car.model != "Maruti Ertiga")
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CarDetalsPage(
                            car: Car(
                                model: "Maruti Ertiga",
                                distance: 680,
                                fuelCapacity: 45,
                                pricePerHour: 180,
                                imgURL: "assets/ertiga.png"),
                          ),
                        ),
                      );
                    },
                    child: MoreCard(
                      car: Car(
                          model: "Maruti Ertiga",
                          distance: 680,
                          fuelCapacity: 45,
                          pricePerHour: 180,
                          imgURL: "assets/ertiga.png"),
                    ),
                  ),
                SizedBox(height: 5),
                if (widget.car.model != "Mahindra XUV700")
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CarDetalsPage(
                            car: Car(
                                model: "Mahindra XUV700",
                                distance: 890,
                                fuelCapacity: 60,
                                pricePerHour: 290,
                                imgURL: "assets/Mahindra.png"),
                          ),
                        ),
                      );
                    },
                    child: MoreCard(
                      car: Car(
                          model: "Mahindra XUV700",
                          distance: 890,
                          fuelCapacity: 60,
                          pricePerHour: 290,
                          imgURL: "assets/Mahindra.png"),
                    ),
                  ),
                SizedBox(height: 5),
                if (widget.car.model != "Toyota Fortuner")
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CarDetalsPage(
                            car: Car(
                                model: "Toyota Fortuner",
                                distance: 870,
                                fuelCapacity: 50,
                                pricePerHour: 270,
                                imgURL: "assets/fortuner.png"),
                          ),
                        ),
                      );
                    },
                    child: MoreCard(
                      car: Car(
                          model: "Toyota Fortuner",
                          distance: 870,
                          fuelCapacity: 50,
                          pricePerHour: 270,
                          imgURL: "assets/fortuner.png"),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
