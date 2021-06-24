import 'package:flutter/material.dart';
import 'package:saya/utilities/constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10)
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
          child: Row(
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildNavBarItem(Icons.home_outlined, 24, 'Beranda',
                  kBottomBarTextColor, () {}),
              buildNavBarItem(
                  Icons.history, 24, 'Riwayat', kBottomBarTextColor, () {}),
              Container(
                height: 80.0,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 5.0),
                        CircleAvatar(
                          backgroundColor: Colors.black38,
                          backgroundImage: AssetImage('images/alloexplore.png'),
                          radius: 24,
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Allo Explore',
                          style: TextStyle(
                              fontSize: 10.0,
                              fontFamily: 'DMSans',
                              color: kBottomBarTextColor),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              buildNavBarItem(
                  Icons.table_view_outlined, 24, 'Beranda', kBottomBarTextColor,
                  () {
                Navigator.pushNamed(context, '/HistoryScreen');
              }),
              buildNavBarItem(Icons.person, 24, 'Profile', kPrimaryColor, () {
                Navigator.pushNamed(context, '/ProfileScreen');
              }),
            ],
          ),
        ),
      ),
    );
  }
}

Container buildNavBarItem(IconData icon, double size, String title, Color color,
    VoidCallback onPressed) {
  final VoidCallback onPress = onPressed;
  return Container(
    height: 80.0,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(
            icon,
            color: kBottomBarTextColor,
          ),
          color: color,
          onPressed: onPress,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 10.0, fontFamily: 'DMSans', color: kBottomBarTextColor),
        )
      ],
    ),
  );
}
