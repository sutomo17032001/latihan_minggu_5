class Person {
  String? _nama;
  int _sks = 0;

  Person(this._nama, this._sks);

  set nama(String dtNama) {
    _nama = dtNama;
  }

  set sks(int dtSks) {
    _sks = dtSks;
  }

  String get nama => this._nama!;
  int get sks => this._sks;
}


