import 'package:flutter/material.dart';

class MyLocation extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'MY LOCATION',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10
              ),
            ),
            GestureDetector(
              onTap: () => print('Alert'),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Jaguaruana, Brazil',
                    style: TextStyle(
                      fontSize: 16
                    ),
                  ),
                  Icon(Icons.refresh,textDirection: TextDirection.rtl,color: Colors.blueAccent,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}