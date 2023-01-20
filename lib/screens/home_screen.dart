import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/screens/hadeth/hadeth_screen.dart';
import 'package:islami/screens/providers/settingsProvider.dart';
import 'package:islami/screens/sura_details/quran_screen.dart';
import 'package:islami/screens/radio_screen.dart';
import 'package:islami/screens/sebha/sebha_screen.dart';
import 'package:islami/screens/settings/settings_screen.dart';
import 'package:provider/provider.dart';

class homeScreen extends StatefulWidget {
static const String routeName="home";

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    var sp=Provider.of<settingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(image: AssetImage(
            sp.currentTheme==ThemeMode.light?
            "assets/images/background.png"
                : "assets/images/dark_background.png"
        ),fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("islami",style: Theme.of(context).textTheme.headline4),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedIndex=value;
            });
          },
          currentIndex: selectedIndex,
          items: const [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran.png")),label: "quran"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/hadeth.png")),label: "hadeth"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha.png")),label: "tasbeh"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/radio.png")),label: "radio"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings"),
          ],
        ),
        body:screens[selectedIndex] ,
      ),
    );
  }

  List<Widget>screens=[quranScreen(),hadethScreen(),sebhaScreen(),radioScreen(),settingsScreen()];
}
