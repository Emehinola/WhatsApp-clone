import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/widgets.dart';
import 'package:whatsapp/backends/backends.dart';

class Home extends StatelessWidget {
  final List<User> _users = getUsers();

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Column(
        children: [
          Container(
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: _users.length,
                  itemBuilder: (context, int index) {
                    return CscWidget(
                      type: 'chats',
                      userImg: '${_users[index].userImg}',
                      userName: '${_users[index].userName}',
                      subTitile: '${_users[index].subTitle}',
                      trailing: '${_users[index].trailing}',
                    );
                  }))
        ],
      )
    ]);
  }
}
