import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/screens/sura_details/sura_details.dart';
import 'package:islami/screens/sura_details/sura_details_args.dart';

class suraNameBuilder extends StatelessWidget {
String title;
int index;
suraNameBuilder({required this.title,required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context,suraDetails.routeName,arguments:sura_details_args(name: title, index: index));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(title,style: Theme.of(context).textTheme.headline4
        ),),
    );
  }
}
