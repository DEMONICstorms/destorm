import 'package:flutter/material.dart';
import 'package:flutter_application_1/feacture/screens/onboardedscreen/onboardedscreen.dart';

import './utils/theme/theme.dart';
import 'feacture/screens/welcomescreen/bottomnav.dart';

main() async {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Apptheme.lightheme,
      darkTheme: Apptheme.darktheme,
      themeMode: ThemeMode.light,
      home: const Onboardedscreen(),
       );
  }
}

/*class Apphome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          "Demonic Storm",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(30, 25, 50, 70),
      ),
      body: Onboardedscreen(),
    );
  }
}*/
