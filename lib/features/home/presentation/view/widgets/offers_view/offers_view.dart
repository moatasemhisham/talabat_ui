import 'package:flutter/material.dart';
import 'package:talabat_ui/features/home/presentation/view/widgets/offers_view/offer_details.dart';

import '../../../../../../constants.dart';
import '../../../../../../generated/assets.dart';
import 'offer_image.dart';

class OffersView extends StatelessWidget {
  const OffersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const OfferCard();
  }
}

class OfferCard extends StatelessWidget {
  const OfferCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              // decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              margin: const EdgeInsets.symmetric(horizontal: 8),
              color: kBackGroundColor,
              width: 275,
              height: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OfferImage(
                    offerImagePath: Assets.mcOfferLogo,
                    offerType: '20% Discount',
                    restaurantLogoPath: Assets.mcLogo,
                  ),
                  OfferDetails(
                    restaurantName: 'McDonald\'s',
                    restaurantCategory: 'Burger',
                    deliveryTimeInMin: 45,
                    deliveryCost: 12.00,
                    restaurantOverallRate: 4.6,
                    reviewsNum: 22,
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
