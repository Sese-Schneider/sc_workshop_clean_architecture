import 'dart:convert';

import 'package:flutter/services.dart';

class CouchbaseDb {
  Future<Map<String, dynamic>> query() async {
    final data = await rootBundle.loadString('assets/wish_list.json');
    final jsonData = json.decode(data);
    return jsonData;
  }
}
