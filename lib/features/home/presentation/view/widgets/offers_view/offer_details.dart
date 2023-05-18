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
        decoration: const BoxDecoration(
          // borderRadius: BorderRadius.circular(1),
          //TODO: Ask Mohamed why the border is not working
          color: kBackGroundColor,
        ),
        child: Column(
          children: [
            RestaurantDetailsBar(
                restaurantName: restaurantName,
                restaurantCategory: restaurantCategory),
            DeliveryInformation(
                deliveryTimeInMin: deliveryTimeInMin,
                deliveryCost: deliveryCost),
            RatingAndReviews(
              restaurantOverallRate: restaurantOverallRate,
              reviewsNum: reviewsNum,
            ),
          ],
        ),
      ),
    );
  }
}

class RatingAndReviews extends StatelessWidget {
  const RatingAndReviews({
    super.key,
    required this.restaurantOverallRate,
    required this.reviewsNum,
  });

  final double restaurantOverallRate;
  final int reviewsNum;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const Icon(
              size: 17,
              Icons.star,
              color: Colors.amber,
            ),
            Text(
              ' $restaurantOverallRate of 5',
              style: const TextStyle(
                color: Color(0xFF2A1901),
              ),
            )
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
    );
  }
}

class DeliveryInformation extends StatelessWidget {
  const DeliveryInformation({
    super.key,
    required this.deliveryTimeInMin,
    required this.deliveryCost,
  });

  final int deliveryTimeInMin;
  final double deliveryCost;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class RestaurantDetailsBar extends StatelessWidget {
  const RestaurantDetailsBar({
    super.key,
    required this.restaurantName,
    required this.restaurantCategory,
  });

  final String restaurantName;
  final String restaurantCategory;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
