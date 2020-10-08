import 'package:whatsapp/backends/backends.dart';

List<Call> getCalls() {
  List<Call> calls = [];
  Call callObj;
  List<String> _names = [
    'Samuel',
    'Emehinola',
    'Sunday',
    '090873673840',
    'Jide',
    'Victoria',
    'Emeke',
    'Honour',
    'Tunde',
    'Bayo'
  ];

  for (var index = 0; index <= 9; index++) {
    callObj = index % 2 == 0
        ? Call(
            userImg: './assets/img${index + 1}.jpg',
            userName: '${_names[index]}',
            time: 'July, 23, 2019, 11:30 PM',
            type: 'voice call')
        : Call(
            userImg: './assets/img${index + 1}.jpg',
            userName: '${_names[index]}',
            time: 'Just now',
            type: 'video call');

    calls.add(callObj);
  }
  return calls;
}
