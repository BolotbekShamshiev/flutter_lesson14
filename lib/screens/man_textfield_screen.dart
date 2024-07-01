import 'package:flutter/material.dart';
import 'package:lesson14_practice/screens/man_detail_screen.dart';
import 'package:lesson14_practice/widgets/common_button.dart';
import 'package:lesson14_practice/widgets/common_card.dart';

class ManTextfieldScreen extends StatefulWidget {
  const ManTextfieldScreen({super.key});

  @override
  State<ManTextfieldScreen> createState() => _ManTextfieldScreenState();
}

class _ManTextfieldScreenState extends State<ManTextfieldScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController imageController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    imageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leadingWidth: 100,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              SizedBox(width: 10),
              Icon(
                Icons.arrow_back_ios,
                color: Colors.blue,
              ),
              Text(
                'Back',
                style: TextStyle(
                  color: Color(0xff0099FF),
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        title: Text(
          'MAN',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CommonCard(title: 'Your name', userController: nameController),
            SizedBox(height: 30),
            CommonCard(title: 'Age', userController: ageController),
            SizedBox(height: 30),
            CommonCard(title: 'Image Url', userController: imageController),
            Spacer(),
            CommonButton(
              title: 'Next',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ManDetailScreen(
                      name: nameController.text,
                      age: ageController.text,
                      imageUrl: imageController.text,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
