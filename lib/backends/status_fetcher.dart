import 'package:whatsapp/backends/status_model.dart';

List<StatusModel> getStatus() {
  List<StatusModel> status = [];
  StatusModel statusObj;
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
    statusObj = StatusModel(
      user: '${_names[index]}',
      statusCount: index + 1,
      statusImg: './assets/img${index + 1}.jpg',
      time: '$index minutes ago',
    );

    status.add(statusObj);
  }

  return status;
}
