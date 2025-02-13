import 'package:flutter/material.dart';


class buildButton extends StatelessWidget {
  String text;
  Color ? color;
  final VoidCallback onClick;

   buildButton({
    super.key,
    required this.text,
     this.color,
     required this.onClick,

  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(24),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              backgroundColor: color??  Colors.grey.shade800,
              foregroundColor: Colors.white,
            ),
            onPressed: onClick, child: Text(text,style: TextStyle(
          fontSize: 24, color: Colors.white,
          fontWeight: FontWeight.bold,
        ),)),
      ),
    );
  }
}