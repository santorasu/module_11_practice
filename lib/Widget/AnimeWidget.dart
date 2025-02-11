import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AnimeWidget extends StatelessWidget {

  final String AnimeName, AnimeImage, AnimeDescription;
  const AnimeWidget({
    super.key, required this.AnimeName, required this.AnimeImage, required this.AnimeDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Image.network(AnimeImage,height: 20.h,width: 50.w,),
          Text(AnimeName),
          SizedBox(height: 1.h,),
          Text(AnimeDescription)
        ],
      ),
    );
  }
}
