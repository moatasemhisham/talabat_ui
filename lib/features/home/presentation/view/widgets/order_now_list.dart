import 'package:flutter/material.dart';

class OrderNowList extends StatefulWidget {
  const OrderNowList({Key? key}) : super(key: key);

  @override
  State<OrderNowList> createState() => _OrderNowListState();
}

class _OrderNowListState extends State<OrderNowList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            orderNowCardsList().length,
            (index) => OrderNowCard(
              imagePath: orderNowCardsList()[index].imagePath,
            ),
          ),
        ),
      ),
    );
  }

  List<OrderNowCard> orderNowCardsList() {
    return [
      const OrderNowCard(
        imagePath: 'assets/images/order_now.png',
      ),
      const OrderNowCard(
        imagePath: 'assets/images/order_now.png',
      ),
      const OrderNowCard(
        imagePath: 'assets/images/order_now.png',
      ),
    ];
  }
}

class OrderNowCard extends StatelessWidget {
  final String imagePath;

  const OrderNowCard({
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Image.asset(imagePath),
    );
  }
}

class OrderNow {
  final String imagePath;

  OrderNow({required this.imagePath});
}
