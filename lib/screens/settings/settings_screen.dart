import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';

import 'bottomSheetBuilder.dart';

class settingsScreen extends StatefulWidget {
  @override
  State<settingsScreen> createState() => _settingsScreenState();
}

class _settingsScreenState extends State<settingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Theme",
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
                padding: EdgeInsets.all(12),
                child:
                    Text("Light", style: Theme.of(context).textTheme.headline6),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: MyTheme.yellow),
                    borderRadius: BorderRadius.circular(18))),
          ),
          //----------------------- language dialog ------------------------
          SizedBox(
            height: 20,
          ),
          Text(
            "Language",
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: 5,
          ),
          Container(
              padding: EdgeInsets.all(12),
              child:
                  Text("English", style: Theme.of(context).textTheme.headline6),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: MyTheme.yellow),
                  borderRadius: BorderRadius.circular(18))),
        ],
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return bottomSheetBuilder();
      },
    );
  }
}
