import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  CustomButton(
 this.callback,
 this.text
  );
  final VoidCallback callback;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Material(
        color: Colors.blue,
         elevation: 6,
         borderRadius: BorderRadius.circular(30),
         child: MaterialButton(onPressed: callback,
         child: Text(text),
         minWidth: 200.0,
         height: 45.0,
         ),
      ),
    );
  }
}