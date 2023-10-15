import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeCarousel extends ConsumerWidget {
  const HomeCarousel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final carouselItem = [
      'assets/images/reachout_banner.png',
    ];
    return CarouselSlider(
      options: CarouselOptions(
        height: 140.0,
        autoPlay: false,
        autoPlayInterval: const Duration(seconds: 5),
        scrollDirection: Axis.horizontal,
        disableCenter: true,
        viewportFraction: 1.0,
      ),
      items: carouselItem.map((banner) {
        return Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Image.asset(
                    banner,
                    width: double.infinity,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey.shade200,
                        child: const Center(
                          child: Icon(
                            Icons.error,
                            color: Colors.grey,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
