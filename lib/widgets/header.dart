import 'package:flutter/material.dart';
import '../ThemeConfig/Colors.dart';
import '../data.dart';
import '../widgets/navbar.dart';
import 'cards.dart';
import 'popular_item.dart';
import 'package:carousel_slider/carousel_slider.dart';

class GifWidget extends StatelessWidget {
  const GifWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://media.giphy.com/media/cX4fHm5fdhpbtolxxQ/giphy.gif',
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.cover,
    );
  }
}

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

List<bool> isSelected3 = <bool>[true, false, false];
List<String> _getUniqueLocations(List<dynamic> properties) {
  List<String> locations = properties
      .map((property) => property["location"])
      .cast<String>()
      .toList();
  Set<String> uniqueLocations = Set.from(locations);
  return uniqueLocations.toList();
}

List<String> _getUniquePrices(List<dynamic> properties) {
  List<String> prices =
      properties.map((property) => property["price"]).cast<String>().toList();
  Set<String> uniqueLocations = Set.from(prices);
  return uniqueLocations.toList();
}

class _HeaderState extends State<Header> {
  String _selectedLocation = 'Select Location';
  final List<String> _locations = ["Select Location"];
  String _selectedPrice = '0 To Any';
  final List<String> _prices = ["0 To Any"];
  List<Map<String, dynamic>> filteredPopulars = [];

  void applyFilters() {
    filteredPopulars = populars
        .where((property) =>
            (property["location"] == _selectedLocation ||
                _selectedLocation == "Select Location") &&
            (property["price"] == _selectedPrice ||
                _selectedPrice == "0 To Any"))
        .toList();
  }

  @override
  void initState() {
    super.initState();
    _locations.addAll(_getUniqueLocations(populars));
    _prices.addAll(_getUniquePrices(populars));
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonTextFontSize = screenWidth > 600 ? 16 : 14;

    int selectedFilter2 = 0;
    int selectedFilter4 = 0;
    int selectedFilter5 = 0;

    return Column(
      children: [
        SizedBox(
          height: 650,
          child: Stack(
            fit: StackFit.expand,
            children: [
              const GifWidget(),
              Column(
                children: [
                  Navbar(),
                  SizedBox(
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          const Text(
                            'Let\'s Find Your',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 52,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                'Dream',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 52,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Properties!',
                                style: TextStyle(
                                  color: ktriColor,
                                  fontSize: 52,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Search Properties For Sale',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              outlineButton2(0, 'Buy'),
                              const SizedBox(
                                width: 15,
                              ),
                              outlineButton2(1, 'Rent'),
                              const SizedBox(
                                width: 15,
                              ),
                              outlineButton2(2, 'Projects'),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            color: kPrimaryColor.withOpacity(0.7),
                            margin: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 10,
                            ),
                            padding:
                                EdgeInsets.all(screenWidth > 600 ? 20 : 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  height: 42,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'City',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                      _buildFilterOption(
                                          _locations, _selectedLocation,
                                          (value) {
                                        setState(() {
                                          _selectedLocation = value!;
                                        });
                                      }),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  height: 42,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Location',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 26,
                                        width: 100,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  height: 42,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Property Types',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 26,
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton<int>(
                                            value: selectedFilter2,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedFilter2 = value!;
                                              });
                                            },
                                            items: const [
                                              DropdownMenuItem(
                                                value: 0,
                                                child: SizedBox(
                                                  width: 100,
                                                  child: Text(
                                                    'Home',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  height: 42,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Price(PKR)',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                      _buildFilterOption(
                                          _prices, _selectedPrice, (value) {
                                        setState(() {
                                          _selectedPrice = value!;
                                        });
                                      }),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  height: 42,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Area',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 26,
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton<int>(
                                            value: selectedFilter4,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedFilter4 = value!;
                                              });
                                            },
                                            items: const [
                                              DropdownMenuItem(
                                                value: 0,
                                                child: SizedBox(
                                                  width: 100,
                                                  child: Text(
                                                    '0 To Any',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  height: 42,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Bed',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 26,
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton<int>(
                                            value: selectedFilter5,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedFilter5 = value!;
                                              });
                                            },
                                            items: const [
                                              DropdownMenuItem(
                                                value: 0,
                                                child: SizedBox(
                                                  width: 100,
                                                  child: Text(
                                                    'All',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      applyFilters();
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(screenWidth > 600
                                        ? 20
                                        : 10), // Adjust padding based on screen width
                                    backgroundColor: ktriColor.withOpacity(0.3),
                                  ),
                                  child: Text(
                                    'Find',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: buttonTextFontSize,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Cards(),
        SizedBox(
          height: 500,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/IMAGE.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Container(
                  color: kSecondaryColor.withOpacity(0.3),
                  padding: const EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 50),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Featured Property",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  "View all",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildPopulars(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPopulars() {
    List<Map<String, dynamic>> filteredProperties = populars
        .where((property) =>
            (property["location"] == _selectedLocation ||
                _selectedLocation == "Select Location") &&
            (property["price"] == _selectedPrice ||
                _selectedPrice == "0 To Any"))
        .toList();

    return CarouselSlider(
      options: CarouselOptions(
        height: 256,
        viewportFraction: 0.2,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        scrollDirection: Axis.horizontal,
      ),
      items: List.generate(
        filteredProperties.length,
        (index) {
          final propertyData = filteredProperties[index];
          return SizedBox(
            width: 200,
            child: PropertyItem(data: propertyData),
          );
        },
      ),
    );
  }

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
            width: 2.0,
            color: isSelected3[index] ? Colors.transparent : ktriColor,
          ),
          backgroundColor:
              isSelected3[index] ? kPrimaryColor : ktriColor.withOpacity(0.5),
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

  Widget _buildFilterOption(
    List<String> options,
    String selected,
    void Function(String?) onOptionSelected,
  ) {
    return SizedBox(
      height: 26,
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selected,
          items: options.map((option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Center(
                child: SizedBox(
                  width: 100,
                  child: Text(
                    option,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
          onChanged: onOptionSelected,
        ),
      ),
    );
  }
}
