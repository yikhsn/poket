class Word {
  int _eid;
  String _entri;
  String _jenis;

  Word(this._eid, this._entri, this._jenis);

  Word.map(dynamic obj) {
    this._eid = obj['eid'];
    this._entri = obj['entri'];
    this._jenis = obj['jenis'];
  }

  String get entri => _entri;
  String get jenis => _jenis;
  int get eid => _eid;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["entri"] = _entri;
    map["jenis"] = _jenis;

    if (eid != null) {
      map["eid"] = _eid;
    }

    return map;
  }

  Word.fromMap(Map<String, dynamic> map) {
    this._entri = map["entri"];
    this._jenis = map["jenis"];
    this._eid = map["eid"];
  }
}
