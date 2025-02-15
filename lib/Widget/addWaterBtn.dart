import 'package:flutter/material.dart';

class addWaterBtn extends StatelessWidget {

  final int amount;
  IconData ? icon;

  final VoidCallback onClick;
  addWaterBtn({
    super.key, required this.amount, this.icon, required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
          ),
          onPressed: onClick,
          label: Text(
            "+ ${amount}ml",
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),icon: Icon(icon ?? Icons.water_drop,color: Colors.white,),
        ),
      ),
    );
  }
}