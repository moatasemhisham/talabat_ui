import 'package:flutter/material.dart';
import 'package:talabat_ui/features/home/presentation/view/widgets/restaurant_image.dart';

import '../../../../../constants.dart';
import '../../../data_source/model/restaurant_card.dart';
import 'Restaurant_details.dart';

class RestaurantCardWidget extends StatelessWidget {
  final String listTitle;
  final List<RestaurantCard> restaurantItem;

  const RestaurantCardWidget(
      {Key? key, required this.listTitle, required this.restaurantItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(listTitle,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              TextButton(
                onPressed: null,
                child: Text(
                  'See more',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.orange),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                restaurantItem.length,
                (index) =>
                    RestaurantItemWidget(restaurantItem: restaurantItem[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }

// List<OfferItem> offerItemsList() {
//   return [
//     const OfferItem(
//       offerImage: OfferImage(
//         offerImagePath: 'assets/images/McDonald\'s.png',
//         offerType: '20% Discount',
//         restaurantLogoPath: 'assets/images/McLogo.png',
//       ),
//       offerDetails: OfferDetails(
//         restaurantName: 'McDonald\'s',
//         restaurantCategory: 'Burger',
//         deliveryTimeInMin: 45,
//         deliveryCost: 12.00,
//         restaurantOverallRate: 4.6,
//         reviewsNum: 22,
//       ),
//     ),
//     const OfferItem(
//       offerImage: OfferImage(
//         offerImagePath: 'assets/images/McDonald\'s.png',
//         offerType: '20% Discount',
//         restaurantLogoPath: 'assets/images/McLogo.png',
//       ),
//       offerDetails: OfferDetails(
//         restaurantName: 'McDonald\'s',
//         restaurantCategory: 'Burger',
//         deliveryTimeInMin: 45,
//         deliveryCost: 12.00,
//         restaurantOverallRate: 4.6,
//         reviewsNum: 22,
//       ),
//     ),
//     const OfferItem(
//       offerImage: OfferImage(
//         offerImagePath: 'assets/images/McDonald\'s.png',
//         offerType: '20% Discount',
//         restaurantLogoPath: 'assets/images/McLogo.png',
//       ),
//       offerDetails: OfferDetails(
//         restaurantName: 'McDonald\'s',
//         restaurantCategory: 'Burger',
//         deliveryTimeInMin: 45,
//         deliveryCost: 12.00,
//         restaurantOverallRate: 4.6,
//         reviewsNum: 22,
//       ),
//     ),
//     const OfferItem(
//       offerImage: OfferImage(
//         offerImagePath: 'assets/images/karam_el-sham_Offer.jpeg',
//         offerType: 'Free Delivery',
//         restaurantLogoPath: 'assets/images/karamLogo.jpg',
//       ),
//       offerDetails: OfferDetails(
//         restaurantName: 'Karam EL-Sham',
//         restaurantCategory: 'Syrian Food',
//         deliveryTimeInMin: 20,
//         deliveryCost: 00,
//         restaurantOverallRate: 4.5,
//         reviewsNum: 12,
//       ),
//     ),
//     const OfferItem(
//       offerImage: OfferImage(
//         offerImagePath: 'assets/images/Dominos.jpg',
//         offerType: '15% Discount',
//         restaurantLogoPath: 'assets/images/dominosLogo.png',
//       ),
//       offerDetails: OfferDetails(
//         restaurantName: 'Domino\'s',
//         restaurantCategory: 'Pizza',
//         deliveryTimeInMin: 30,
//         deliveryCost: 10.00,
//         restaurantOverallRate: 4.2,
//         reviewsNum: 30,
//       ),
//     ),
//   ];
// }
}

class RestaurantItemWidget extends StatelessWidget {
  final RestaurantCard restaurantItem;

  const RestaurantItemWidget({
    super.key,
    required this.restaurantItem,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .6,
      child: Card(
        // width: MediaQuery.of(context).size.width * .6,
        // height: MediaQuery.of(context).size.height * .3,

        // decoration: BoxDecoration(
        // elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),

        color: kBackGroundColor,
        // ),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RestaurantImageWidget(
              offerImageModel: restaurantItem.offerImage,
            ),
            RestaurantDetailsWidget(
              offerDetailsModel: restaurantItem.offerDetails,
            ),
          ],
        ),
      ),
    );
  }
}
