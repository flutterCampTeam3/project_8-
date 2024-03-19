

import 'package:get_storage/get_storage.dart';

class AllData {
  final box = GetStorage();
  String token = '';
  String id = '';


  AllData() {
    getToken();
    getId();
  }

  addToken() async {
    if (token.isNotEmpty) {
      await box.write("token", token);
    }
    box.save();
  }

  addId() async {
    if (id.isNotEmpty) {
      await box.write("Id", id);
    }
    box.save();
  }

  getToken() {
    if (box.hasData("token")) {
      if (token.isEmpty) {
        token = box.read("token");
      }
    }
  }

  getId() {
    if (box.hasData("Id")) {
      if (token.isEmpty) {
        id = box.read("Id");
      }
    }
  }

}
