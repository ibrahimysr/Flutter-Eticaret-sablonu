import 'package:flutter/material.dart';

Widget header(String baslik, context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 29,
      ),
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child:const  Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 27,
        ),
      ),
      const SizedBox(
        height: 24,
      ),
      Text(
        baslik,
        style: TextStyle(fontSize: 24),
      ),
      const SizedBox(
        height: 10,
      )
    ],
  );
}
