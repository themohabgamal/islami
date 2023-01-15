import 'package:flutter/cupertino.dart';

class suraText extends StatelessWidget {
String text;
suraText({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      alignment: Alignment.center,

      child: Text(text,
      style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,),textAlign: TextAlign.center,
      ),
    );
  }
}
