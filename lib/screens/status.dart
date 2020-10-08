import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/widgets.dart';
import 'package:whatsapp/backends/backends.dart';

class Status extends StatelessWidget {
  final List<StatusModel> _status = getStatus();
  final String currrentUser = getCurrentUser();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[200],
        child: ListView(
          children: <Widget>[
            Column(children: [
              Container(
                // container for the upper user add status
                child: Row(
                  children: [
                    UserAvatatar(),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3),
                        Text(
                          'My status',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 20),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Tap to add status update',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ]),
            Container(
              height: 35,
              color: Colors.grey[350],
              child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10, bottom: 5),
                  child: Text('Recent updates',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey[700]))),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _status.length,
                    itemBuilder: (context, int index) {
                      return StatusWidget(
                        statusCount: _status[index].statusCount,
                        userImg: '${_status[index].statusImg}',
                        user: '${_status[index].user}',
                        time: '${_status[index].time}',
                      );
                    })),
            // for viewed status
            Container(
              height: 35,
              color: Colors.grey[350],
              child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10, bottom: 5),
                  child: Text('Viewed status',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey[700]))),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _status.length,
                    itemBuilder: (context, int index) {
                      return StatusWidget(
                        statusCount: _status[index].statusCount,
                        isViewed: true,
                        userImg: '${_status[index].statusImg}',
                        user: '${_status[index].user}',
                        time: '${_status[index].time}',
                      );
                    }))
          ],
        ));
  }
}
