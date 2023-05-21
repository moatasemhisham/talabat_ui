import 'package:flutter/material.dart';
import 'package:talabat_ui/features/home/presentation/manager/nearest_to_you.dart';
import 'package:talabat_ui/features/home/presentation/view/widgets/restaurant_card_widget.dart';

class HandPikedForYou extends StatelessWidget {
  const HandPikedForYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RestaurantCardWidget(
      listTitle: 'Hand-picked for you',
      restaurantItem: nearestToYou(),
    );
  }
}
