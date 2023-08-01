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
    'arquivos/slide/1.jpg',
    'arquivos/slide/2.jpg',
    'arquivos/slide/3.jpg',
    'arquivos/slide/4.jpg',
    'arquivos/slide/5.jpg',
    'arquivos/slide/6.jpg',
    'arquivos/slide/7.jpg',
    'arquivos/slide/8.jpg',
    'arquivos/slide/9.jpg',
    'arquivos/slide/10.jpg',
  ];

  List<Widget> generateImages() {
    return images
        .map((element) => ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                element,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kbackgroundColor,
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Stack(
        children: [
          Positioned.fill(
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
