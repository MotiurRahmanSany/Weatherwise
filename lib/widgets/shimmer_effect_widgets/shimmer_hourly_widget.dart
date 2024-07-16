import 'package:flutter/material.dart';

class ShimmerHourlyWidget extends StatelessWidget {
  const ShimmerHourlyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 16,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
              height: 128,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.only(left: 7),
                  height: 125,
                  width: 86,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
