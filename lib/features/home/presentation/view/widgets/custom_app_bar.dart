import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: kAppBarColor,
        // Change the color of the status bar
        statusBarBrightness: Brightness.dark,
        // Light or dark status bar content
        statusBarIconBrightness:
            Brightness.dark, // Light or dark status bar icons
      ),
    );
    return AppBar(
      backgroundColor: kAppBarColor,
      leading: Image.asset(
        'assets/images/logo.png',
        width: 73,
        height: 53,
      ),
      leadingWidth: 100,
      elevation: 0.0,
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
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search_rounded,
            color: Colors.black,
            size: 40,
          ),
        ),
        const SizedBox(width: 9)
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
