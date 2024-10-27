import 'package:flutter/material.dart';
import 'package:management_student_app/Screens/calandar.dart';
import 'package:management_student_app/Screens/home_page.dart';
import 'package:management_student_app/Utils/colors.dart';

class SchoolManagmentScreen extends StatefulWidget {
  const SchoolManagmentScreen({super.key});

  @override
  State<SchoolManagmentScreen> createState() => _SchoolManagmentScreenState();
}

class _SchoolManagmentScreenState extends State<SchoolManagmentScreen> {
    int selectedIndex=0;
    final List pages=[
      HomePage(),
      Scaffold(),
      Scaffold(),
      Calander(),
      Scaffold(),
    ];
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: kBackground,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.insert_chart,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.done,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble,
              ),
              label: "",
            ),
          ],
        ),
        body: pages[selectedIndex],
      );
    }
  }