import 'package:flutter/material.dart';

extension Screen on BuildContext {
  getWidth() {
    return MediaQuery.of(this).size.width;
  }

  getHeight() {
    return MediaQuery.of(this).size.height;
  }

  pushTo({required Widget view, Function(dynamic)? onValue}) {
    return Navigator.of(this)
        .push(MaterialPageRoute(builder: (context) => view))
        .then(onValue ?? (value) {});
  }

  getDialog({required String content}) {
    return showDialog(
        context: this,
        builder: (context) {
          return AlertDialog(
            backgroundColor: const Color.fromARGB(137, 158, 158, 158),
            elevation: 0,
            content: SizedBox(
              height: 200,
              width: 200,
              child: Center(child: Text(content)),
            ),
          );
        });
  }
}
