import 'package:flutter/material.dart';

import '../../manager/nearest_to_you.dart';
import 'restaurant_card_widget.dart';

class NearestToYou extends StatelessWidget {
  const NearestToYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RestaurantCardWidget(
      listTitle: 'Nearest To You',
      restaurantItem: nearestToYou(),
    );
  }
}
