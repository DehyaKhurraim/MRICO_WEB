import 'package:flutter/material.dart';
import 'package:micro_web/ThemeConfig/Colors.dart';
import '../widgets/headerContactUs.dart';
import '../widgets/footer.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            Container(
              margin: const EdgeInsets.all(72.0),
              height: 700,
              width: 1300,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/form.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  margin: const EdgeInsets.symmetric(
                      vertical: 36.0, horizontal: 52.0),
                  padding: const EdgeInsets.symmetric(
                      vertical: 36.0, horizontal: 52.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: const Text(
                                  'Welcome! What should we call you?*',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8.0),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(color: Colors.white),
                                ),
                                child: TextField(
                                  style: const TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(12.0),
                                    border: InputBorder.none,
                                    hintText: 'e.g: John Doe',
                                    hintStyle: TextStyle(
                                        color: Colors.grey.withOpacity(0.5)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: const Text(
                                  'Would you let us know your email address?*',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8.0),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(color: Colors.white),
                                ),
                                child: TextField(
                                  style: const TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(12.0),
                                    border: InputBorder.none,
                                    hintText: 'e.g: John.Doe@gmail.com',
                                    hintStyle: TextStyle(
                                        color: Colors.grey.withOpacity(0.5)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: const Text(
                                  'Would you let us know your phone number?*',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8.0),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(color: Colors.white),
                                ),
                                child: TextField(
                                  style: const TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(12.0),
                                    border: InputBorder.none,
                                    hintText: 'e.g: +92',
                                    hintStyle: TextStyle(
                                      color: Colors.grey.withOpacity(0.5),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: const Text(
                                  'Message',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8.0),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(color: Colors.white),
                                ),
                                child: TextFormField(
                                  maxLines: 5,
                                  style: const TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(12.0),
                                    border: InputBorder.none,
                                    hintText: 'Description',
                                    hintStyle: TextStyle(
                                      color: Colors.grey.withOpacity(0.5),
                                    ),
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
              height: 400,
              margin:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
              child: Image.asset(
                'assets/img1.png',
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
