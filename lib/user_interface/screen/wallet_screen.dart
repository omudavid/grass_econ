import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grass_econ/user_interface/components/card_item.dart';
import 'package:grass_econ/user_interface/components/card_with_switch.dart';
import 'package:grass_econ/user_interface/components/tab.dart';
import 'package:grass_econ/user_interface/utils/colors.dart';

import '../components/card_bar_item.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int currentIndex = 0;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {
        currentIndex = tabController.index;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.bell,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/images/place_holder.png'),
              radius: 15,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wallet',
              style: TextStyle(color: Colors.grey),
            ),
            Row(
              children: [
                Text(
                  'Mobile Team',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
                Icon(
                  CupertinoIcons.arrow_up_down,
                  color: Colors.grey,
                  size: 14,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CardItem(
                      title: 'Your address',
                      icon: CupertinoIcons.barcode,
                      isSelected: true),
                  CardItem(
                      title: 'Aliases',
                      icon: CupertinoIcons.profile_circled,
                      isSelected: false),
                  CardWithSwitch(title: 'Balance', isSelected: false),
                  CardItem(
                      title: 'Returns',
                      icon: CupertinoIcons.arrow_down_right_arrow_up_left,
                      isSelected: false)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TabBar(
              isScrollable: true,
              controller: tabController,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              tabs: [
                TabItem(isSelected: currentIndex == 0, title: 'Tokens'),
                TabItem(isSelected: currentIndex == 1, title: 'Leasing'),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 35,
                    child: TextField(
                      style: TextStyle(),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        prefixIcon: Icon(
                          CupertinoIcons.search,
                          color: Colors.grey,
                        ),
                        border: getDecoration(),
                        enabledBorder: getDecoration(),
                        disabledBorder: getDecoration(),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.arrow_up_arrow_down,
                    color: Colors.grey,
                    size: 14,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CardBarItem(
              amount: '5.0054',
              icon: CupertinoIcons.check_mark,
              title: 'Waves',
              letter: 'Z',
              color: Colors.blue,
            ),
            CardBarItem(
              amount: '14.04556321',
              icon: CupertinoIcons.arrow_left_right,
              title: 'Pigeon/My Token',
              letter: 'P',
              color: Colors.grey,
            ),
            CardBarItem(
              amount: '199.24',
              icon: CupertinoIcons.check_mark,
              title: 'Waves',
              letter: '\$',
              color: Colors.green,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hidden tokens(2)',
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.arrow_drop_down_rounded,
                  color: Colors.grey,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Suspicious tokens(2)',
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.arrow_drop_down_rounded,
                  color: Colors.grey,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  OutlineInputBorder getDecoration() {
    return OutlineInputBorder(
      borderSide:
          BorderSide(width: 0, style: BorderStyle.none, color: Colors.black),
      borderRadius: BorderRadius.circular(6),
    );
  }
}
