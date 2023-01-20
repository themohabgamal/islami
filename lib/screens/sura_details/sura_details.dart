import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/screens/providers/settingsProvider.dart';
import 'package:islami/screens/sura_details/sura_details_args.dart';
import 'package:islami/screens/sura_details/sura_text.dart';
import 'package:provider/provider.dart';

class suraDetails extends StatefulWidget {
  static const String routeName = "suraDetails";

  @override
  State<suraDetails> createState() => _suraDetailsState();
}
class _suraDetailsState extends State<suraDetails> {
  List<String> suraLine = [];

  @override
  Widget build(BuildContext context) {
    var sp=Provider.of<settingsProvider>(context);
    sura_details_args args =
        ModalRoute.of(context)?.settings.arguments as sura_details_args;
    if(suraLine.isEmpty)readFile(args.index!+1);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/dark_background.png"),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("    سورة ${args.name!}",
              style: Theme.of(context).textTheme.headline4,),
        ),
        body: suraLine.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Card(

              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListView.separated(
                  itemBuilder: (_, index) {
                    return suraText(text: suraLine[index]);
                  },
                  separatorBuilder: (_, index) {
                    return Container(
                      color: sp.currentTheme==ThemeMode.light? MyTheme.primaryColor:MyTheme.yellow,
                      height: 1,
                      margin: EdgeInsets.symmetric(horizontal: 120),
                    );
                  },
                  itemCount: suraLine.length,
                ),
            ),
      ),
    );
  }

  void readFile(int fileIndex) async {
    String suras =
        await rootBundle.loadString('assets/files/$fileIndex.txt');
    List<String> lines = suras.trim().split('\n');
    setState(() {
      suraLine = lines;
    });
  }
}
