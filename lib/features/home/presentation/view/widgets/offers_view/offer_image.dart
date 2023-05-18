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
    return Stack(
      children: [
        Image.asset(
          offerImagePath,
          fit: BoxFit.cover,
          // width: MediaQuery.of(context).size.width * .9,
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Text(
                offerType,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
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
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(8),
                color: Colors.orange),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(
                size: 18,
                Icons.favorite_border_outlined,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
