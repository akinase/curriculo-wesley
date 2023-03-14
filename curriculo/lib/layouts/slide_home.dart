import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:curriculo/constantes.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final List<String> images = [
    'assets/slide/1.jpg',
    'assets/slide/2.jpg',
    'assets/slide/3.jpg',
    'assets/slide/4.jpg',
    'assets/slide/5.jpg',
    'assets/slide/6.jpg',
    'assets/slide/7.jpg',
    'assets/slide/8.jpg',
    'assets/slide/9.jpg',
    'assets/slide/10.jpg',
  ];

  List<Widget> generateImages() {
    return images
        .map((element) => ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                element,
                fit: BoxFit.cover,
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kbackgroundColor,
      padding: const EdgeInsets.only(top: 50),
      child: Stack(
        children: [
          Expanded(
            child: CarouselSlider(
              items: generateImages(),
              options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlay: true,
              ),
            ),
          ),
          const AspectRatio(
            aspectRatio: 1.75,
          ),
        ],
      ),
    );
  }
}
