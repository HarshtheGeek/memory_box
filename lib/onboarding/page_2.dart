import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

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
                    'assets/night.png',
                    scale: 1,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Progress Tracker",
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
                    "Empowering app for Alzheimer's! Simple interface, voice control, & reminders aid memory. GPS tracking & virtual fences ensure safety. Video calls & memory albums connect patients to loved ones.",
                    style: TextStyle(
                        fontFamily: 'Productsansmedium',
                        color: Colors.white,
                        fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
