import 'dart:convert';
import 'dart:io';

class CouchbaseDb {
  Map<String, dynamic> query() {
    String queryResult;
    try {
      File('couchbase${Platform.pathSeparator}wish_list').readAsStringSync();
    } on FileSystemException catch (_) {
      File(
        'lib${Platform.pathSeparator}couchbase${Platform.pathSeparator}wish_list',
      ).readAsStringSync();
    }
    return json.decode(queryResult);
  }
}
