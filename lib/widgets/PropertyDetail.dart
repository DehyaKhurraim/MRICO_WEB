import 'package:flutter/material.dart';
import 'package:micro_web/widgets/popular.dart';
import '../ThemeConfig/Colors.dart';
import '../data.dart';
import 'customImage.dart';
import 'popular_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'footer.dart';
import 'navbar4.dart';

class PropertyDetail extends StatefulWidget {
  const PropertyDetail({super.key});

  @override
  State<PropertyDetail> createState() => _PropertyDetailState();
}

class _PropertyDetailState extends State<PropertyDetail> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Navbar4(),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24.0),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(11, 73, 62, 0.2),
                    Color.fromRGBO(11, 73, 62, 0.0),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Propety Detail',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey.withOpacity(0.6),
                    ),
                  ),
                  Text(
                    'Home / Karachi Plots / Bahria Town Karachi',
                    style: TextStyle(
                      color: Colors.grey.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              height: 500,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                ),
                items: List.generate(
                  populars.length,
                  (index) => Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        populars[index]["image"],
                        width: MediaQuery.of(context).size.width,
                        height: 450,
                        fit: BoxFit.fill,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: const Color(0xFFb2e1b5),
                                borderRadius: BorderRadius.circular(2),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        AppColor.shadowColor.withOpacity(0.1),
                                    spreadRadius: .5,
                                    blurRadius: 1,
                                    offset: const Offset(0, 1),
                                  ),
                                ],
                              ),
                              child: const Text(
                                'For Sale',
                                style: TextStyle(
                                  color: Color(0xFF2ecc71),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColor.red,
                                  borderRadius: BorderRadius.circular(5)),
                              padding: const EdgeInsets.all(3),
                              child: IconButton(
                                onPressed: () => setState(() {
                                  populars[index]["is_favorited"] =
                                      !populars[index]["is_favorited"];
                                }),
                                icon: Icon(
                                  populars[index]["is_favorited"]
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: Colors.white,
                                  //size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 32.0, horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              '125 Square Yards Residential Plot For Sale in Bharia Town',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Precinct 28 Karachi In Only Rs. 5,700,000',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ktriColor,
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 15),
                              child: Text(
                                'Email',
                                style: TextStyle(
                                  color: ktriColor,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
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
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 15),
                              child: Text(
                                'Call',
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
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/Logo2.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'LIFE STYLE PROPERTY ADVISORS',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w100),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.person,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Muhammad Mahil'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Details',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(
                        top: 26.0, left: 40.0, bottom: 26.0),
                    color: kPrimaryColor,
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Property Details',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: Row(
                                children: const [
                                  Text(
                                    'Type',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Residential Plot',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 75,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: Row(
                                children: const [
                                  Text(
                                    'Location',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Bahria Town Karachi, Karachi, Sindh',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 125,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: Row(
                                children: const [
                                  Text(
                                    'Area',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    '125 Sq.Yd.',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 0,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: Row(
                                children: const [
                                  Text(
                                    'Bedrooms',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'None',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: Row(
                                children: const [
                                  Text(
                                    'Price',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'PKR57 Lakh',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 75,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: Row(
                                children: const [
                                  Text(
                                    'Bath(s)',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'None',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 125,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: Row(
                                children: const [
                                  Text(
                                    'Purpose',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'For Sale',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 0,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: Row(
                                children: const [
                                  Text(
                                    'Added',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    '3 weeks ago',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Description',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'By choosing this Residential Plot, know that you\'re making a wise choice - one that you will later be proud of. All kinds of properties are available for sale in various cities, depending on where you want to settle. A luxurious life awaits you in this 125 Square Yards property. Buying property is a big deal but getting a price of PKR Rs. 5,700,000 isn\'t, so make haste. Property in Bahria Town - Precinct 28 lets you access the best facilities and amenities around. Karachi has many options for all kinds of properties, so stop waiting and start looking.',
                        style: TextStyle(
                          height: 1.5,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'The details of the property are listed down below.\nA modern sewerage system adds to the quality of this housing project.\nThe Residential Plot has a spacious water tank to meet your family\'s needs.\nThe Residential Plot comes with all basic amenities including a working sui gas connection.\nPossession of properties is a quick and easy process.\nA boundary wall keeps you and your family secure in this society.\nA corner plot is a dream come true for buyers, so don\'t miss this chance.\nThe expert security staff will remain vigilant round the clock.',
                        style: TextStyle(
                          height: 1.5,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'We\'re just a ring away. So, grab the phone and give us a call.',
                        style: TextStyle(
                          height: 1.5,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Amenities',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 12,
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.check_box,
                                  color: ktriColor,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Possesion'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 12,
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.check_box,
                                  color: ktriColor,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Corner'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 12,
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.check_box,
                                  color: ktriColor,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Parking Facing'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 12,
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.check_box,
                                  color: ktriColor,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Disputed'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 12,
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.check_box,
                                  color: ktriColor,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('File'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 12,
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.check_box,
                                  color: ktriColor,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Ballotes'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 12,
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.check_box,
                                  color: ktriColor,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Sewerage'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 12,
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.check_box,
                                  color: ktriColor,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Electricity'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 12,
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.check_box,
                                  color: ktriColor,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Water Supply'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 12,
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.check_box,
                                  color: ktriColor,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Sui Gas'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 12,
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.check_box,
                                  color: ktriColor,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Boundary Wall'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 12,
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.check_box,
                                  color: ktriColor,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Security Staff'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 36.0),
                  child: const Text(
                    'Similar Residential Plots',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                _buildPopulars(),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
            Container(
              height: 400,
              margin:
                  const EdgeInsets.symmetric(vertical: 72.0, horizontal: 0.0),
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

  Widget _buildPopulars() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 300,
        viewportFraction: 0.15,
        enableInfiniteScroll: true,
      ),
      items: List.generate(
        populars.length,
        (index) => PropertyItem2(
          data: populars[index],
        ),
      ),
    );
  }
}
