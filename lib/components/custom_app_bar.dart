import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar(this.appBarTitle, this.onPress);

  final String appBarTitle;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      title: Text(appBarTitle, style: kPageTitleTextStyle),
      centerTitle: true,
      leading: IconButton(
        onPressed: onPress,
        icon: Icon(Icons.arrow_back_ios_new),
        iconSize: 20.0,
      ),
    );
  }
}
