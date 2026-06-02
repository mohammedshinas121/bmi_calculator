import 'package:flutter/material.dart';

class Bmi extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(600, 10, 20, 30),
              const Color.fromARGB(600, 10, 20, 30),
              const Color.fromRGBO(600, 10, 20, 30),
              const Color.fromARGB(600, 10, 20, 30),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.centerLeft,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Text(
                "BMI CALCULATOR",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 500,
                width: 400,
                child: Card(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, left: 30, right: 30),
                    child: Column(
                      children: [
                        SizedBox(height: 8),
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.height),
                            fillColor: const Color.fromARGB(255, 124, 112, 112),
                            filled: true,
                            hintText: " HEIGHT",
                            hintStyle: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.line_weight),
                            fillColor: const Color.fromARGB(255, 124, 112, 112),
                            filled: true,
                            hintText: "WEIGHT",
                            hintStyle: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(height: 13),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color.fromARGB(201, 243, 207, 27),
                                Color.fromARGB(255, 230, 230, 22),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          height: 50,
                          width: 400,
                          alignment: Alignment.center,
                          child: Text(
                            "CALCULATE",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
