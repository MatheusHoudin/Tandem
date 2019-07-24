import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tandem/model/language.dart';

class Learner {
  String learnerImage;
  String learnerName;
  List<String> phrases;
  List<Language> learnedLanguages;
  List<Language> learningLanguages;
  bool isPremium;

  Learner({this.learnerName,this.phrases,this.learnedLanguages,this.learningLanguages,this.isPremium,this.learnerImage});

  static convertSnapshotToClass(DocumentSnapshot doc){
    return Learner(
      learnerName: doc['name'],
      learnerImage: 'lib/images/eu.jpg',
      phrases: <String>[doc['phrases'][0]],
      learnedLanguages: <Language>[Language(languageImage: doc['learnedLanguages'][0]['icon'], languageName: doc['learnedLanguages'][0]['name'])],
      learningLanguages: <Language>[Language(languageImage: doc['learningLanguages'][0]['icon'], languageName: doc['learningLanguages'][0]['name'])],
    );
  }
}