import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class suraText extends StatelessWidget {
String text;
suraText({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      alignment: Alignment.center,

      child: Text(text,
      style: Theme.of(context).textTheme.headline4,textAlign: TextAlign.center,
      ),
    );
  }
}
