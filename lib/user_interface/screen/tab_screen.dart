import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grass_econ/user_interface/components/welcome_bottomsheet.dart';
import 'package:grass_econ/user_interface/screen/wallet_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WalletScreen(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.black, width: 0.1))),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          elevation: 1,
          iconSize: 20,
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bag_fill),
              label: '',
              // backgroundColor: Color(0xFF2F80ED),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.arrow_2_squarepath),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.add),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bars),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings),
              label: '',
            ),
          ],
          onTap: (index) async {
            if (index == 2) {
              showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (_) => WelcomeBottomSheet());
            }
          },
        ),
      ),
    );
  }
}
