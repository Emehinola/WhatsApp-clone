import 'package:flutter/material.dart';

// users model goes here

class User {
  final String currentUser;
  final String userImg;
  final String userName;
  final String subTitle;
  final String trailing;

  User(
      {this.currentUser,
      @required this.userName,
      @required this.userImg,
      @required this.subTitle,
      @required this.trailing});
}
