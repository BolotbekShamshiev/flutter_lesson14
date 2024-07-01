// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lesson14_practice/widgets/common_text.dart';

class ManDetailScreen extends StatefulWidget {
  final String name;
  final String age;
  final String imageUrl;

   ManDetailScreen({
    Key? key,
    required this.name,
    required this.age,
    required this.imageUrl,
  }) : super(key: key);

  @override
  State<ManDetailScreen> createState() => _ManDetailScreenState();
}

class _ManDetailScreenState extends State<ManDetailScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          Image.asset(
            widget.imageUrl,
          ),
          Padding(
            padding:  EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/online.png',
                      width: 10,
                      height: 10,
                    ),
                    SizedBox(width: 10),
                    Text(
                      '${widget.name}',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(child: SizedBox(width: 20)),
                    Text(
                      '${widget.age} y.o.',
                      style: TextStyle(
                        color: Color(0xffC4DAF1),
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonText(title: 'Location:'),
                        CommonText(title: 'Languages:'),
                        CommonText(title: 'Education:'),
                        CommonText(title: 'Job:'),
                        CommonText(title: 'Zodiac:'),
                        CommonText(title: 'Height:'),
                        CommonText(title: 'Eye color:'),
                        CommonText(title: 'Hair color:'),
                        CommonText(title: 'Smoking:'),
                      ],
                    ),
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/french.png',
                              width: 18,
                              height: 13,
                            ),
                            SizedBox(width: 5),
                            CommonText(title: 'France, Lion'),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/britan.png',
                              width: 18,
                              height: 13,
                            ),
                            SizedBox(width: 5),
                            CommonText(title: 'English'),
                          ],
                        ),
                        CommonText(title: 'University degree'),
                        CommonText(title: 'Museum worker, lecturer'),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/zodiac.png',
                              width: 18,
                              height: 18,
                            ),
                            SizedBox(width: 5),
                            CommonText(title: 'Pisces'),
                          ],
                        ),
                        CommonText(title: '154 cm (5\'05")'),
                        CommonText(title: 'Green'),
                        CommonText(title: 'Redhead'),
                        CommonText(title: 'Non-smoker'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(
          size: 23,
          // color: Colors.blue,
        ),
        unselectedIconTheme: IconThemeData(
          size: 20,
          // color: Colors.black,
        ),
        unselectedLabelStyle: TextStyle(
          color: Color(0xff757575),
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
        selectedLabelStyle: TextStyle(
          fontSize: 13,
          // color: Colors.blue,
        ),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(('assets/images/menu.png'))),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/ladies.png')),
            label: 'Ladies',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/comment.png')),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/profile.png',
              width: 22,
              height: 22,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
