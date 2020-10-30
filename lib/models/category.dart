class Category {
  String _kategori;
  String _katid;
  String _jenis;

  Category(
    this._kategori,
    this._katid,
    this._jenis,
  );

  Category.map(dynamic obj) {
    this._kategori = obj['kategori'];
    this._katid = obj['katid'];
    this._jenis = obj['jenis'];
  }

  String get kategori => _kategori;
  String get katid => _katid;
  String get jenis => _jenis;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();

    if (kategori != null) {
      map["kategori"] = _kategori;
    }

    if (katid != null) {
      map["katid"] = _katid;
    }

    if (jenis != null) {
      map["katid"] = _jenis;
    }

    return map;
  }

  Category.fromMap(Map<String, dynamic> map) {
    this._kategori = map["kategori"];
    this._katid = map["katid"];
    this._jenis = map["jenis"];
  }
}
