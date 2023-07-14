import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'rent_detail_screen.dart';

List<String> images = ['assets/images/1.jpeg'];

class RentScreen extends StatelessWidget {
  const RentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.home),
                  SizedBox(
                    width: 200,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const Icon(Icons.notifications),
                ],
              ),
              const SizedBox(height: 10),
              CarouselSlider(
                items: images
                    .map(
                      (image) => Card(
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(image),
                                Positioned(
                                  right: 5,
                                  bottom: 5,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              RentDetailScreen(
                                            image: image,
                                            description:
                                                "Une chambre de qualité.",
                                          ),
                                        ),
                                      );
                                    },
                                    style: TextButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor: Colors.blue,
                                    ),
                                    child: const Text('Réserver'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
                options: CarouselOptions(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
