import 'package:flutter/material.dart';


class Button extends StatelessWidget {

  late final onTap;
  Color? bgColor;
  Color textColor = Colors.white;
  late final String label;

  Button.red({required this.label, this.onTap}){
    bgColor = Colors.red;
  }

  Button.orange({required this.label, this.onTap}) {
    bgColor = Colors.deepOrange;
  }

  Button.blue({required this.label, this.onTap}) {
    bgColor = Colors.blue;
  }

  Button.grey({required this.label, this.onTap}) {
    bgColor = Colors.grey;
    textColor = Colors.black87;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            height: 70,
            width: 70,
            color: bgColor,
            child: Center(
              /*child: TextButton(
                onPressed: null,
                child: Text(
                  label,
                  style: TextStyle(color: textColor, fontSize: 25, height: 1, fontWeight: FontWeight.bold),
                ),
              )*/
              child :Text(
                label,
                style: TextStyle(color: textColor, fontSize: 25, height: 1, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }

}