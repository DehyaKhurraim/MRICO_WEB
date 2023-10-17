import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../ThemeConfig/Colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/Logo.png',
            height: 50,
          ),
          const Text(
            '© 2023 Your Company. All rights reserved.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          Row(
            children: const [
              CircleAvatar(
                backgroundColor: ktriColor,
                radius: 15,
                child: FaIcon(
                  FontAwesomeIcons.facebookF,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              SizedBox(width: 10),
              CircleAvatar(
                backgroundColor: ktriColor,
                radius: 15,
                child: FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              SizedBox(width: 10),
              CircleAvatar(
                backgroundColor: ktriColor,
                radius: 15,
                child: FaIcon(
                  FontAwesomeIcons.instagram,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
