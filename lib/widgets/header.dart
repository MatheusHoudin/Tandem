import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Header extends StatelessWidget implements PreferredSizeWidget{
  Header({@required this.title,this.actions}):
    preferredSize = Size.fromHeight(60);

  @override 
  final Size preferredSize;
  final String title;
  final List<Widget> actions;

  @override 
  Widget build(BuildContext context){
    return AppBar(
      leading: GestureDetector(
        child: Container(
          height: 60,
          padding: EdgeInsets.all(10),
          child: Image(
            image: AssetImage('lib/images/prof_pic.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        this.title,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
      ),
      actions: actions,
      
    );
  }

}