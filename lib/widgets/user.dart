import 'package:flutter/material.dart';
import 'package:whatsapp/colors/colors.dart';

// creating a cutsom widget here for the user profile avatar

class UserAvatatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Stack(
        children: [
          Container(
            height: 65,
            width: 65,
            child: CircleAvatar(
                backgroundImage: AssetImage('./assets/currentUser.jpg')),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 23,
              width: 23,
              decoration: BoxDecoration(
                  color: WhatsAppColor.primaryLight, shape: BoxShape.circle),
              child: Icon(Icons.add, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
