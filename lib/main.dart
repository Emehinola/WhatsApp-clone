import 'package:flutter/material.dart';
import 'package:whatsapp/screens/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:whatsapp/colors/colors.dart';

main(List<String> args) {
  return runApp(WhatsApp());
}

class WhatsApp extends StatefulWidget {
  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: WhatsAppColor.primaryColor,
          primaryColorDark: WhatsAppColor.primaryDark,
          primaryColorLight: WhatsAppColor.primaryLight),
      home: NavScreen(),
    );
  }
}
