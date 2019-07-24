import 'package:flutter/material.dart';
import 'package:tandem/model/learner.dart';
import 'package:tandem/widgets/rounded_learner_image.dart';

class FeaturedLearners extends StatelessWidget {
  FeaturedLearners({this.featuredLearners});

  final List<Learner> featuredLearners;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Text(
                  "TODAY'S FEATURED LEARNERS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Icon(
                  Icons.star,
                  size: 18,
                  color: Colors.pink[300],
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: featuredLearners.length,
              itemBuilder: (context, index) {
                return RoundedLearnerImage(
                  learner: this.featuredLearners[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
