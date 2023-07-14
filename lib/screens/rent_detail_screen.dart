import 'package:flutter/material.dart';

class RentDetailScreen extends StatelessWidget {
  const RentDetailScreen({
    super.key,
    required this.image,
    required this.description,
  });

  final String image;

  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image),
            const SizedBox(
              height: 10,
            ),
            Text(
              description,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
