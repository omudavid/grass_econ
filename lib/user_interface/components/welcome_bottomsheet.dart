import 'dart:ui';

import 'package:flutter/material.dart';

class WelcomeBottomSheet extends StatelessWidget {
  const WelcomeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.79,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Container(
                  height: 3,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/high_five.png',
                  color: Colors.white,
                  height: 80,
                ),
                Text(
                  'Hello!',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'y/108001411/Waves-Wallet-Crypto-App',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(elevation: 0),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.file_copy_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Copy'),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(elevation: 0),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.share),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Share'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset('assets/images/qr.png'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Your QR Code',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
