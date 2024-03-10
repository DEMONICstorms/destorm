import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feacture/screens/welcomescreen/fundaccount.dart';
import 'package:flutter_application_1/feacture/screens/welcomescreen/home.dart';
import 'package:flutter_application_1/feacture/screens/welcomescreen/profile.dart';
import 'package:flutter_application_1/feacture/screens/welcomescreen/service.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}


class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;


  List<Widget> pages = [Homepage(),Service(),FundAccount(),Profile(),];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: Colors.white30,
        color: Colors.black,
        //animationDuration: const Duration(milliseconds: 500),
        onTap: (int index){
          setState(() {
            currentTabIndex = index;


          });
    },
        items:[
          const Icon(
            Icons.home_outlined,
             color: Colors.white,


          ),
          const Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,

          ),
          const Icon(
            Icons.account_balance_wallet_outlined,
            color: Colors.white,
          ),
          const Icon(
            Icons.person_outlined,
            color: Colors.white,

          )
      ],

      ),
   body : pages[currentTabIndex],
    );
  }
}
