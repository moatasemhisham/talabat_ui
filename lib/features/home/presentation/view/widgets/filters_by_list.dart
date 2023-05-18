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
          children: List.generate(
            filterItemsList().length,
            (index) => FilterItem(
              filterTitle: filterItemsList()[index].filterTitle,
              haveIcon: filterItemsList()[index].haveIcon,
            ),
          ),
        ),
      ),
    ));
  }

  List<FilterItem> filterItemsList() {
    return [
      FilterItem(
        filterTitle: 'Pickup',
      ),
      const FilterItem(filterTitle: 'Price ', haveIcon: true),
      const FilterItem(filterTitle: 'Above 4 Stars', haveIcon: true),
      const FilterItem(filterTitle: 'Below 30 min'),
      const FilterItem(
        filterTitle: 'Vegetarian',
      ),
    ];
  }
}

class FilterItem extends StatelessWidget {
  final String filterTitle;
  final bool haveIcon;

  const FilterItem(
      {super.key, required this.filterTitle, this.haveIcon = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      height: 35.0,
      child: MaterialButton(
        onPressed: () {},
        elevation: 0.0,
        color: kBackGroundColor,
        padding: EdgeInsetsDirectional.only(start: 8.0, end: 8.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(37.0),
            side: const BorderSide(
              color: kButtonBorderGroundColor,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                filterTitle,
                textAlign: TextAlign.center,
              ),
            ),
            Visibility(
              visible: haveIcon,
              child: Row(
                children: const [
                  SizedBox(width: 10.0),
                  VerticalDivider(
                    color: kButtonBorderGroundColor,
                    width: 2,
                    thickness: 1.5,
                  ),
                  SizedBox(width: 5.0),
                  Icon(Icons.keyboard_arrow_down_outlined),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FilterItems {
  final String filterTitle;
  final bool haveIcon;

  FilterItems({required this.filterTitle, required this.haveIcon});
}
