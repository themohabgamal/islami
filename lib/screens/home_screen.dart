import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/screens/hadeth/hadeth_screen.dart';
import 'package:islami/screens/quran_screen.dart';
import 'package:islami/screens/radio_screen.dart';
import 'package:islami/screens/sebha_screen.dart';

class homeScreen extends StatefulWidget {
static const String routeName="home";

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(image: AssetImage("assets/images/background.png"),fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("islami",style: TextStyle(fontSize: 32,color: Colors.black,fontWeight: FontWeight.w500)),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedIndex=value;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran.png")),label: "quran"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/hadeth.png")),label: "hadeth"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha.png")),label: "tasbeh"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/radio.png")),label: "radio"),
          ],
        ),
        body:screens[selectedIndex] ,
      ),
    );
  }

  List<Widget>screens=[quranScreen(),hadethScreen(),sebhaScreen(),radioScreen()];
}
