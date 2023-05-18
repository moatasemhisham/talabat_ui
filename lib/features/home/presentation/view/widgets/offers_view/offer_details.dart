import 'package:flutter/material.dart';
import 'package:talabat_ui/constants.dart';

class OfferDetails extends StatelessWidget {
  final String restaurantName;
  final String restaurantCategory;
  final int deliveryTimeInMin;
  final double deliveryCost;
  final double restaurantOverallRate;
  final int reviewsNum;

  const OfferDetails({
    Key? key,
    required this.restaurantName,
    required this.restaurantCategory,
    required this.deliveryTimeInMin,
    required this.deliveryCost,
    required this.restaurantOverallRate,
    required this.reviewsNum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: kBackGroundColor,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  restaurantName,
                  style: const TextStyle(
                      color: kButtonForGroundColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  restaurantCategory,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: Color(
                      0xffD78100,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.delivery_dining_outlined,
                      color: kOfferDetailsTextColor,
                    ),
                    Text(
                      ' inn $deliveryTimeInMin min',
                      style: const TextStyle(
                        color: kOfferDetailsTextColor,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    color: kOfferDetailsTextColor,
                    Icons.circle,
                    size: 7.0,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.payment_outlined,
                      color: kOfferDetailsTextColor,
                    ),
                    Text(
                      ' $deliveryCost EGP',
                      style: const TextStyle(color: kOfferDetailsTextColor),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text(
                      ' $restaurantOverallRate of 5',
                      style: const TextStyle(color: kOfferDetailsTextColor),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    color: kOfferDetailsTextColor,
                    Icons.circle,
                    size: 7.0,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      ' $reviewsNum reviews',
                      style: const TextStyle(color: kOfferDetailsTextColor),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
