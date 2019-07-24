import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tandem/model/language.dart';
import 'package:tandem/model/learner.dart';
import 'package:tandem/widgets/learners_tab.dart';
import '../widgets/tabbed_header.dart';
import '../widgets/footer.dart';
import '../widgets/featured_learners.dart';
import '../widgets/my_location.dart';

class CommunityScreen extends StatelessWidget {
  CommunityScreen():
    icons = [
      IconButton(icon: Icon(Icons.search,color:contentColor)),
      IconButton(icon: Icon(Icons.tune,color:contentColor))
    ];
  
  final List<Widget> icons;
  static final Color contentColor = Color.fromRGBO(143, 139, 136, 1);
  List<Learner> learners = []
  ..add(Learner(learnerImage: 'lib/images/eu.jpg', learnerName: 'John Calcetino', learningLanguages: <Language>[Language(languageName: 'Portuguese',languageImage: 'lib/images/br.png')], learnedLanguages: <Language>[Language(languageName: 'English',languageImage: 'lib/images/us.png')], phrases: <String>['What movies do you like?'],))
  ..add(Learner(learnerImage: 'lib/images/eu.jpg', learnerName: 'Mariana Valente', learningLanguages: <Language>[Language(languageName: 'French',languageImage: 'lib/images/fr.png')], learnedLanguages: <Language>[Language(languageName: 'English',languageImage: 'lib/images/us.png')], phrases: <String>['Lets eat a croassint?'],))
  ..add(Learner(learnerImage: 'lib/images/eu.jpg', learnerName: 'Matheus Gomes', learningLanguages: <Language>[Language(languageName: 'English',languageImage: 'lib/images/us.png')], learnedLanguages: <Language>[Language(languageName: 'German',languageImage: 'lib/images/de.png')], phrases: <String>['Não sei o que faço aqui'],))
  ..add(Learner(learnerImage: 'lib/images/eu.jpg', learnerName: 'Weslley Sniper', learningLanguages: <Language>[Language(languageName: 'German',languageImage: 'lib/images/de.png')], learnedLanguages: <Language>[Language(languageName: 'Portuguese',languageImage: 'lib/images/br.png')], phrases: <String>['Fon'],));
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
          child: Scaffold(
            appBar: TabbedHeader(title: 'COMMUNITY', actions: icons,tabs: _creatTabs(),),
            body: TabBarView(
            children: [
              LearnersTab(topWidget: FeaturedLearners(featuredLearners: this.learners,),topWidgetFlex: 2,),
              //LearnersTab(learners: this.learners,topWidget: MyLocation(),topWidgetFlex: 1,),
              StreamBuilder(
                stream: Firestore.instance.collection('learners').snapshots(),
                builder: (context, snapshot) {
                  if(!snapshot.hasData) return const Text('Loading');
                  return ListView.builder(
                    itemCount: snapshot.data.documents.length,
                    itemBuilder: (context, index) =>
                      Text(snapshot.data.documents[index]['name'])
                    
                  );
                },
              )
            ],
          ),
            bottomNavigationBar: Footer(),
          ),
    );
  }

  List<Widget> _creatTabs(){
    return <Widget>[
      Tab(child: 
        Text(
          'ALL',
          style: TextStyle(
            color: contentColor,
          ),
        ),
      ),
      Tab(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.near_me,
              color: contentColor,
            ),
            Text(
              'NEAR ME',
              style: TextStyle(
                color: contentColor
              ),
            )
          ],
        ),
      )
    ];
  }
}