import 'package:whatsapp/backends/backends.dart';

List<User> getUsers() {
  List<User> users = [];
  User userObj;

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
    userObj = User(
        userName: _names[index],
        userImg: './assets/img${index + 1}.jpg',
        subTitle: 'Hello dear',
        trailing: '8: 0$index PM');

    users.add(userObj);
  }
  return users;
}

String getCurrentUser() {
  String currentUser = './assets/img/currentUser.jpg';
  return currentUser;
}
