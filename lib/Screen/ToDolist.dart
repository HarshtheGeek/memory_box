import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:memory_box/Screen/HomeScreen.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'CalenderToDo.dart';

class Todolist extends StatefulWidget {
  const Todolist({Key? key}) : super(key: key);

  @override
  State<Todolist> createState() => _TodolistState();
}

class _TodolistState extends State<Todolist> {
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
                          'Hey Pranjali!',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 90,),
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
                  'You have got 4 \ntasks pending today',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(27),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  hintText: 'Search your task',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.black, width: 2.0), // Increase the border thickness here
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.black, width: 2.0), // Increase the border thickness here
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.black, width: 2.0), // Increase the border thickness here
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 30,// Set width to match screen width
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFBBC05),
                    ),
                    child: Text("Ongoing",style: TextStyle(color: Colors.white),),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: Text("Upcoming",style: TextStyle(color: Colors.white),),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CalenderTodo()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:Colors.black,
                    ),
                    child: Text("Calendar",style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
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
                  margin: const EdgeInsets.all(10),
                  padding:const EdgeInsets.all(10),
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
                        Text("Make your bed",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        Row(
                          children: [
                            Text("1:00 hrs",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            SizedBox(width: 210,),
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
                  margin: const EdgeInsets.all(10),
                  padding:const EdgeInsets.all(10),
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
                        Text("11:00 - 12:00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                        SizedBox(height: 3,),
                        Text("Go for a walk",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        Row(
                          children: [
                            Text("1:30 hrs",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            SizedBox(width: 210,),
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
                  margin: const EdgeInsets.all(10),
                  padding:const EdgeInsets.all(10),
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
                        Text("12:00 - 1:00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                        SizedBox(height: 3,),
                        Text("Gamified Training",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        Row(
                          children: [
                            Text("1:00 hrs",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            SizedBox(width: 210,),
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
                  margin: const EdgeInsets.all(10),
                  padding:const EdgeInsets.all(10),
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
                        Text("Meditation Yoga",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        Row(
                          children: [
                            Text("2:00 hrs",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            SizedBox(width: 210,),
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
