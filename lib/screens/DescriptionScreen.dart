import 'package:flutter/material.dart';
import 'package:try_hero/models/CardContent.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({super.key, required this.cardContent});

  final CardContent cardContent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // title: Text(cardContent.title),
        backgroundColor: Colors.white.withOpacity(0),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: cardContent.imageAssets,
              child: Image.asset(cardContent.imageAssets),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: cardContent.title,
                    child: Text(
                      cardContent.title,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    cardContent.description,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
