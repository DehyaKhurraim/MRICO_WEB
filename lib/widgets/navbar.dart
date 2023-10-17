import 'package:flutter/material.dart';
import 'package:micro_web/widgets/PostAd.dart';
import 'package:micro_web/widgets/ProjectPage.dart';
import 'package:micro_web/widgets/login.dart';
import '../ThemeConfig/Colors.dart';
import 'AboutUS.dart';
import 'ContactUs.dart';
import 'body.dart';

class Navbar extends StatefulWidget implements PreferredSizeWidget {
  Navbar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedLinkIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/logo.png',
              height: 50,
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(width: 8.0),
                _buildLink('Home', 0),
                const SizedBox(width: 26.0),
                _buildLink('About Us', 1),
                const SizedBox(width: 26.0),
                _buildLink('Projects', 2),
                const SizedBox(width: 26.0),
                _buildLink('Contact Us', 3),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return PostAd();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: ktriColor.withOpacity(0.3),
            ),
            child: const Text(
              'Post Ad',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  Widget _buildLink(String title, int index) {
    bool isSelected = index == _selectedLinkIndex;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedLinkIndex = index;
        });

        switch (index) {
          case 0:
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const BodyContent()));

            break;
          case 1:
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AboutUsPage()));

            break;
          case 2:
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProjectsPage()));

            break;
          case 3:
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ContactUsPage()));

            break;
          default:
            break;
        }
      },
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? ktriColor : Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
