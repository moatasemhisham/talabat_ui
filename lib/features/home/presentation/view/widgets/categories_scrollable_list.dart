import 'package:flutter/material.dart';

class CategoriesScrollableList extends StatelessWidget {
  const CategoriesScrollableList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsetsDirectional.only(start: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
          listCategoriesItem().length,
              (index) =>
              CategoryCard(
                ctegorItem: listCategoriesItem()[index],
                // title: listCategoriesItem()[index].title,
                // imagePath: listCategoriesItem()[index].imagePath,
              ),
        ),
      ),
    );
  }

  List<CategoriesItems> listCategoriesItem() {
    return [
      CategoriesItems(
        title: 'Ramadan',
        imagePath: 'assets/images/Ramadan.png',
      ),
      CategoriesItems(
        title: 'Fast Food',
        imagePath: 'assets/images/Fastfood.png',
      ),
      CategoriesItems(
        title: 'Pizza',
        imagePath: 'assets/images/icons8_salami_pizza.png',
      ),
      CategoriesItems(
        title: 'Desert',
        imagePath: 'assets/images/desert.png',
      ),
      CategoriesItems(
        title: 'Meat',
        imagePath: 'assets/images/Meat.png',
      ),
      CategoriesItems(
        title: 'Ramadan',
        imagePath: 'assets/images/Ramadan.png',
      ),
      CategoriesItems(
        title: 'Fast Food',
        imagePath: 'assets/images/Fastfood.png',
      ),
      CategoriesItems(
        title: 'Pizza',
        imagePath: 'assets/images/icons8_salami_pizza.png',
      ),
      CategoriesItems(
        title: 'Desert',
        imagePath: 'assets/images/desert.png',
      ),
      CategoriesItems(
        title: 'Meat',
        imagePath: 'assets/images/Meat.png',
      ),
    ];
  }
}

class CategoryCard extends StatelessWidget {
  // final String title;
  // final String imagePath;
  final CategoriesItems ctegorItem;


  const CategoryCard({
    Key? key, required this.ctegorItem,
    // required this.title,
    // required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Colors.red,
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      elevation: 0.0,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            ctegorItem.imagePath,
            height: 50,
            // width: ,
          ),
          const SizedBox(height: 5.0),
          Text(
            ctegorItem.title,
            style: const TextStyle(
              fontSize: 14.0,
              // fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class CategoriesItems {
  final String title;
  final String imagePath;

  CategoriesItems({required this.title, required this.imagePath});
}
