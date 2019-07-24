import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tandem/model/learner.dart';
import 'package:tandem/widgets/learner_item.dart';

class LearnersTab extends StatefulWidget {
  LearnersTab({this.topWidget, this.topWidgetFlex});

  final Widget topWidget;
  final int topWidgetFlex;

  _LearnersTabState createState() => _LearnersTabState();
}

class _LearnersTabState extends State<LearnersTab> {
  List<Learner> learners;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(flex: widget.topWidgetFlex, child: widget.topWidget),
        Expanded(
            flex: 4,
            child: StreamBuilder(
              stream: Firestore.instance.collection('learners').snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: Text('Loading...'),
                  );
                }
                return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) =>
                      LearnerItem(learnerData: Learner.convertSnapshotToClass(snapshot.data.documents[index])),
                );
              },
            ))
      ],
    );
  }

}
