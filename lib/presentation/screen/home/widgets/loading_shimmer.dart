import 'dart:math';

import 'package:flutter/material.dart';

class SectionViewLoadingShimmer extends StatelessWidget {
  const SectionViewLoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    double getRandomIntInRange(int min, int max) {
      final random = Random();
      return min + random.nextInt(max - min).toDouble();
    }

    return ListView.separated(
      shrinkWrap: true,
      itemCount: 3,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: getRandomIntInRange(120, 200),
                    height: 20,
                    color: Colors.grey.shade200,
                  ),
                  Container(
                    width: 50,
                    height: 20,
                    color: Colors.grey.shade200,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(8.0),
                    width: 300,
                    height: 100,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.grey.shade200,
                          width: 100,
                          height: 100,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 100,
                                height: 20,
                                color: Colors.grey.shade200,
                              ),
                              const SizedBox(height: 8),
                              Container(
                                width: 200,
                                height: 20,
                                color: Colors.grey.shade200,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
              ),
            ),
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 20);
      },
    );
  }
}
