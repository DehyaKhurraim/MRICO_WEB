import 'package:flutter/material.dart';
import 'package:micro_web/widgets/ProjectPage.dart';
import 'package:micro_web/widgets/body.dart';
import '../ThemeConfig/Colors.dart';
import 'AboutUS.dart';
import 'ContactUs.dart';

class Navbar3 extends StatefulWidget implements PreferredSizeWidget {
  const Navbar3({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  State<Navbar3> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar3> {
  int _selectedLinkIndex = 1;

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
          Row(
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
          SizedBox(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(40, 35, 20, 1.0),
                    Color.fromRGBO(133, 88, 38, 1.0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
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
