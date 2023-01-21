import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/screens/providers/settingsProvider.dart';
import 'package:provider/provider.dart';

import 'bottomSheetBuilder.dart';
import 'langBottomSheetBuilder.dart';

class settingsScreen extends StatefulWidget {
  @override
  State<settingsScreen> createState() => _settingsScreenState();
}

class _settingsScreenState extends State<settingsScreen> {
  @override
  Widget build(BuildContext context) {
    var sp=Provider.of<settingsProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
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
                    Text(sp.currentTheme==ThemeMode.light?AppLocalizations
                        .of(context)!.light:AppLocalizations.of(context)!.dark, style: Theme.of(context).textTheme.headline6),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: MyTheme.yellow),
                    borderRadius: BorderRadius.circular(18))),
          ),
          //----------------------- language dialog ------------------------
          SizedBox(
            height: 20,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              showLangBottomSheet();
            },
            child: Container(
                padding: EdgeInsets.all(12),
                child:
                    Text(sp.currentLang=='en'?AppLocalizations.of(context)!.english:AppLocalizations.of(context)!.arabic, style: Theme.of(context).textTheme.headline6),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: MyTheme.yellow),
                    borderRadius: BorderRadius.circular(18))),
          ),
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
  void showLangBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return langBottomSheetBuilder();
      },
    );
  }
}
