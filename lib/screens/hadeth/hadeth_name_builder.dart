import 'package:flutter/material.dart';
import 'package:islami/screens/hadeth/hadeth_details.dart';
import 'package:islami/screens/hadeth/hadeth_details_args.dart';

class hadeth_name_builder extends StatelessWidget {
String title;
String content;
hadeth_name_builder({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context,hadethDetails.routeName,arguments:hadeth_details_args(title: title,content: content));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(title,style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 24,
        ),),
      ),
    );
  }
}
