import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/map.dart';
import '../widgets/header.dart';
import '../widgets/footer.dart';
import '../ThemeConfig/Colors.dart';

class BodyContent extends StatefulWidget {
  const BodyContent({super.key});

  @override
  _BodyContentState createState() => _BodyContentState();
}

class _BodyContentState extends State<BodyContent> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            const Maps(),
            Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 50.0),
                padding: const EdgeInsets.symmetric(
                    vertical: 25.0, horizontal: 50.0),
                color: AppColor.yellow.withOpacity(0.2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(text: 'Most Popular Locations for Flats\n'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black),
                                children: [
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: 'Lahore\n\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Askari(572)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Bharia Town(547)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Raiwind Road(293)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Gulberg(212)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Bharia Orchid(189)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'DHA Defence(138)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Main Canal Bank Road(43)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Shanghai Road(37)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black),
                                children: [
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: 'Karachi\n\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'DHA Defence(1,660)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Bharia Town Karachi(1,478)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Gulshan-e-Iqbal Town(1,069)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Gulistan-e-Jauhar(977)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Cantt(946)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Scheme 33(138)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'North Nazimabad(480)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Clifton(531)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black),
                                children: [
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: 'Islamabad\n\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'DHA Defence(902)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'B-17(469)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Bharia Town(407)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Mumtaz City(402)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Gulberg(372)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'E-11(358)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Top City(312)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'H-13(301)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
            Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 50.0),
                padding: const EdgeInsets.symmetric(
                    vertical: 25.0, horizontal: 50.0),
                color: AppColor.sky.withOpacity(0.2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(text: 'Most Popular Locations for Houses\n'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black),
                                children: [
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: 'Lahore\n\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Askari(572)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Bharia Town(547)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Raiwind Road(293)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Gulberg(212)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Bharia Orchid(189)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'DHA Defence(138)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Main Canal Bank Road(43)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Shanghai Road(37)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black),
                                children: [
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: 'Karachi\n\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'DHA Defence(1,660)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Bharia Town Karachi(1,478)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Gulshan-e-Iqbal Town(1,069)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Gulistan-e-Jauhar(977)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Cantt(946)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Scheme 33(138)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'North Nazimabad(480)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Clifton(531)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black),
                                children: [
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: 'Islamabad\n\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'DHA Defence(902)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'B-17(469)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Bharia Town(407)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Mumtaz City(402)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Gulberg(372)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'E-11(358)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Top City(312)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'H-13(301)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
            Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 50.0),
                padding: const EdgeInsets.symmetric(
                    vertical: 25.0, horizontal: 50.0),
                color: AppColor.orange.withOpacity(0.2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(text: 'Most Popular Locations for Plots\n'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black),
                                children: [
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: 'Lahore\n\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Askari(572)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Bharia Town(547)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Raiwind Road(293)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Gulberg(212)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Bharia Orchid(189)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'DHA Defence(138)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Main Canal Bank Road(43)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Shanghai Road(37)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black),
                                children: [
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: 'Karachi\n\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'DHA Defence(1,660)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Bharia Town Karachi(1,478)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Gulshan-e-Iqbal Town(1,069)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Gulistan-e-Jauhar(977)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Cantt(946)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Scheme 33(138)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'North Nazimabad(480)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Clifton(531)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black),
                                children: [
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: 'Islamabad\n\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'DHA Defence(902)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'B-17(469)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Bharia Town(407)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Mumtaz City(402)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Gulberg(372)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'E-11(358)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Top City(312)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'H-13(301)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
            Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 50.0),
                padding: const EdgeInsets.symmetric(
                    vertical: 25.0, horizontal: 50.0),
                color: AppColor.purple.withOpacity(0.2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                              text: 'Most Popular Locations for Properties\n'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black),
                                children: [
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: 'Lahore\n\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Askari(572)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Bharia Town(547)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Raiwind Road(293)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Gulberg(212)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Bharia Orchid(189)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'DHA Defence(138)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Main Canal Bank Road(43)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Shanghai Road(37)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black),
                                children: [
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: 'Karachi\n\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'DHA Defence(1,660)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Bharia Town Karachi(1,478)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Gulshan-e-Iqbal Town(1,069)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Gulistan-e-Jauhar(977)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Cantt(946)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Scheme 33(138)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'North Nazimabad(480)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Clifton(531)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black),
                                children: [
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: 'Islamabad\n\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'DHA Defence(902)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'B-17(469)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Bharia Town(407)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Mumtaz City(402)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Gulberg(372)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'E-11(358)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'Top City(312)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n\n'),
                                    ],
                                  ),
                                  const TextSpan(
                                      text: '• ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Flats for sale in ',
                                      ),
                                      TextSpan(
                                        text: 'H-13(301)',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                                'https://www.zameen.com/Flats_Apartments/Lahore_Askari-3555-1.html'));
                                          },
                                      ),
                                      const TextSpan(text: '\n'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
            Container(
              height: 400,
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 100.0),
              child: Image.asset(
                'assets/banner.png',
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
