import 'package:flutter/material.dart';

class Footer extends StatelessWidget{
  Footer():
    footerItems = [
      _createItem('People', Icons.people),
      _createItem('Tutors', Icons.school),
      _createItem('Chats', Icons.chat),
      _createItem('Pro', Icons.star),
    ];

  final List<BottomNavigationBarItem> footerItems;

  static BottomNavigationBarItem _createItem(String title,IconData icon){
    return BottomNavigationBarItem(
      icon: Icon(icon,color:Color.fromRGBO(143, 139, 136, 1)),
      title: Text(
        title,
        style: TextStyle(
          color:Color.fromRGBO(143, 139, 136, 1),
        ),
      )
    );
  }

  @override 
  Widget build(BuildContext context){
    return BottomNavigationBar(
      showUnselectedLabels: true,
      items: footerItems,
      currentIndex: 0,
      selectedIconTheme: IconThemeData(color: Color.fromARGB(19, 197, 191, 1)),
      selectedItemColor: Color.fromARGB(19, 197, 191, 1),
    );
  }
}