import 'package:flutter/material.dart';

class StatusModel {
  final String statusImg;
  final int statusCount;
  final String time;
  final String user;

  StatusModel(
      {@required this.statusImg,
      @required this.user,
      @required this.statusCount,
      @required this.time});
}
