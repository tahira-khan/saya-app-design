import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      title: Text('Title', style: kPageTitleTextStyle),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back_ios_new),
        iconSize: 20.0,
      ),
    );
  }
}
