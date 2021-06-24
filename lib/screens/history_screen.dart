import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saya/utilities/bottom_navigation_bar.dart';
import 'package:saya/utilities/constants.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  AlertDialog alertDialog = AlertDialog();
  List title = List.generate(20, (index) => 'Aplikasi Elektronik');
  List price = List.generate(20, (index) => 'Rp 6.500,000,-');
  List number = List.generate(20, (index) => 12403544505);
  @override
  void initState() {
    super.initState();
  }

  var sub = List.generate(18, (index) => 'Laptop Lenovo G40');
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(kHistoryScreenTitle, () {
        Navigator.pop(context);
      }),
      body: Container(
        margin: EdgeInsets.only(top: height * 0.04),
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            color: Colors.white),
        child: ListView.builder(
            itemCount: title.length,
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.only(
                    top: height * 0.05,
                    left: width * 0.05,
                    right: width * 0.05),
                child: Container(
                  margin:
                      EdgeInsets.only(left: width * 0.02, right: width * 0.02),
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.only(top: height * 0.02, left: width * 0.02),
                    leading: Icon(
                      Icons.desktop_windows_outlined,
                      color: kPrimaryColor,
                      size: 34.0,
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${title[index]}',
                          style: kCardTitleTextStyle,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: kSmallCircleColor,
                              size: 12,
                            ),
                            Text('TTD PK', style: kCardTTDTextStyle)
                          ],
                        )
                      ],
                    ),
                    subtitle: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('${sub[index]}',
                                style: kCardSubtitleTextStyle),
                            Text('${number[index]}',
                                style: kCardSubtitleNumberTextStyle),
                          ],
                        ),
                        SizedBox(height: height * 0.01),
                        Container(
                            width: width,
                            margin: EdgeInsets.only(top: width * 0.02),
                            child: Text('${price[index]}',
                                style: kCardPriceTextStyle)),
                        Theme(
                          data: Theme.of(context)
                              .copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            collapsedBackgroundColor: Colors.white,
                            trailing: Icon(Icons.ac_unit, color: Colors.white),
                            title: Container(
                              width: width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Lihat Update',
                                      style: kCardTTDTextStyle),
                                  Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                            expandedAlignment: Alignment.center,
                            children: [
                              Column(
                                children: [
                                  Divider(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Order: ',
                                          style: kCardDropTitleTextStyle),
                                      Text('9 April 2021',
                                          style: kCardDateTextStyle)
                                    ],
                                  ),
                                  SizedBox(height: height * 0.02),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Update: ',
                                        style: kCardDropTitleTextStyle,
                                      ),
                                      Text('12 April 2021',
                                          style: kCardDateTextStyle)
                                    ],
                                  ),
                                  SizedBox(height: height * 0.02),
                                  Container(
                                    width: width,
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          side:
                                              BorderSide(color: kPrimaryColor),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                          )),
                                      onPressed: () {
                                        setState(() {
                                          AlertDialog alert = AlertDialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            title: Text(
                                                "Tandatangan Perjanjian",
                                                textAlign: TextAlign.center,
                                                style: kAlertTitleTextStyle),
                                            content: Text(kDialogueBoxMessage,
                                                style: kAlertMessageTextStyle,
                                                textAlign: TextAlign.center),
                                            actions: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                  left: width * 0.2,
                                                  right: width * 0.2,
                                                ),
                                                width: width,
                                                child: OutlinedButton(
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: height *
                                                                      0.013,
                                                                  bottom:
                                                                      height *
                                                                          0.013),
                                                          backgroundColor:
                                                              kPrimaryColor,
                                                          side: BorderSide(
                                                              color:
                                                                  kPrimaryColor),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100.0),
                                                          )),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text('OK',
                                                      style:
                                                          kAlertButtonTextStyle),
                                                ),
                                              )
                                            ],
                                          );

                                          // show the dialog
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return alert;
                                            },
                                          );
                                        });
                                      },
                                      child: Text('Tandatangan Pk',
                                          style: kCardButtonTextStyle),
                                    ),
                                  ),
                                  SizedBox(height: height * 0.02),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
