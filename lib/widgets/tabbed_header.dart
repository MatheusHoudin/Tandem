import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabbedHeader extends StatelessWidget implements PreferredSizeWidget{
  TabbedHeader({@required this.title,this.actions,this.tabs}):
    preferredSize = Size.fromHeight(100);

  @override 
  final Size preferredSize;
  final String title;
  final List<Widget> actions;
  final List<Widget> tabs;

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
      bottom: TabBar(
        labelColor: Colors.green,
        tabs: this.tabs,
      ),
    );
  }

}