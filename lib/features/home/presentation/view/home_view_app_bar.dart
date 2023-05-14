import 'package:flutter/material.dart';

class HomeViewAppBar extends StatelessWidget {
   const HomeViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(leading: Image.asset('assets/images/logo.png'));
  }
}
