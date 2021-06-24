import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saya/components/bottom_navigation_bar.dart';
import 'package:saya/utilities/constants.dart';

class ProfileSayaScreen extends StatefulWidget {
  @override
  _ProfileSayaScreenState createState() => _ProfileSayaScreenState();
}

class _ProfileSayaScreenState extends State<ProfileSayaScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(kProfileSayaScreenTitle, () {
        Navigator.pop(context);
      }),
      body: Container(
        margin: EdgeInsets.only(top: height * 0.04),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15), topLeft: Radius.circular(15)),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 1)],
                ),
                margin: EdgeInsets.fromLTRB(20, 50, 20, 10),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ListView(
                    children: ListTile.divideTiles(
//          <-- ListTile.divideTiles
                      context: context,
                      tiles: [
                        ListTile(
                          title: Text(
                            'Full Name',
                            style: kProfileCardTitleTextStyle,
                          ),
                          subtitle: Text(
                            'Dinar Daniswara',
                            style: kProfileCardSubTitleTextStyle,
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Mobile Number',
                            style: kProfileCardTitleTextStyle,
                          ),
                          subtitle: Text(
                            '081234567890',
                            style: kProfileCardSubTitleTextStyle,
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Email Address',
                            style: kProfileCardTitleTextStyle,
                          ),
                          subtitle: Text(
                            'daniswaradinar@gmail.com',
                            style: kProfileCardSubTitleTextStyle,
                          ),
                        ),
                      ],
                    ).toList(),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ListTile(
                    title: Text(
                      profilePageTextTitle,
                      style: kWeight700TextStyle,
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        profilePageTextSubtitle,
                        style: kWeight500TextStyle,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  Widget title(String txt) {
    return Text(
      '$txt',
      style: TextStyle(fontWeight: FontWeight.bold),
      textAlign: TextAlign.left,
    );
  }

  Widget subtitle(String txt) {
    return Text(
      '$txt',
      textAlign: TextAlign.left,
    );
  }
}
