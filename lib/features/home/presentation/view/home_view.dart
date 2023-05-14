import 'package:flutter/material.dart';
import 'package:talabat_ui/constants.dart';
import 'package:talabat_ui/features/home/presentation/view/home_view_app_bar.dart';

import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Image.asset(
            'assets/images/logo.png',
            width: 73,
            height: 53,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Deliver to',
                style: TextStyle(
                  color: kPrimeColor,
                  fontSize: 14.0,
                ),
              ),
              Text(
                'A Very Long Address',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                color: Colors.black,
                size: 40,
              ),
            ),
            SizedBox(
              width: 9,
            )
          ],
        ),
        body: HomeViewBody(),
      ),
    );
  }
}
