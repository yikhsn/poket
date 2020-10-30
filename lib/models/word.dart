class Word {
  int _eid;
  String _entri;
  String _jenis;
  String _entri_var;
  String _silabel;
  String _lafal;
  int _induk;
  String _jenis_rujuk;
  String _entri_rujuk;
  int _mid;
  String _ragam;
  String _ragam_var;
  String _kelas;
  String _bahasa;
  String _bidang;
  String _ki;
  String _kp;
  String _akr;
  String _makna;
  String _ilmiah;
  String _kimia;
  String _id_entri;
  int _id_hom;
  int _eaktif;
  int _polisem;
  int _maktif;

  Word(
    this._eid,
    this._entri,
    this._jenis,
    this._entri_var,
    this._silabel,
    this._lafal,
    this._induk,
    this._jenis_rujuk,
    this._entri_rujuk,
    this._mid,
    this._ragam,
    this._ragam_var,
    this._kelas,
    this._bahasa,
    this._bidang,
    this._ki,
    this._kp,
    this._akr,
    this._makna,
    this._ilmiah,
    this._kimia,
    this._id_entri,
    this._id_hom,
    this._eaktif,
    this._polisem,
    this._maktif,
  );

  Word.map(dynamic obj) {
    this._eid = obj['eid'];
    this._entri = obj['entri'];
    this._jenis = obj['jenis'];
    this._entri_var = obj['entri_var'];
    this._silabel = obj['silabel'];
    this._lafal = obj['lafal'];
    this._induk = obj['induk'];
    this._jenis_rujuk = obj['jenis_rujuk'];
    this._entri_rujuk = obj['entri_rujuk'];
    this._mid = obj['mid'];
    this._ragam = obj['ragam'];
    this._ragam_var = obj['ragam_var'];
    this._kelas = obj['kelas'];
    this._bahasa = obj['bahasa'];
    this._bidang = obj['bidang'];
    this._ki = obj['ki'];
    this._kp = obj['kp'];
    this._akr = obj['akr'];
    this._makna = obj['makna'];
    this._ilmiah = obj['ilmiah'];
    this._kimia = obj['kimia'];
    this._id_entri = obj['id_entri'];
    this._id_hom = obj['id_hom'];
    this._eaktif = obj['eaktif'];
    this._polisem = obj['polisem'];
    this._maktif = obj['maktif'];
  }

  int get eid => _eid;
  String get entri => _entri;
  String get jenis => _jenis;
  String get entri_var => _entri_var;
  String get silabel => _silabel;
  String get lafal => _lafal;
  int get induk => _induk;
  String get jenis_rujuk => _jenis_rujuk;
  String get entri_rujuk => _entri_rujuk;
  int get mid => _mid;
  String get ragam => _ragam;
  String get ragam_var => _ragam_var;
  String get kelas => _kelas;
  String get bahasa => _bahasa;
  String get bidang => _bidang;
  String get ki => _ki;
  String get kp => _kp;
  String get akr => _akr;
  String get makna => _makna;
  String get ilmiah => _ilmiah;
  String get kimia => _kimia;
  String get id_entri => _id_entri;
  int get id_hom => _id_hom;
  int get eaktif => _eaktif;
  int get polisem => _polisem;
  int get maktif => _maktif;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["entri"] = _entri;
    map["jenis"] = _jenis;
    map["entri_var"] = _entri_var;
    map["silabel"] = _silabel;
    map["lafal"] = _lafal;
    map["induk"] = _induk;
    map["jenis_rujuk"] = _jenis_rujuk;
    map["entri_rujuk"] = _entri_rujuk;
    map["mid"] = _mid;
    map["ragam"] = _ragam;
    map["ragam_var"] = _ragam_var;
    map["kelas"] = _kelas;
    map["bahasa"] = _bahasa;
    map["bidang"] = _bidang;
    map["ki"] = _ki;
    map["kp"] = _kp;
    map["akr"] = _akr;
    map["makna"] = _makna;
    map["ilmiah"] = _ilmiah;
    map["kimia"] = _kimia;
    map["id_entri"] = _id_entri;
    map["id_hom"] = _id_hom;
    map["eaktif"] = _eaktif;
    map["polisem"] = _polisem;
    map["maktif"] = _maktif;

    if (eid != null) {
      map["eid"] = _eid;
    }

    return map;
  }

  Word.fromMap(Map<String, dynamic> map) {
    this._eid = map["eid"];
    this._entri = map["entri"];
    this._jenis = map["jenis"];
    this._entri_var = map["entri_var"];
    this._silabel = map["silabel"];
    this._lafal = map["lafal"];
    this._induk = map["induk"];
    this._jenis_rujuk = map["jenis_rujuk"];
    this._entri_rujuk = map["entri_rujuk"];
    this._mid = map["mid"];
    this._ragam = map["ragam"];
    this._ragam_var = map["ragam_var"];
    this._kelas = map["kelas"];
    this._bahasa = map["bahasa"];
    this._bidang = map["bidang"];
    this._ki = map["ki"];
    this._kp = map["kp"];
    this._akr = map["akr"];
    this._makna = map["makna"];
    this._ilmiah = map["ilmiah"];
    this._kimia = map["kimia"];
    this._id_entri = map["id_entri"];
    this._id_hom = map["id_hom"];
    this._eaktif = map["eaktif"];
    this._polisem = map["polisem"];
    this._maktif = map["maktif"];
  }
}

// SELECT
// E.eid,
// E.entri,
// E.entri_var,
// E.jenis,
// E.silabel,
// E.lafal,
// E.induk,
// E.jenis_rujuk,
// E.entri_rujuk,
// M.mid,
// M.ragam,
// M.ragam_var,
// M.kelas,
// M.bahasa,
// M.bidang,
// M.ki,
// M.kp,
// M.akr,
// M.makna,
// M.ilmiah,
// M.kimia,
// E.id_entri,
// E.id_hom,
// E. AS eaktif,
// M.polisem,
// M.aktif AS maktif
// from Entri as E
// left join Makna as M
// 	on E.eid = M.eid

// "SELECT E.eid, E.entri, E.entri_var, E.jenis, E.silabel, E.lafal, E.induk, E.jenis_rujuk, E.entri_rujuk, M.mid, M.ragam, M.ragam_var, M.kelas, M.bahasa, M.bidang, M.ki, M.kp, M.akr, M.makna, M.ilmiah, M.kimia, E.id_entri, E.id_hom, E.aktif AS eaktif, M.polisem, M.aktif AS maktif from Entri AS E LEFT JOIN Makna as M 	on E.eid = M.eid WHERE $columnEid = $eid");
