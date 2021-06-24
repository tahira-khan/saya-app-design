import 'package:flutter/material.dart';

// Colors used in our Application.

const kPrimaryColor = Color(0xFFF06726);
const kBackgroundColor = Color(0xFFFFFFFF);
const kSmallCircleColor = Color(0xFFFFBA00);
const kBlackColorOpacity = Color(0x1A000000);
const kBottomBarTextColor = Color(0xFFC4C4C4);

//Strings used in our Screens.

const kProfileScreenTitle = 'Profil';
const kHistoryScreenTitle = 'Histori Pengajuan';
const kProfileSayaScreenTitle = 'Profil Saya';
const kUserName = 'Putri Tanjung';
const kDialogueBoxMessage =
    'Pastikan anda membaca seluruh bagian perjanjian kredit. Dengan menandatangani perjanjian berikut maka kami anggap anda sepakat terhadap seluruh isi perjanjian berikut lampirannya.';

const String profilePageTextTitle =
    'You are accessing Blicicil with your Allo Bank profile. There are 2 ways to edit it.';
const String profilePageTextSubtitle =
    '- Go to Home and tap Allo Explore. Tap the settings icon to edit \n- Download Allo Bank and edit your profile in the app';

//TextStyles used in our App.

const kPageTitleTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 16.0,
  fontFamily: 'Montserrat',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
);

const kUserNameTextStyle = TextStyle(
  color: Color(0xFF333333),
  fontSize: 14.0,
  fontFamily: 'Montserrat',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w600,
);

const kProfileListTitleTextStyle = TextStyle(
  color: Color(0xFF333333),
  fontSize: 12.0,
  fontFamily: 'Montserrat',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w600,
);

const kButtonTextStyle = TextStyle(
  color: Color(0xFFFFFFFF),
  fontSize: 14.0,
  fontFamily: 'Montserrat',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w600,
);

const kCardTTDTextStyle = TextStyle(
  color: Color(0xFF333333),
  fontSize: 10.0,
  fontFamily: 'Montserrat',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
);

const kCardDateTextStyle = TextStyle(
  color: Color(0xFF333333),
  fontSize: 14.0,
  fontFamily: 'Montserrat',
  letterSpacing: 0.5,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w600,
);

const kCardTitleTextStyle = TextStyle(
  color: Color(0xFF333333),
  fontSize: 14.0,
  fontFamily: 'DMSans',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w700,
);

const kCardPriceTextStyle = TextStyle(
  color: Color(0xFFF06726),
  fontSize: 14.0,
  fontFamily: 'Montserrat',
  letterSpacing: 0.5,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w600,
);

const kCardSubtitleTextStyle = TextStyle(
  color: Color(0xFF333333),
  fontSize: 10.0,
  fontFamily: 'Montserrat',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
);

const kCardDropTitleTextStyle = TextStyle(
  color: Color(0xFF838484),
  fontSize: 10.0,
  fontFamily: 'Montserrat',
  letterSpacing: 0.5,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
);

const kCardSubtitleNumberTextStyle = TextStyle(
  color: Color(0xFF838484),
  fontSize: 10.0,
  fontFamily: 'Montserrat',
  letterSpacing: 0.5,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
);

const kCardButtonTextStyle = TextStyle(
  color: Color(0xFFF06726),
  fontSize: 12.0,
  fontFamily: 'Montserrat',
  letterSpacing: 0.4,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w600,
);

const kAlertTitleTextStyle = TextStyle(
  color: Color(0xFF333333),
  fontSize: 18.0,
  fontFamily: 'Montserrat',
  letterSpacing: 0.4,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
);

const kAlertMessageTextStyle = TextStyle(
  color: Color(0xFF333333),
  fontSize: 9.0,
  fontFamily: 'Montserrat',
  letterSpacing: 0.4,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
);

const kAlertButtonTextStyle = TextStyle(
  color: Color(0xFFFFFFFF),
  fontSize: 10.0,
  fontFamily: 'Montserrat',
  letterSpacing: 0.4,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w600,
);

const kProfileCardTitleTextStyle = TextStyle(
  color: Color(0xFF252525),
  fontSize: 12.0,
  fontFamily: 'Montserrat',
  letterSpacing: 0.5,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
);

const kProfileCardSubTitleTextStyle = TextStyle(
  color: Color(0xFF333333),
  fontSize: 12.0,
  fontFamily: 'Montserrat',
  letterSpacing: 0.5,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
);

const kNavigationBarTextStyle = TextStyle(
  color: kBottomBarTextColor,
  fontSize: 10.0,
  fontFamily: 'Montserrat',
  letterSpacing: 0.5,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
);

const kWeight500TextStyle = TextStyle(
  fontSize: 12.0,
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.w500,
);

const kWeight700TextStyle = TextStyle(
  fontSize: 12.0,
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.w700,
);

// Custom Box Decoration

const kCircularRadius15 = BoxDecoration(
    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
    color: Colors.white);
