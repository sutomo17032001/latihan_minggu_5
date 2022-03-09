import 'fperson.dart';

class Staff extends Person {
  int jCuti = 12;
  int StunjHadir = 0;
  int Tgaji = 0;

  Staff(String? nama, int sks, int jCuti, int StunjHadir, int Tgaji) : super(nama, sks){
    this.jCuti = jCuti;
    this.StunjHadir = StunjHadir;
    this.Tgaji = Tgaji;
  }

  get hTgaji {
    return (Tgaji + StunjHadir);
  }

}