import 'package:flutter/material.dart';
import 'package:talabat_ui/features/home/presentation/view/widgets/offers_view/offers_view.dart';
import 'package:talabat_ui/features/home/presentation/view/widgets/order_now_list.dart';

import 'categories_scrollable_list.dart';
import 'filters_by_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          CategoriesScrollableList(),
          FiltersByList(),
          OrderNowList(),
          OffersView(),
          Text('UI'),
        ],
      ),
    );
  }
}
