import 'package:flutter/material.dart';
import 'package:memory_box/Screen/HomeScreen.dart';
import 'package:memory_box/Utils/ElevatedButton.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 900,
              width: 700,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/women.png',
                    scale: 1,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Prescription & Dosage tracker",
                    style: TextStyle(
                        fontFamily: 'Productsansmedium',
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Rather than being a solution for a particular problem, our application ensures multiple solutions for other related problems.",
                    style: TextStyle(
                        fontFamily: 'Productsansmedium',
                        color: Colors.white,
                        fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15,),
                  ElevatedButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage()));
                  }, child: Text("LETS GO"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
