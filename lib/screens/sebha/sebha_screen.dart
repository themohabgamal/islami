import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';

import '../providers/settingsProvider.dart';

class sebhaScreen extends StatefulWidget {
  static const String routeName = "sebha";

  @override
  State<sebhaScreen> createState() => _sebhaScreenState();
}
class _sebhaScreenState extends State<sebhaScreen> {
  int counter = 0;
  List<String> slang = ["سبحان الله", "الحمدلله", "الله اكبر","لا اله الا الله"];
  @override
  Widget build(BuildContext context) {
    var sp=Provider.of<settingsProvider>(context);
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          InkWell(
              onTap: () {
                setState(() {
                  counter++;
                });
              },
              child: Image(image: sp.currentTheme==ThemeMode.light?
              AssetImage("assets/images/masbaha.png"):
              AssetImage("assets/images/masbaha_dark.png"))
              ),
          SizedBox(height: 18,),
          Text(
            "Tasbeh Count",
            style: Theme
                .of(context)
                .textTheme
                .headline4,
          ),
          SizedBox(height: 18,),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: Container(
                padding: EdgeInsets.all(15),
                color: sp.currentTheme==ThemeMode.light? MyTheme.primaryColor:MyTheme.blue,
                child: Text("$counter", style: sp.currentTheme==ThemeMode.light? TextStyle(
                    fontSize: 23, fontWeight: FontWeight.w500):Theme.of(context).textTheme.headline4,)),
          ),
          SizedBox(height: 18,),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: Container(
                padding: EdgeInsets.all(15),
                color: sp.currentTheme==ThemeMode.light? MyTheme.primaryColor:MyTheme.yellow,
                child: Text(slangDisplay(counter), style: TextStyle(
                    fontSize: 23, fontWeight: FontWeight.w500),)),
          ),
        ],
      ),
    );
  }
  String slangDisplay(int count){
    if(count<=25)return slang[0];
    else if(count<=50 && count >25)return slang[1];
    else if(count<=75 && count >50)return slang[2];
    else{
      return slang[3];
    }
    
  }
}
