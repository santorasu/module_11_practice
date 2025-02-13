import 'package:flutter/material.dart';

class watarTracker extends StatefulWidget {
  const watarTracker({super.key});

  @override
  State<watarTracker> createState() => _watarTrackerState();
}

class _watarTrackerState extends State<watarTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text(
          "Water Tracker",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20) ,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.2),
                    spreadRadius: 2
                  )
                ]
              ),
              child: Column(
                children: [
                  Text(
                    "Today's InTake",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "1000",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: CircularProgressIndicator(
                    value: 0.75,
                    backgroundColor: Colors.grey.shade500,
                    color: Colors.blueAccent,
                    strokeWidth: 10,

                  ),
                ),
                Text("70 %",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                SizedBox(height: 30,),

              ],
            )
          ],
        ),
      ),
    );
  }
}
