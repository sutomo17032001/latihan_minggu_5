class Person {
  String? _nama;
  double _sks = 0.0;

  Person(this._nama, this._sks);

  set nama(String dtNama) {
    _nama = dtNama;
  }

  set sks(double dtSks) {
    _sks = dtSks;
  }

  String get nama => this._nama!;
  double get sks => this._sks;
}


