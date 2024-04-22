import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:memory_box/Screen/HomeScreen.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'CalenderToDo.dart';

class DosageTracker extends StatefulWidget {
  const DosageTracker({Key? key}) : super(key: key);

  @override
  State<DosageTracker> createState() => _DosageTrackerState();
}

class _DosageTrackerState extends State<DosageTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900 ,
        width: 800,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFCE9FFC), // Change this to your desired start color
              Color(0xFF7367F0), // Change this to your desired end color
            ],
          ), // Add border radius
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 50),
              child: Align( // Align the text to the left
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Dosage Tracker',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 30,),
                        IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                        }, icon: Icon(Icons.navigate_before_rounded,color: Colors.black,size: 40,)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29, top: 10),
              child: Align( // Align the text to the left
                alignment: Alignment.centerLeft,
                child: Text(
                  'Dont forget to \ntake your meds !',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 70,
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF432C81), // Change this to your desired start color
                            Color(0xFF0E091B), // Change this to your desired end color
                          ],
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("MON", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                          Text("17th", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 70,
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF432C81), // Change this to your desired start color
                            Color(0xFF0E091B), // Change this to your desired end color
                          ],
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("TUE", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                          Text("18th", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 70,
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF432C81), // Change this to your desired start color
                            Color(0xFF0E091B), // Change this to your desired end color
                          ],
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("WED", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                          Text("19th", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 70,
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF432C81), // Change this to your desired start color
                            Color(0xFF0E091B), // Change this to your desired end color
                          ],
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("THU", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                          Text("20th", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 70,
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF432C81), // Change this to your desired start color
                            Color(0xFF0E091B), // Change this to your desired end color
                          ],
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("FRI", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                          Text("21th", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 70,
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF432C81), // Change this to your desired start color
                            Color(0xFF0E091B), // Change this to your desired end color
                          ],
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("SAT", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                          Text("22th", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 70,
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF432C81), // Change this to your desired start color
                            Color(0xFF0E091B), // Change this to your desired end color
                          ],
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("SUN", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                          Text("22nd", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 70,
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF432C81), // Change this to your desired start color
                            Color(0xFF0E091B), // Change this to your desired end color
                          ],
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("MON", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                          Text("23rd", style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 29, top: 10),
                    child: Align( // Align the text to the left
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Today's Prescription",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 50,),
                  GestureDetector(
                    onTap: (){},
                    child: Icon(
                      Icons.add_box_rounded,
                      size: 40,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: TimelineTile(
                isFirst: true,
                beforeLineStyle: LineStyle(
                    color: Colors.black
                ),
                indicatorStyle: IndicatorStyle(
                    color: Colors.black,
                    iconStyle: IconStyle(
                        iconData: Icons.check,
                        color: Colors.white
                    )
                ),
                endChild: Container(
                  margin: const EdgeInsets.all(25),
                  padding:const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Color(0xFF4285F4),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 1.0, top: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("9:00 - 10:00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                        SizedBox(height: 3,),
                        Text("Paracetamol",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        Row(
                          children: [
                            Icon(Icons.medication_liquid,color: Colors.white,size: 30,),
                            SizedBox(width: 170,),
                            ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              minimumSize: Size(80, 30),
                            ), child: Text("Done",style: TextStyle(color: Colors.white),))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: TimelineTile(
                beforeLineStyle: LineStyle(
                    color: Colors.black
                ),
                indicatorStyle: IndicatorStyle(
                    color: Colors.black,
                    iconStyle: IconStyle(
                        iconData: Icons.check,
                        color: Colors.white
                    )
                ),
                endChild: Container(
                  margin: const EdgeInsets.all(25),
                  padding:const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Color(0xFFEA4335),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 1.0, top: 2), // Add padding
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("9:00 - 10:00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                        SizedBox(height: 3,),
                        Text("Benedryl",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        Row(
                          children: [
                            Icon(Icons.medication_rounded,color: Colors.white,size: 30,),
                            SizedBox(width: 170,),
                            ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              minimumSize: Size(80, 30),
                            ), child: Text("Done",style: TextStyle(color: Colors.white),))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: TimelineTile(
                beforeLineStyle: LineStyle(
                    color: Colors.black
                ),
                indicatorStyle: IndicatorStyle(
                    color: Colors.black,
                    iconStyle: IconStyle(
                        iconData: Icons.check,
                        color: Colors.white
                    )
                ),
                endChild: Container(
                  margin: const EdgeInsets.all(25),
                  padding:const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Color(0xFFFBBC05),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 1.0, top: 2), // Add padding
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("9:00 - 10:00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                        SizedBox(height: 3,),
                        Text("Gasofast",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        Row(
                          children: [
                            Icon(Icons.medication_rounded,color: Colors.white,size: 30,),
                            SizedBox(width: 170,),
                            ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              minimumSize: Size(80, 30),
                            ), child: Text("Done",style: TextStyle(color: Colors.white),))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: TimelineTile(
                isLast: true,
                beforeLineStyle: LineStyle(
                    color: Colors.black
                ),
                indicatorStyle: IndicatorStyle(
                    color: Colors.black,
                    iconStyle: IconStyle(
                        iconData: Icons.check,
                        color: Colors.white
                    )
                ),
                endChild: Container(
                  margin: const EdgeInsets.all(25),
                  padding:const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Color(0xFF34A853),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 1.0, top: 2), // Add padding
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("9:00 - 10:00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                        SizedBox(height: 3,),
                        Text("Gasofast",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        Row(
                          children: [
                            Icon(Icons.medication,color: Colors.white,size: 30,),
                            SizedBox(width: 170,),
                            ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              minimumSize: Size(80, 30),
                            ), child: Text("Done",style: TextStyle(color: Colors.white),))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF432C81), // Change this to your desired start color
              Color(0xFF0E091B), // Change this to your desired end color
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 1.0),
          child: GNav(
            backgroundColor: Colors.transparent,
            gap: 8,
            tabs: [
              GButton(
                icon: Icons.home,
                iconColor: Colors.white,
                iconActiveColor: Colors.white,
                text: "Home",
                textStyle: TextStyle(color: Colors.white),
              ),
              GButton(
                icon: Icons.location_city,
                iconColor: Colors.white,
                iconActiveColor: Colors.white,
                text: "Location",
                textStyle: TextStyle(color: Colors.white),
              ),
              GButton(
                icon: Icons.person,
                iconColor: Colors.white,
                iconActiveColor: Colors.white,
                text: "Profile",
                textStyle: TextStyle(color: Colors.white),
              ),
              GButton(
                icon: Icons.settings,
                iconColor: Colors.white,
                iconActiveColor: Colors.white,
                text: "Settings",
                textStyle: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
