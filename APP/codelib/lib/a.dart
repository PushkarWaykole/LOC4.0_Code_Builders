import 'dart:convert';
import 'package:http/http.dart' as http;

import 'book.dart';

Future<List<String>> getData(String newsType) async {
  List<String> list = [];
  String link =
      "https://api.npoint.io/170c17212f0f966481e9";
  var res = await http
      .get(Uri.parse(Uri.encodeFull(link)), headers: {"Accept": "application/json"});
  if (res.statusCode == 200) {
    var data = json.decode(res.body);
    for (int i=0;i<data['books'].length;i++){
      list.add(data['books']['book${i+1}']['title']);
    }
  }
  print("List Size: ${list.length}");
  return list;
}
