import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saya/components/custom_app_bar.dart';
import 'package:saya/utilities/constants.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: CustomAppBar(kProfileScreenTitle, () {}),
      ),
      body: Container(
        margin: EdgeInsets.only(top: height * 0.04),
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            color: Colors.white),
        child: Column(children: <Widget>[
          SizedBox(height: height * 0.04),
          Expanded(
            flex: 1,
            child: Container(
              child: Stack(
                children: [
                  Material(
                    color: kBlackColorOpacity,
                    type: MaterialType.circle,
                    elevation: 1.0,
                    shadowColor: kBlackColorOpacity,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 75,
                      child: CircleAvatar(
                        radius: 72,
                        backgroundImage: AssetImage('images/profile.jpg'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.13,
                    left: width * 0.26,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: kPrimaryColor,
                        child: IconButton(
                            icon: Icon(Icons.edit, color: Colors.white),
                            onPressed: () {},
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Text(kUserName, style: kUserNameTextStyle),
          SizedBox(height: height * 0.02),
          Expanded(
            flex: 2,
            child: Material(
              color: Colors.white,
              shadowColor: Colors.white70,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              elevation: 10,
              child: Container(
                width: width * 0.7,
                height: height * 0.40,
                margin: EdgeInsets.only(
                  top: height * 0.02,
                  left: width * 0.05,
                  right: width * 0.05,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        EachRow(height, width, 'Profil saya', Icons.person_outline_outlined),
                        InkWell(
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/ProfileSayaScreen');
                              },
                              icon: Icon(Icons.arrow_forward_ios_sharp, color: kPrimaryColor),
                            ),
                            onTap: () {
                              setState(() {});
                            }),
                      ],
                    ),
                    divider(height, width),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        EachRow(height, width, 'Plafon Kredit', Icons.local_atm_outlined),
                        InkWell(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios_sharp, color: kPrimaryColor),
                            ),
                            onTap: () {
                              setState(() {});
                            }),
                      ],
                    ),
                    divider(height, width),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        EachRow(height, width, 'History Pengajuan Kredit', Icons.restore),
                        InkWell(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios_sharp, color: kPrimaryColor),
                            ),
                            onTap: () {
                              setState(() {});
                            }),
                      ],
                    ),
                    divider(height, width),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        EachRow(height, width, 'Pusat Bantuan', Icons.help_outline),
                        InkWell(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios_sharp, color: kPrimaryColor),
                            ),
                            onTap: () {
                              setState(() {});
                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: height * 0.04,
              left: width * 0.09,
              right: width * 0.09,
              bottom: height * 0.06,
            ),
            width: width,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.only(top: height * 0.013, bottom: height * 0.013),
                backgroundColor: Colors.orange[800],
                side: BorderSide(color: Colors.orange[800]),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              onPressed: () {},
              child: Text('Log out', style: kButtonTextStyle),
            ),
          ),
          //   SizedBox(height: height * 0.01)
        ]),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget EachRow(height, width, String text, IconData icon) {
    return Container(
      margin: EdgeInsets.only(top: height * 0.01),
      //width: width * 0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Icon(icon, color: Colors.grey, size: width * 0.062),
                SizedBox(width: width * 0.04),
                Text(
                  '$text',
                  style: kProfileListTitleTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget divider(height, width) {
    return Container(
      margin: EdgeInsets.only(top: height * 0.01, bottom: height * 0.01),
      height: height * 0.002,
      color: Colors.grey[300],
    );
  }
}
