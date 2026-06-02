import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bmi extends StatefulWidget {
  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  TextEditingController hcontroller = TextEditingController();

  TextEditingController wcontroller = TextEditingController();

  String result = "";

  void CALCULATE() {
    double h = double.parse(hcontroller.text) / 100;
    double w = double.parse(wcontroller.text);
    double bmi = w / (h * h);
    setState(() {
      result = "your bmi is ${bmi.toStringAsFixed(2)}";
    });
  }

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
              SizedBox(
                height: 149,
              ),
              Text(
                "BMI CALCULATOR",
                style: GoogleFonts.abrilFatface(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 350,
                width: 400,
                child: Card(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, left: 30, right: 30),
                    child: Column(
                      children: [
                        SizedBox(height: 8),
                        TextField(
                          controller: hcontroller,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.height),
                            fillColor: const Color.fromARGB(255, 124, 112, 112),
                            filled: true,
                            hintText: " HEIGHT(cm)",
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
                          controller: wcontroller,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.line_weight),
                            fillColor: const Color.fromARGB(255, 124, 112, 112),
                            filled: true,
                            hintText: "WEIGHT(kg)",
                            hintStyle: GoogleFonts.aDLaMDisplay(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(height: 13),
                        GestureDetector(
                          onTap: () => CALCULATE(),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  const Color.fromARGB(201, 243, 207, 27),
                                  Color.fromARGB(255, 230, 230, 22),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            height: 50,
                            width: 400,
                            alignment: Alignment.center,
                            child: Text(
                              "CALCULATE",
                              style: GoogleFonts.abhayaLibre(fontSize: 30),
                            ),
                          ),
                        ),
                        Text(result),
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
