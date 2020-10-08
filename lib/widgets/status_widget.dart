// this widget defines the chats, status and call
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:whatsapp/widgets/widgets.dart';
// import 'package:whatsapp/colors/colors.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class StatusWidget extends StatelessWidget {
  final bool isViewed;
  final String userImg;
  final String user;
  final String time;
  final int statusCount;

  StatusWidget(
      {@required this.userImg,
      @required this.user,
      @required this.time,
      this.isViewed = false,
      @required this.statusCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              StatusImg(
                userImg: userImg,
                isViewed: isViewed,
                statusCount: statusCount,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(user,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17)),
                    Text(time,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                            fontSize: 18)),
                    SizedBox(height: 5),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 72.0, right: 0.0),
            child: Divider(), // the horizontal divider -- line
          )
        ],
      ),
    );
  }
}
