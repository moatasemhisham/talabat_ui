class RestaurantCard {
  final OfferImageModel offerImage;
  final OfferDetailsModel offerDetails;

  RestaurantCard({
    required this.offerImage,
    required this.offerDetails,
  });
}

class OfferDetailsModel {
  final String restaurantName;
  final String restaurantCategory;
  final int deliveryTimeInMin;
  final double deliveryCost;
  final double restaurantOverallRate;
  final int reviewsNum;

  OfferDetailsModel({
    required this.restaurantName,
    required this.restaurantCategory,
    required this.deliveryTimeInMin,
    required this.deliveryCost,
    required this.restaurantOverallRate,
    required this.reviewsNum,
  });
}

class OfferImageModel {
  final String offerImagePath;
  final String? offerType;
  final String restaurantLogoPath;

  OfferImageModel({
    required this.offerImagePath,
    this.offerType,
    required this.restaurantLogoPath,
  });
}
