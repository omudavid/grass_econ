import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWithSwitch extends StatelessWidget {
  const CardWithSwitch({
    Key? key,
    required this.title,
    required this.isSelected,
  }) : super(key: key);

  final String title;

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Card(
        color: isSelected ? Colors.blueAccent : Colors.white,
        child: Container(
          margin: EdgeInsets.all(10),
          height: 60,
          width: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Transform.scale(
                  scale: 0.6,
                  child: CupertinoSwitch(
                    value: true,
                    onChanged: (value) {},
                    activeColor: Colors.blueAccent,
                  )),
              Text(
                title,
                style:
                    TextStyle(color: isSelected ? Colors.white : Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
