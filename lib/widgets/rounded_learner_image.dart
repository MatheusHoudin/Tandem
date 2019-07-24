import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:tandem/model/learner.dart';

class RoundedLearnerImage extends StatelessWidget {
  RoundedLearnerImage({this.learner});

  final Learner learner;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 6),
      child: Column(
        children: <Widget>[
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(this.learner.learnerImage))),
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 4),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5)),
              ),
              Center(
                child: Text(this.learner.learnerName),
              )
            ],
          )
        ],
      ),
    );
  }
}
