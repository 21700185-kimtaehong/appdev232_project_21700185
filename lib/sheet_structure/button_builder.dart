import 'package:flutter/material.dart';

Widget createCustomButton({
  required String buttonText,
  required VoidCallback onPressed,
  required bool isValid,
}) {
  Icon checkValid(bool isValid) {
    if (isValid) {
      return const Icon(Icons.check);
    } else {
      return const Icon(Icons.close, color: Colors.red);
    }
  }

  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(
            color: Color.fromARGB(255, 241, 165, 2),
            width: 2.0,
          ),
        ),
      ),
    ),
    onPressed: onPressed,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(buttonText),
        const SizedBox(width: 8.0),
        checkValid(isValid),
      ],
    ),
  );
}
