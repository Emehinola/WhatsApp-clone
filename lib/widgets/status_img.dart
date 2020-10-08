import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/colors/colors.dart';
import 'package:dotted_border/dotted_border.dart';

class StatusImg extends StatelessWidget {
  final String userImg;
  final int statusCount;
  final bool isViewed;

  StatusImg(
      {@required this.userImg,
      @required this.isViewed,
      @required this.statusCount});

  @override
  Widget build(BuildContext context) {
    return !isViewed
        ? DottedBorder(
            dashPattern: [(100 / statusCount).toDouble(), 5],
            strokeCap: StrokeCap.round,
            strokeWidth: 2,
            borderType: BorderType.Circle,
            color: WhatsAppColor.primaryColor,
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.transparent, width: 1)),
              height: 65,
              width: 65,
              child: CircleAvatar(
                backgroundImage: AssetImage(userImg),
              ),
            ),
          )
        : DottedBorder(
            dashPattern: [(100 / statusCount).toDouble(), 5],
            strokeWidth: 2,
            strokeCap: StrokeCap.round,
            borderType: BorderType.Circle,
            color: Colors.grey,
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.transparent, width: 1)),
              height: 65,
              width: 65,
              child: CircleAvatar(
                backgroundImage: AssetImage(userImg),
              ),
            ),
          );
  }
}
