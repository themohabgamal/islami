import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/screens/sura_details/sura_details_args.dart';

class suraDetails extends StatelessWidget {
static const String routeName="suraDetails";
  @override
  Widget build(BuildContext context) {
    sura_details_args args=ModalRoute.of(context)?.settings.arguments as sura_details_args;
    return Container(
        decoration: BoxDecoration(
        image:DecorationImage(image: AssetImage("assets/images/background.png"),fit: BoxFit.fill),
    ),
    child: Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppBar(
    title: Text("islami",style: TextStyle(fontSize: 32,color: Colors.black,fontWeight: FontWeight.w500)),
    centerTitle: true,),

    ),
    );
  }
}
