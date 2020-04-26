class Word {
  int _id;
  String _katakunci;
  String _artikata;

  Word(this._id, this._katakunci, this._artikata);

  Word.map(dynamic obj) {
    this._id = obj['_id'];
    this._katakunci = obj['katakunci'];
    this._artikata = obj['artikata'];
  }

  String get katakunci => _katakunci;
  String get artikata => _artikata;
  int get id => _id;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["katakunci"] = _katakunci;
    map["artikata"] = _artikata;

    if (id != null) {
      map["_id"] = _id;
    }

    return map;
  }

  Word.fromMap(Map<String, dynamic> map) {
    this._katakunci = map["katakunci"];
    this._artikata = map["artikata"];
    this._id = map["_id"];
  }
}
