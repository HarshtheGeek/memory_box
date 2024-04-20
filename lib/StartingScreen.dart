import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:memory_box/Utils/Colors.dart';

import 'Utils/Utils.dart';

class StartingScreen extends GetView {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    var width = Config.screenWidth;
    var height = Config.screenHeight;
    return Scaffold(
      body: Container(
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors:linearColor,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: 60,),
            const Text("Memory Box",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
            const CircleAvatar(
              radius: 80,
              backgroundColor: Color.fromRGBO(67, 44, 129, 1.0),
              backgroundImage: AssetImage("assets/logo.png"),
            ),
            const SizedBox(height: 30,),
             Align(
               alignment: Alignment.bottomCenter,
               child: Column(
                children: [
                  SizedBox(
                    width: width! / 2,
                    height: 45,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                widgetColor)),
                        child: const Text(
                          "Get Started",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  const SizedBox(height: 50,),
                  const Text("By Signing in you agree to the",style: TextStyle(color: Colors.black),),
                  Text("Terms and conditions, Privacy policy",style:TextStyle(color: widgetColor)),
                  const SizedBox(height: 10,),
                  SizedBox(
                      width: width / 3,
                      height: 7,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                widgetColor)),
                        child:Container(),
                      )),
                  const SizedBox(height: 8,),
                ],
                           ),
             ),
          ],
        ),
      ),
    );
  }
}
