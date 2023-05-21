import 'package:flutter/material.dart';
import 'package:talabat_ui/features/home/presentation/view/widgets/nearest_to_you_view.dart';
import 'package:talabat_ui/features/home/presentation/view/widgets/order_now_list.dart';

import 'categories_scrollable_list.dart';
import 'filters_by_list.dart';
import 'hand_picked_for_you.dart';
import 'offers_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        // color: Colors.blueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            CategoriesScrollableList(),
            FiltersByList(),
            OrderNowList(),
            OffersView(),
            NearestToYou(),
            HandPikedForYou(),
          ],
        ),
      ),
    );
  }
}
