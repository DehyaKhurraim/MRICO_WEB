import 'package:flutter/material.dart';
import '../ThemeConfig/Colors.dart';

class Maps extends StatefulWidget {
  const Maps({super.key});

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  List<bool> isSelected3 = <bool>[true, false];

  Widget outlineButton2(int index, String text) {
    return SizedBox(
      width: 100,
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            isSelected3 = isSelected3.map((state) => false).toList();
            isSelected3[index] = true;
          });
        },
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: isSelected3[index] ? Colors.transparent : kPrimaryColor,
          ),
          backgroundColor: isSelected3[index]
              ? kPrimaryColor
              : kPrimaryColor.withOpacity(0.5),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        ),
        child: Container(
          padding: const EdgeInsets.all(5),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: const Text(
                  'Popular Locations',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 34,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  outlineButton2(0, 'For Sale'),
                  const SizedBox(
                    width: 15,
                  ),
                  outlineButton2(1, 'To Rent'),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 100.0),
                child: Image.asset(
                  'assets/Map3.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
