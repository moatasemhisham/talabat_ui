import 'package:flutter/material.dart';

import '../../manager/data_offer.dart';
import 'restaurant_card_widget.dart';

class OffersView extends StatelessWidget {
  const OffersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RestaurantCardWidget(
      listTitle: 'Offer',
      restaurantItem: offerItemsList(),
    );
  }
}
