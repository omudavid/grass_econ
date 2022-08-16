import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardBarItem extends StatelessWidget {
  const CardBarItem(
      {Key? key,
      required this.title,
      required this.amount,
      required this.letter,
      required this.icon,
      required this.color})
      : super(key: key);

  final String title;
  final String amount;
  final String letter;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 60,
        padding: EdgeInsets.all(10),
        width: double.infinity,
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  child: Text(
                    letter,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 15,
                      width: 15,
                      child: Center(
                        child: Icon(
                          icon,
                          size: 10,
                        ),
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ))
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Text(
                  amount,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
