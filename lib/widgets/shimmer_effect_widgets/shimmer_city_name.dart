import 'package:flutter/material.dart';

class ShimmerCityName extends StatelessWidget {
  const ShimmerCityName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin:
              const EdgeInsets.only(left: 20, right: 10, top: 20, bottom: 12),
          alignment: Alignment.topLeft,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
            ),
            width: 180,
            height: 55,
          ),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          margin:
              const EdgeInsets.only(left: 20, right: 10, top: 0, bottom: 10),
          alignment: Alignment.topLeft,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
            ),
            width: 80,
            height: 15,
          ),
        ),
      ],
    );
  }
}
