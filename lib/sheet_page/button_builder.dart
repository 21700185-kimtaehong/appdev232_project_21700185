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
      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: const BorderSide(
            color: Colors.lightBlue,
            width: 2.0,
          ),
        ),
      ),
    ),
    onPressed: onPressed,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          buttonText,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 8.0),
        checkValid(isValid),
      ],
    ),
  );
}
