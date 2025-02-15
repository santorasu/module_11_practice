import 'package:flutter/material.dart';

import 'addWaterBtn.dart';

class watarTracker extends StatefulWidget {
  const watarTracker({super.key});

  @override
  State<watarTracker> createState() => _watarTrackerState();
}

class _watarTrackerState extends State<watarTracker> {
  int _currentintake = 0;
  final int _goal = 2000;

  void _waterAdd(int amount){
   setState(() {
     if(_currentintake < _goal){
       _currentintake = (_currentintake + amount).clamp(0, _goal);
     }
   });
  }

  void resetWater(){
    setState(() {
      _currentintake = 0;
    });
  }
  @override
  Widget build(BuildContext context) {

    double progress = (_currentintake / _goal).clamp(0, 1);
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: const Text(
          "Water Tracker",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue.withOpacity(0.2), spreadRadius: 2)
                  ]),
              child: Column(
                children: [
                  const Text(
                    "Today's InTake",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "$_currentintake ml",
                    style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  child: CircularProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.grey.shade500,
                    color: Colors.blueAccent,
                    strokeWidth: 10,
                  ),
                ),
                Text(
                  "${(progress * 100).toInt()} %",
                  style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Wrap(
              spacing: 15,
              children: [
                addWaterBtn(amount: 200, icon: Icons.local_drink, onClick: () =>_waterAdd(200),),
                addWaterBtn(amount: 500, onClick: () =>_waterAdd(500),),
                addWaterBtn(amount: 1000, icon: Icons.local_cafe, onClick: () =>_waterAdd(1000),),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    onPressed: () => resetWater(),
                    child: const Text(
                      "Reset",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
