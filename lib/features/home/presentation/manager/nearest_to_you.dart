import '../../data_source/model/restaurant_card.dart';

List<RestaurantCard> nearestToYou() {
  return [
    RestaurantCard(
      offerImage: OfferImageModel(
        offerImagePath: 'assets/images/McDonald\'s.png',
        restaurantLogoPath: 'assets/images/McLogo.png',
      ),
      offerDetails: OfferDetailsModel(
        restaurantName: 'McDonald\'s',
        restaurantCategory: 'Burger',
        deliveryTimeInMin: 45,
        deliveryCost: 12.00,
        restaurantOverallRate: 4.6,
        reviewsNum: 22,
      ),
    ),
    RestaurantCard(
      offerImage: OfferImageModel(
        offerImagePath: 'assets/images/McDonald\'s.png',
        restaurantLogoPath: 'assets/images/McLogo.png',
      ),
      offerDetails: OfferDetailsModel(
        restaurantName: 'McDonald\'s',
        restaurantCategory: 'Burger',
        deliveryTimeInMin: 45,
        deliveryCost: 12.00,
        restaurantOverallRate: 4.6,
        reviewsNum: 22,
      ),
    ),
    RestaurantCard(
      offerImage: OfferImageModel(
        offerImagePath: 'assets/images/McDonald\'s.png',
        restaurantLogoPath: 'assets/images/McLogo.png',
      ),
      offerDetails: OfferDetailsModel(
        restaurantName: 'McDonald\'s',
        restaurantCategory: 'Burger',
        deliveryTimeInMin: 45,
        deliveryCost: 12.00,
        restaurantOverallRate: 4.6,
        reviewsNum: 22,
      ),
    ),
    RestaurantCard(
      offerImage: OfferImageModel(
        offerImagePath: 'assets/images/karam_el-sham_Offer.jpeg',
        restaurantLogoPath: 'assets/images/karamLogo.jpg',
      ),
      offerDetails: OfferDetailsModel(
        restaurantName: 'Karam EL-Sham',
        restaurantCategory: 'Syrian Food',
        deliveryTimeInMin: 20,
        deliveryCost: 00,
        restaurantOverallRate: 4.5,
        reviewsNum: 12,
      ),
    ),
    RestaurantCard(
      offerImage: OfferImageModel(
        offerImagePath: 'assets/images/Dominos.jpg',
        restaurantLogoPath: 'assets/images/dominosLogo.png',
      ),
      offerDetails: OfferDetailsModel(
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
