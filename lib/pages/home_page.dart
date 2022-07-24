// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical/util/category_card.dart';
import 'package:medical/util/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Column(
            children: [
              // app bar

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Olá,", style: TextStyle(fontSize: 18)),
                        SizedBox(height: 4),
                        Text("Ricardo Domene",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20))
                      ],
                    ),

                    // profile picture
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(Icons.person),
                    )
                  ],
                ),
              ),

              SizedBox(height: 25),

              // card -> how do you feel?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.pink[100],
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            child: Lottie.network(
                                "https://assets9.lottiefiles.com/packages/lf20_ecvwbhww.json")),
                        // animation picture
                        SizedBox(width: 20),

                        // how do you feel + get started button
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("How do you feel?",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              SizedBox(height: 12),
                              Text("Fill out your medical card right now",
                                  style: TextStyle(fontSize: 14)),
                              SizedBox(height: 12),
                              Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Colors.deepPurple[300],
                                    borderRadius: BorderRadius.circular(12)),
                                child: Center(
                                    child: Text(
                                  "Get started",
                                  style: TextStyle(color: Colors.white),
                                )),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              ),

              SizedBox(height: 25),

              // search bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12)),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        hintText: "How can we help you?"),
                  ),
                ),
              ),

              SizedBox(height: 25),

              // horizontal lisview -> categories: dentist, surgeon, etc...
              Container(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategoryCard(
                        categoryName: "Farmaceutico",
                        iconImagePath: "lib/icons/icon1.png",
                      ),
                      CategoryCard(
                        categoryName: "Ortopedista",
                        iconImagePath: "lib/icons/icon2.png",
                      ),
                      CategoryCard(
                        categoryName: "Remedios",
                        iconImagePath: "lib/icons/icon3.png",
                      ),
                      SizedBox(width: 25),
                    ],
                  )),

              SizedBox(height: 25),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Doctor list",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text("See all",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500])),
                  ],
                ),
              ),

              SizedBox(height: 25),

              Expanded(
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                DoctorCard(
                  doctorImagePath: "lib/images/doc1.png",
                  doctorName: "Dr. Isabella Trindade",
                  doctorProfession: "Ortopedist",
                  rating: "4.9",
                ),
                DoctorCard(
                  doctorImagePath: "lib/images/doc1.png",
                  doctorName: "Dr. Ruyter Cabral",
                  doctorProfession: "Dentist",
                  rating: "4.9",
                ),
                DoctorCard(
                  doctorImagePath: "lib/images/doc1.png",
                  doctorName: "Dr. Guilherme Freitas",
                  doctorProfession: "General",
                  rating: "4.8",
                ),
                SizedBox(width: 25)
              ]))

              // doctor list
            ],
          ),
        ));
  }
}
