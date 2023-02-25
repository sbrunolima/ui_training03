import 'package:flutter/material.dart';
import 'package:enefty_icons/enefty_icons.dart';

//Screens
import '../screens/home_screen.dart';
import '../screens/wallet_screen.dart';

class StartScreen extends StatefulWidget {
  static const routeName = 'start-screen';
  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int pageIndex = 0;

  final screens = [
    HomeScreen(),
    WalletScreen(),
    WalletScreen(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: screens[pageIndex],
      bottomNavigationBar: SizedBox(
        height: 120,
        child: Column(
          children: [
            BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              currentIndex: 1,
              onTap: (value) {
                setState(() {
                  pageIndex = value;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      SizedBox(height: pageIndex == 0 ? 0 : 30),
                      ClipRRect(
                        child: CircleAvatar(
                          radius: pageIndex == 0 ? 30 : 24,
                          backgroundColor: pageIndex == 0
                              ? Colors.lightBlue.shade200
                              : Colors.white24,
                          child: Icon(
                            EneftyIcons.home_outline,
                            color: pageIndex == 0 ? Colors.black : Colors.white,
                            size: pageIndex == 0 ? 30 : 24,
                          ),
                        ),
                      ),
                      SizedBox(height: pageIndex == 0 ? 20 : 0),
                    ],
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      SizedBox(height: pageIndex == 1 ? 0 : 30),
                      ClipRRect(
                        child: CircleAvatar(
                          radius: pageIndex == 1 ? 30 : 24,
                          backgroundColor: pageIndex == 1
                              ? Colors.lightBlue.shade200
                              : Colors.white24,
                          child: Icon(
                            EneftyIcons.wallet_3_outline,
                            color: pageIndex == 0 ? Colors.black : Colors.white,
                            size: pageIndex == 1 ? 30 : 24,
                          ),
                        ),
                      ),
                      SizedBox(height: pageIndex == 1 ? 20 : 0),
                    ],
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      SizedBox(height: pageIndex == 2 ? 0 : 30),
                      ClipRRect(
                        child: CircleAvatar(
                          radius: pageIndex == 2 ? 30 : 24,
                          backgroundColor: pageIndex == 2
                              ? Colors.lightBlue.shade200
                              : Colors.white24,
                          child: Icon(
                            EneftyIcons.profile_outline,
                            color: pageIndex == 0 ? Colors.black : Colors.white,
                            size: pageIndex == 2 ? 30 : 24,
                          ),
                        ),
                      ),
                      SizedBox(height: pageIndex == 2 ? 20 : 0),
                    ],
                  ),
                  label: '',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
