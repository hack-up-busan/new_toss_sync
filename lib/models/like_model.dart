import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';

class LikeProvider extends ChangeNotifier {
  List<String> _words = [];
  List<String> get words => _words;

  void toggleLike(String word){
    final isLiked = _words.contains(word);

    if(isLiked) {
      _words.remove(word);
    }
    else {
      _words.add(word);
    }
    notifyListeners();
  }

  bool isLiked(String word) {
    final isLiked = _words.contains(word);
    return isLiked;
  }

  void clearLike(){
    _words =[];
    notifyListeners();
  }
}