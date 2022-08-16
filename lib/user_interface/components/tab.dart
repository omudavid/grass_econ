import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  const TabItem({Key? key, required this.isSelected, required this.title})
      : super(key: key);

  final bool isSelected;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          Container(
            color: isSelected ? Colors.blueAccent : Colors.transparent,
            height: 3,
            width: 15,
          ),
        ],
      ),
    );
  }
}
