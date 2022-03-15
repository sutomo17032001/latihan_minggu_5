import 'dart:convert';

import 'pegawaistaff.dart';

class Staff extends Pegawai {
  int jCuti = 12;
  int StunjHadir = 0;
  int Gajidsr = 0;

  Staff(String? nama, int StunjHadir, int Gajidsr) : super(nama){
    this.jCuti = jCuti;
    this.StunjHadir = StunjHadir;
    this.Gajidsr = Gajidsr;
  }

  get Tgaji {
    return (Gajidsr + StunjHadir);
  }

  void kurangjatahcuti() {
    jCuti = jCuti - 1;
  }

  int get jatahcuti {
    return jCuti;
  }

}