// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CommonCard extends StatelessWidget {
  final String title;
  final TextEditingController userController;

  const CommonCard({
    Key? key,
    required this.title,
    required this.userController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 30),
        TextField(
          controller: userController,
          decoration: InputDecoration(
            filled: false,
            fillColor: Color(0xffE8E8E8),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                width: 2,
                color: Color(0xff000000),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                width: 1,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
