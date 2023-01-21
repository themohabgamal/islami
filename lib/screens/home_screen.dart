import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/screens/hadeth/hadeth_screen.dart';
import 'package:islami/screens/providers/settingsProvider.dart';
import 'package:islami/screens/sura_details/quran_screen.dart';
import 'package:islami/screens/sebha/sebha_screen.dart';
import 'package:islami/screens/settings/settings_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
          title: Text(AppLocalizations.of(context)!.app_title,style: Theme.of(context).textTheme.headline4),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedIndex=value;
            });
          },
          currentIndex: selectedIndex,
          items:  [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran.png")),label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/hadeth.png")),label: AppLocalizations.of(context)!.hadeth),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha.png")),label: AppLocalizations.of(context)!.tasbeh),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label:AppLocalizations.of(context)!.settings),
          ],
        ),
        body:screens[selectedIndex] ,
      ),
    );
  }

  List<Widget>screens=[quranScreen(),hadethScreen(),sebhaScreen(),settingsScreen()];
}
