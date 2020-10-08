// this widget defines the chats, status and call
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:whatsapp/colors/colors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CscWidget extends StatelessWidget {
  final String callType;
  final String type;
  final String userImg;
  final String userName;
  final String subTitile;
  final String trailing;

  CscWidget(
      {this.callType,
      @required this.type,
      @required this.userImg,
      @required this.userName,
      @required this.subTitile,
      @required this.trailing});

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
              Container(
                height: 65,
                width: 65,
                child: CircleAvatar(
                  backgroundImage: AssetImage(userImg),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(userName,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17)),
                    SizedBox(height: 5),
                    type == 'chats'
                        ? Row(
                            children: [
                              Icon(MdiIcons.checkAll, color: Colors.green),
                              SizedBox(width: 10),
                              Text(subTitile,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500))
                            ],
                          )
                        : Row(
                            children: [
                              Icon(MdiIcons.callMissed, color: Colors.red),
                              Text(subTitile,
                                  style: TextStyle(color: Colors.grey))
                            ],
                          )
                  ],
                ),
              ),
              type == 'chats'
                  ? Text(trailing, style: TextStyle(color: Colors.grey))
                  : Icon(callType == 'video call' ? Icons.videocam : Icons.call,
                      color: WhatsAppColor.primaryDark)
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
