import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

class ShowSnackBar {
  static void showMessage(
      {required String message, required BuildContext context}) {
    showFlash(
        context: context,
        duration: const Duration(seconds: 6),
        builder: (_, controller) {
          return Flash(
            backgroundColor: Colors.black,
            controller: controller,
            position: FlashPosition.bottom,
            behavior: FlashBehavior.fixed,
            child: FlashBar(
              icon: const Icon(
                Icons.check_circle,
                size: 25.0,
                color: Colors.greenAccent,
              ),
              content: Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        });
  }
}
