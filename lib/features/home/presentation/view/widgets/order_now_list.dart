import 'package:flutter/material.dart';

class OrderNowList extends StatelessWidget {
  const OrderNowList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Card(
              child: Image.asset('assets/images/order_now.png'),
            ),
            Card(
              child: Image.asset('assets/images/order_now.png'),
            ),
          ],
        ),
      ),
    );
  }
}
