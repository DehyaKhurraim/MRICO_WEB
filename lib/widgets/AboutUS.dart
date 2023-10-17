import 'package:flutter/material.dart';

import 'footer.dart';
import 'headerAboutUs.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            Container(
              margin: const EdgeInsets.only(top: 72.0),
              height: 700,
              width: 1300,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Aboutusbg1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  margin: const EdgeInsets.symmetric(horizontal: 48.0),
                  padding: const EdgeInsets.symmetric(horizontal: 48.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: const Text(
                                  'Our Mission',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 72,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 12.0),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
                                margin:
                                    const EdgeInsets.symmetric(vertical: 12.0),
                                child: const Text(
                                  'M-RICO takes into account people\'s increasing demand for real estate and their ongoing desire to live the perfect lifestyle in their own home.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w100,
                                    height: 1.75,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 72.0),
              height: 700,
              width: 1300,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Aboutusbg2.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 52.0),
                                padding: const EdgeInsets.only(right: 300.0),
                                child: const Text(
                                  'Our Goal',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 72,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 12.0),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 2.5,
                                margin: const EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 52.0),
                                padding: const EdgeInsets.only(
                                    right: 42.0, left: 44.0),
                                child: const Text(
                                  'M-RICO takes into account people  increasing demand for real estate and their ongoing desire to live the perfect lifestyle in their own home.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w100,
                                    height: 1.75,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 72.0, bottom: 108.0),
              height: 1000,
              width: 1300,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Aboutusbg3.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  margin: const EdgeInsets.symmetric(horizontal: 32.0),
                  padding: const EdgeInsets.only(left: 48.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 48.0),
                                child: const Text(
                                  'Our Values',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 72,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 12.0),
                      Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2.5,
                                        child: const Text(
                                          'The primary purpose of MRICO is to change the perception of Pakistan in the building & construction sector by implementing innovative working methods with a large team of employees, associates, engineers, and other professionals. Owning the necessary equipment for building, construction, and development worth hundreds of millions of dollars as well as owned properties allows us to provide innovative ideas, cutting-edge services, and work of the highest caliber. Of course, with dedication & pure client delight!',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w100,
                                            height: 1.75,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(left: 86.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              '· Dependable value for the money',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.w100,
                                                height: 1.75,
                                              ),
                                            ),
                                            Text(
                                              '· Commitment',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.w100,
                                                height: 1.75,
                                              ),
                                            ),
                                            Text(
                                              '· Reputation',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.w100,
                                                height: 1.75,
                                              ),
                                            ),
                                            Text(
                                              '· Executive Owned Elite Properties',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.w100,
                                                height: 1.75,
                                              ),
                                            ),
                                            Text(
                                              '· Customer Satisfaction',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.w100,
                                                height: 1.75,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 400,
              margin:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
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
