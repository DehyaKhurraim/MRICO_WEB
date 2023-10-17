import 'package:flutter/material.dart';
import '../ThemeConfig/Colors.dart';
import '../data.dart';

class PostAd extends StatefulWidget {
  const PostAd({super.key});

  @override
  _PostAdState createState() => _PostAdState();
}

List<bool> isSelected = <bool>[true, false];
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

class _PostAdState extends State<PostAd> {
  String _selectedLocation = 'Select Location';
  final List<String> _locations = ["Select Location"];
  String _selectedType = 'Select Property Type';
  final List<String> _type = [
    "Select Property Type",
    "Home",
    "Plot",
    "Commercial"
  ];
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

    int selectedFilter2 = 0;
    int selectedFilter4 = 0;
    int selectedFilter5 = 0;

    return Material(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: kfroColor.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Card(
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('You are here to:'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          outlineButton2(0, 'Sell'),
                          const SizedBox(
                            width: 15,
                          ),
                          outlineButton2(1, 'Rent'),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              color: Colors.white,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 42,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'City',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  _buildFilterOption(
                                      _locations, _selectedLocation, (value) {
                                    setState(() {
                                      _selectedLocation = value!;
                                    });
                                  }),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 42,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 42,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                      child: DropdownButton<String>(
                                        value: _selectedType,
                                        items: _type.map((option) {
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
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedType = value!;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 42,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Price(PKR)',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  _buildFilterOption(_prices, _selectedPrice,
                                      (value) {
                                    setState(() {
                                      _selectedPrice = value!;
                                    });
                                  }),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 42,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                                  fontWeight: FontWeight.bold,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 42,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                                  fontWeight: FontWeight.bold,
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
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget outlineButton2(int index, String text) {
    return SizedBox(
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            isSelected = isSelected.map((state) => false).toList();
            isSelected[index] = true;
          });
        },
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: Colors.transparent,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor:
              isSelected[index] ? kfroColor : AppColor.inActiveColor,
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
