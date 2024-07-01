import 'package:flutter/material.dart';
import 'package:lesson14_practice/screens/woman_textfield_screen.dart';
import 'package:lesson14_practice/widgets/common_button.dart';
import 'package:lesson14_practice/screens/man_textfield_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _Screen1State();
}

class _Screen1State extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(height: 100),
            Text(
              'I am',
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 64,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 30),
            CommonButton(
              title: 'Man',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManTextfieldScreen()),
                );
              },
            ),
            SizedBox(height: 30),
            CommonButton(title: 'Woman', 
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WomanTextfieldScreen()),
                );
              },),
            SizedBox(height: 200),
            RichText(
              text: TextSpan(
                text: 'Already have account?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  WidgetSpan(child: SizedBox(width: 8)),
                  TextSpan(
                    text: 'Log in',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
