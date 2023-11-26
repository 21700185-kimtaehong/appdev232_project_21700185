import 'package:flutter/material.dart';

Widget createCustomButton({
  required String buttonText,
  required VoidCallback onPressed,
}) {
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
        SizedBox(width: 8.0), // 텍스트와 아이콘 사이의 간격 설정
        Icon(Icons.check), // check 아이콘 추가
      ],
    ),
  );
}
