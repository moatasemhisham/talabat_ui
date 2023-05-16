import 'package:flutter/material.dart';

class CategoriesScrollableList extends StatelessWidget {
  const CategoriesScrollableList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              // color: Colors.red,
              margin: const EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/Ramadan.png',
                    ),
                    const Text(
                      'Ramadan',
                      style: TextStyle(
                        fontSize: 14.0,
                        // fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              // color: Colors.red,
              margin: const EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/Fastfood.png',
                    ),
                    const Text(
                      'Fast Food',
                      style: TextStyle(
                        fontSize: 14.0,
                        // fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              // color: Colors.red,
              margin: const EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/icons8_salami_pizza.png',
                    ),
                    const Text(
                      'Pizza',
                      style: TextStyle(
                        fontSize: 14.0,
                        // fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              // color: Colors.red,
              margin: const EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/desert.png',
                    ),
                    const Text(
                      'Desert',
                      style: TextStyle(
                        fontSize: 14.0,
                        // fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              // color: Colors.red,
              margin: const EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/Meat.png',
                    ),
                    const Text(
                      'Meat',
                      style: TextStyle(
                        fontSize: 14.0,
                        // fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              // color: Colors.red,
              margin: const EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/Fastfood.png',
                    ),
                    const Text(
                      'Fast Food',
                      style: TextStyle(
                        fontSize: 14.0,
                        // fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              // color: Colors.red,
              margin: const EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/Fastfood.png',
                    ),
                    const Text(
                      'Fast Food',
                      style: TextStyle(
                        fontSize: 14.0,
                        // fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
