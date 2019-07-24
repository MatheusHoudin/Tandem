import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tandem/model/learner.dart';

class LearnerItem extends StatelessWidget {
  LearnerItem({this.learnerData});

  final Learner learnerData;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Divider(
        color: Colors.grey,
      ),
      Container(
        padding: EdgeInsets.all(10),
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image(
                  image: AssetImage(this.learnerData.learnerImage),
                  fit: BoxFit.fill,
                  height: 130,
                  width: 130,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(left: 10),
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 4),
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            Text(
                              this.learnerData.learnerName,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                        ]),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.only(
                              left: 8, right: 8, bottom: 2, top: 2),
                          child: Text(
                            'New',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Text(
                      learnerData.phrases[0],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 25,
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'SPEAKS',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                ClipOval(
                                  child: Image(
                                    image: AssetImage(learnerData
                                        .learnedLanguages[0].languageImage),
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                                Text(
                                  '+${learnerData.learnedLanguages.length}',
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'LEARNS',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                              ClipOval(
                                child: Image(
                                  image: AssetImage(learnerData
                                      .learningLanguages[0].languageImage),
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              Text(
                                '+${learnerData.learningLanguages.length}',
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
