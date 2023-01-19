import 'package:flutter/material.dart';

import '../../my_theme.dart';
import 'hadeth_details_args.dart';

class hadethDetails extends StatelessWidget {
  static const String routeName = 'hadeth';

  @override
  Widget build(BuildContext context) {
    hadeth_details_args args =
    ModalRoute
        .of(context)
        ?.settings
        .arguments as hadeth_details_args;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/dark_background.png"),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(args.title,
              style: Theme.of(context).textTheme.headline4),
          centerTitle: true,
        ),
        body: Card(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            child: Text(args.content,style: Theme.of(context).textTheme.headline6,textAlign: TextAlign.center,),
          ),
          ),
        ),
    )
    ;
  }
}