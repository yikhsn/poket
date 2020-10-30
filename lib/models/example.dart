class Example {
  String _contoh;

  Example(
    this._contoh,
  );

  Example.map(dynamic obj) {
    this._contoh = obj['contoh'];
  }

  String get contoh => _contoh;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();

    if (contoh != null) {
      map["contoh"] = _contoh;
    }

    return map;
  }

  Example.fromMap(Map<String, dynamic> map) {
    this._contoh = map["contoh"];
  }
}
