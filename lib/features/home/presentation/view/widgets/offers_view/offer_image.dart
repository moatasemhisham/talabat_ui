import 'package:flutter/material.dart';

class OfferImage extends StatelessWidget {
  final String offerImagePath;
  final String offerType;
  final String restaurantLogoPath;

  const OfferImage({
    Key? key,
    required this.offerImagePath,
    required this.offerType,
    required this.restaurantLogoPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: Text(
              offerType,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Image.asset(
            offerImagePath,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              color: Colors.grey.shade50,
              child: Image.asset(
                restaurantLogoPath,
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}
