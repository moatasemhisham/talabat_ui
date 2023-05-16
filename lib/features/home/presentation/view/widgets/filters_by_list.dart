import 'package:flutter/material.dart';
import 'package:talabat_ui/constants.dart';

class FiltersByList extends StatelessWidget {
  const FiltersByList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        kButtonBackGroundColor),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(kButtonForGroundColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(37.0),
                      ),
                    ),
                  ),
                  child: const Text('Pickup'),
                ),
              ),
              // SizedBox(
              //   width: 12.0,
              // ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        kButtonBackGroundColor),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(kButtonForGroundColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(37.0),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Price'),
                      Icon(
                        Icons.arrow_drop_down_outlined,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        kButtonBackGroundColor),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(kButtonForGroundColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(37.0),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Above 4 Stars',
                      ),
                      Icon(
                        Icons.arrow_drop_down_outlined,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        kButtonBackGroundColor),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(kButtonForGroundColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(37.0),
                      ),
                    ),
                  ),
                  child: const Text('Below 30 min'),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        kButtonBackGroundColor),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(kButtonForGroundColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(37.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Vegetarian',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
