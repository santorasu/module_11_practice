import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Widget/AnimeWidget.dart';
import 'Widget/calculatorApp.dart';
import 'Widget/waterTracker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: ThemeData(
              appBarTheme: const AppBarTheme(
                  color: Colors.green,
                  foregroundColor: Colors.white,
                  centerTitle: true,
                  titleTextStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
          debugShowCheckedModeBanner: false,
          title: "Module 11 Practice",
          home: watarTracker(),
        );
      }
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: const Text("Module 11 Practice"),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: const Text("Hello SnackBar"),
                        duration: const Duration(seconds: 5),
                        action:
                            SnackBarAction(label: 'Cancel', onPressed: () {}),
                      ));
                    },
                    child: const Text(
                      "SnackBar",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                          // isDismissible: false,
                          context: context,
                          builder: (context) {
                            return Column(
                              children: [
                                Center(
                                  child: Text("This is Bottom Sheet"),
                                ),
                                Container(
                                  width: 100,
                                  height: 150,
                                  color: Colors.green,
                                )
                              ],
                            );
                          });
                    },
                    child: const Text(
                      "Bottom Sheet",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.blue),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Are you sure?"),
                              content: Text("Delete this file"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Cancel")),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Delete"))
                              ],
                            );
                          });
                    },
                    child: Text("Alart Dialog")),
                SizedBox(height: 5.h,),
                Text("Top Stories",style:
                  TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      AnimeWidget(AnimeName: 'Siha', AnimeImage: 'https://ih1.redbubble.net/image.5265509779.4599/flat,750x,075,f-pad,750x1000,f8f8f8.jpg', AnimeDescription: 'This is Siha',),
                      SizedBox(width: 5.w,),
                      AnimeWidget(AnimeName: 'Anime', AnimeImage: 'https://fydn.imgix.net/m%2Fgen%2Fart-print-std-portrait-p1%2F9e930f5e-32e4-412c-a0b4-91458515d9eb.jpg?auto=format%2Ccompress&q=75', AnimeDescription: 'Hello Anime',),
                      SizedBox(width: 5.w,),
                      AnimeWidget(AnimeName: 'Anime Girls', AnimeImage: 'https://fydn.imgix.net/m%2Fgen%2Fcanvas-std-portrait-p1%2F2f3442a9-89ef-41d1-b13d-cb10a59f071a.jpg?auto=format%2Ccompress&q=75', AnimeDescription: 'Anime Girl With Long Hair 1',),
                      SizedBox(width: 5.w,),
                      AnimeWidget(AnimeName: 'Anime Girls', AnimeImage: 'https://images-ng.pixai.art/images/orig/ab8bb4a6-a699-4f04-a2ec-fb52d612109f', AnimeDescription: 'Beautiful cute cheap anime girl',),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

