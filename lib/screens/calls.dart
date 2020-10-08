import 'package:whatsapp/backends/backends.dart';
import 'package:whatsapp/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';

// the calls screen here

class CallsScreen extends StatelessWidget {
  final List<Call> _calls = getCalls();

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Column(
        children: [
          Container(
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: _calls.length,
                  itemBuilder: (context, int index) {
                    return CscWidget(
                      callType: '${_calls[index].type}',
                      type: 'calls',
                      userImg: '${_calls[index].userImg}',
                      userName: '${_calls[index].userName}',
                      subTitile: '${_calls[index].time}',
                      trailing: '${_calls[index].type}',
                    );
                  }))
        ],
      )
    ]);
  }
}
