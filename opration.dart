import 'Birthday.dart';

class Opration{
  
printbirthday(List<Birthday> list) {
  for (int i = 0; i < list.length; i++) {
    print("the title:${list[i].name},the description:${list[i].brithday}");
  }
}

removebirthday(List<Birthday> list, int a) {
  for (int i = 0; i < list.length; i++) {
    if (a == list[i].name) {
      list.remove(list[i]);
    }
    "the title:${list[i].name},the description:${list[i].name}";
  }
}

searchbirthday(List<Birthday> list, String a) {
  for (int i = 0; i < list.length; i++) {
    if (a == list[i].name || a == list[i].brithday.split('/').last) {
      print("the title:${list[i].name},the description:${list[i].brithday}");
    } else {
      print("no found");
    }
  }
}
}