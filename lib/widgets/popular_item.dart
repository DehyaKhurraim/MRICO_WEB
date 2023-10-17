import 'package:flutter/material.dart';
import '../ThemeConfig/Colors.dart';
import 'customImage.dart';

class PropertyItem extends StatelessWidget {
  const PropertyItem({Key? key, required this.data}) : super(key: key);

  final data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: AppColor.shadowColor.withOpacity(0.1),
            spreadRadius: .5,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          CustomImage(
            data["image"],
            width: 200,
            height: 150,
            radius: 5,
          ),
          _buildInfo(),
        ],
      ),
    );
  }

  Widget _buildInfo() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data["name"],
            style: const TextStyle(
              fontSize: 16,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const Icon(
                Icons.place_outlined,
                color: AppColor.darker,
                size: 13,
              ),
              const SizedBox(
                width: 3,
              ),
              Text(
                data["location"],
                style: const TextStyle(
                    fontSize: 13,
                    color: AppColor.darker,
                    decoration: TextDecoration.none),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            data["price"],
            style: const TextStyle(
                fontSize: 15,
                color: AppColor.primary,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none),
          ),
        ],
      ),
    );
  }
}
