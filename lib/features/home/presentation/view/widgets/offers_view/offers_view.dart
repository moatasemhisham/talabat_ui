import 'package:flutter/material.dart';
import 'package:talabat_ui/features/home/presentation/view/widgets/offers_view/offer_details.dart';
import 'package:talabat_ui/features/home/presentation/view/widgets/offers_view/offer_image.dart';

import '../../../../../../constants.dart';

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
          children: List.generate(
            offerItemsList().length,
            (index) => OfferItem(
              offerImage: offerItemsList()[index].offerImage,
              offerDetails: offerItemsList()[index].offerDetails,
            ),
          ),
        ),
      ),
    );
  }

  List<OfferItem> offerItemsList() {
    return [
      const OfferItem(
        offerImage: OfferImage(
          offerImagePath: 'assets/images/McDonald\'s.png',
          offerType: '20% Discount',
          restaurantLogoPath: 'assets/images/McLogo.png',
        ),
        offerDetails: OfferDetails(
          restaurantName: 'McDonald\'s',
          restaurantCategory: 'Burger',
          deliveryTimeInMin: 45,
          deliveryCost: 12.00,
          restaurantOverallRate: 4.6,
          reviewsNum: 22,
        ),
      ),
      const OfferItem(
        offerImage: OfferImage(
          offerImagePath: 'assets/images/McDonald\'s.png',
          offerType: '20% Discount',
          restaurantLogoPath: 'assets/images/McLogo.png',
        ),
        offerDetails: OfferDetails(
          restaurantName: 'McDonald\'s',
          restaurantCategory: 'Burger',
          deliveryTimeInMin: 45,
          deliveryCost: 12.00,
          restaurantOverallRate: 4.6,
          reviewsNum: 22,
        ),
      ),
      const OfferItem(
        offerImage: OfferImage(
          offerImagePath: 'assets/images/McDonald\'s.png',
          offerType: '20% Discount',
          restaurantLogoPath: 'assets/images/McLogo.png',
        ),
        offerDetails: OfferDetails(
          restaurantName: 'McDonald\'s',
          restaurantCategory: 'Burger',
          deliveryTimeInMin: 45,
          deliveryCost: 12.00,
          restaurantOverallRate: 4.6,
          reviewsNum: 22,
        ),
      ),
      const OfferItem(
        offerImage: OfferImage(
          offerImagePath: 'assets/images/karam_el-sham_Offer.jpeg',
          offerType: 'Free Delivery',
          restaurantLogoPath: 'assets/images/karamLogo.jpg',
        ),
        offerDetails: OfferDetails(
          restaurantName: 'Karam EL-Sham',
          restaurantCategory: 'Syrian Food',
          deliveryTimeInMin: 20,
          deliveryCost: 00,
          restaurantOverallRate: 4.5,
          reviewsNum: 12,
        ),
      ),
      const OfferItem(
        offerImage: OfferImage(
          offerImagePath: 'assets/images/Dominos.jpg',
          offerType: '15% Discount',
          restaurantLogoPath: 'assets/images/dominosLogo.png',
        ),
        offerDetails: OfferDetails(
          restaurantName: 'Domino\'s',
          restaurantCategory: 'Pizza',
          deliveryTimeInMin: 30,
          deliveryCost: 10.00,
          restaurantOverallRate: 4.2,
          reviewsNum: 30,
        ),
      ),
    ];
  }
}

class OfferItem extends StatelessWidget {
  final OfferImage offerImage;
  final OfferDetails offerDetails;

  const OfferItem({
    super.key,
    required this.offerImage,
    required this.offerDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .6,
      // height: MediaQuery.of(context).size.height * .3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kBackGroundColor,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          OfferImage(
            offerImagePath: offerImage.offerImagePath,
            offerType: offerImage.offerType,
            restaurantLogoPath: offerImage.restaurantLogoPath,
            // offerImagePath: Assets.mcOfferLogo,
            // offerType: '20% Discount',
            // restaurantLogoPath: Assets.mcLogo,
          ),
          OfferDetails(
            deliveryCost: offerDetails.deliveryCost,
            deliveryTimeInMin: offerDetails.deliveryTimeInMin,
            restaurantCategory: offerDetails.restaurantCategory,
            restaurantName: offerDetails.restaurantName,
            restaurantOverallRate: offerDetails.restaurantOverallRate,
            reviewsNum: offerDetails.reviewsNum,
          ),
        ],
      ),
    );
  }
}

class Offer {
  final Object offerImage;
  final Object offerDetails;

  Offer({required this.offerDetails, required this.offerImage});
}
