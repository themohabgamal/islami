import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/main.dart';
import 'package:islami/screens/providers/settingsProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class langBottomSheetBuilder extends StatefulWidget {
  @override
  State<langBottomSheetBuilder> createState() => _langBottomSheetBuilderState();
}

class _langBottomSheetBuilderState extends State<langBottomSheetBuilder> {
  @override
  Widget build(BuildContext context) {
    String title='';
    var sp = Provider.of<settingsProvider>(context);
    if(sp.currentLang=='en')title="English";
    if(sp.currentLang=='ar')title="Arabic";
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                sp.changeLange('en');
              },
              child: getSelectedItem()),
          SizedBox(height: 15),
          InkWell(
              onTap: () {
                sp.changeLange('ar');
              },
              child: getUnselectedItem()),
        ],
      ),
    );

  }
  Widget getSelectedItem(){
    return Text(AppLocalizations.of(context)!.english,style: Theme.of(context).textTheme.headline4);

  }
  Widget getUnselectedItem(){
    return Text(AppLocalizations.of(context)!.arabic,style: Theme.of(context).textTheme.headline4,);
  }
}
