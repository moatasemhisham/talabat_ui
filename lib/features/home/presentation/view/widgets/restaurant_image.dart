import 'package:flutter/material.dart';
import 'package:talabat_ui/features/home/data_source/model/restaurant_card.dart';

class RestaurantImageWidget extends StatelessWidget {
  final OfferImageModel offerImageModel;

  const RestaurantImageWidget({
    Key? key,
    required this.offerImageModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
          ),
          child: Image.asset(
            height: MediaQuery.of(context).size.height * .2,
            width: MediaQuery.of(context).size.width * .6,
            offerImageModel.offerImagePath,
            fit: BoxFit.fill,
          ),
        ),
        if (offerImageModel.offerType != null)
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Text(
                  offerImageModel.offerType!,
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
              offerImageModel.restaurantLogoPath,
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
