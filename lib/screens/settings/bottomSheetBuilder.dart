import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/main.dart';
import 'package:islami/screens/providers/settingsProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class bottomSheetBuilder extends StatefulWidget {
  @override
  State<bottomSheetBuilder> createState() => _bottomSheetBuilderState();
}

class _bottomSheetBuilderState extends State<bottomSheetBuilder> {
  @override
  Widget build(BuildContext context) {
    String title='';
    var sp = Provider.of<settingsProvider>(context);
    if(sp.currentTheme==ThemeMode.light)title="Light";
    if(sp.currentTheme==ThemeMode.dark)title="Dark";
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
child: Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    InkWell(
        onTap: () {
          sp.setTheme(ThemeMode.light);
        },
        child: getSelectedItem()),
    SizedBox(height: 15),
    InkWell(
        onTap: () {
          sp.setTheme(ThemeMode.dark);
        },
        child: getUnselectedItem()),
  ],
),
    );

  }
  Widget getSelectedItem(){
    return Text(AppLocalizations.of(context)!.light,style: Theme.of(context).textTheme.headline4);

  }
  Widget getUnselectedItem(){
    return Text(AppLocalizations.of(context)!.dark,style: Theme.of(context).textTheme.headline4,);
  }
}
