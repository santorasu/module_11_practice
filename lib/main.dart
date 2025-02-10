import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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
          home: HomePage(),
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
                      Container(
                        height: 30.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network("https://cdn.class101.net/images/9ec391ea-ceeb-4d46-93c6-9b36163430cb"),
                            Text("Anime Girls"),
                            SizedBox(height: 1.h,),
                            Text("ami tmr moner vitor ekbar ghure aste chai.. ")
                          ],
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        height: 30.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network("https://cdn.class101.net/images/9ec391ea-ceeb-4d46-93c6-9b36163430cb"),
                            Text("Anime Girls"),
                            SizedBox(height: 1.h,),
                            Text("ami tmr moner vitor ekbar ghure aste chai.. ")
                          ],
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        height: 30.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network("https://cdn.class101.net/images/9ec391ea-ceeb-4d46-93c6-9b36163430cb"),
                            Text("Anime Girls"),
                            SizedBox(height: 1.h,),
                            Text("ami tmr moner vitor ekbar ghure aste chai.. ")
                          ],
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Container(
                        height: 30.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network("https://cdn.class101.net/images/9ec391ea-ceeb-4d46-93c6-9b36163430cb"),
                            Text("Anime Girls"),
                            SizedBox(height: 1.h,),
                            Text("ami tmr moner vitor ekbar ghure aste chai.. ")
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
