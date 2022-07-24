// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {

  final iconImagePath;
  final String categoryName;

  const CategoryCard({super.key, required this.iconImagePath, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.deepPurple[100]),
        child: Row(children: [
          Image.asset(iconImagePath, height: 40),
          SizedBox(width: 20),
          Text("Dentist")
        ]),
      ),
    );
  }
}
