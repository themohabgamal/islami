import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/screens/hadeth/hadeth_details_args.dart';
import 'package:islami/screens/hadeth/hadeth_name_builder.dart';
import 'package:islami/screens/providers/settingsProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class hadethScreen extends StatefulWidget {
  static const String routeName = "hadeth";

  @override
  State<hadethScreen> createState() => _hadethScreenState();
}

class _hadethScreenState extends State<hadethScreen> {
  List<hadeth_details_args> allHadethList = [];

  @override
  Widget build(BuildContext context) {
    var sp = Provider.of<settingsProvider>(context);
    if(allHadethList.isEmpty)readFile();
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 2,
              child: Image(
                image: AssetImage('assets/images/hadeth_header.png'),)),
          Container(height: 2, color: sp.currentTheme==ThemeMode.light? MyTheme.primaryColor:MyTheme.yellow,),
          Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(AppLocalizations.of(context)!.ahadeth,
                  style: Theme.of(context).textTheme.headline4,
                  textAlign: TextAlign.center)),
          Container(height: 2, color: sp.currentTheme==ThemeMode.light? MyTheme.primaryColor:MyTheme.yellow,),
          Expanded(
              flex: 3, child: ListView.separated(itemBuilder: (context, index) {
            return hadeth_name_builder(title: allHadethList[index].title,content: allHadethList[index].content);
          },
              separatorBuilder: (context, index) {
                return Container(color: sp.currentTheme==ThemeMode.light? MyTheme.primaryColor:MyTheme.yellow,
                  height: 1,
                  margin: EdgeInsets.symmetric(horizontal: 120),);
              },
              itemCount: allHadethList.length))
        ],
      ),
    );
  }

void readFile() async {
    List<hadeth_details_args> hadethList = [];
    String ahadeth = await rootBundle.loadString(
        "assets/files/ahadeth .txt") as String;
    List<String>allHadeth = ahadeth.split('#');
    for (int i = 0; i < allHadeth.length; i++) {
      String singleHadeth = allHadeth[i].trim();
      List<String> hadethLines = singleHadeth.trim().split("\n");
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      String content = hadethLines.join("\n");
      hadeth_details_args Hadeth = hadeth_details_args(title: title, content: content);
      hadethList.add(Hadeth);
    }
    allHadethList = hadethList;
    setState(() {

    });
  }
}
