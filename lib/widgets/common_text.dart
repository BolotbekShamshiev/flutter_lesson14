// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String title;
  
  const CommonText({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Color(0xff000000),
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
