import 'fperson.dart';
import 'mahasiswa.dart';

class DosenLB extends Person {
  int tGajisks = 0;
  int Gajidsr = 0;

  DosenLB(String? nama, double sks, int tGajisks, int Gajidsr) : super(nama, sks){
    this.tGajisks = tGajisks;
    this.Gajidsr = Gajidsr;
  }

  get Gaji {
    return (sks * tGajisks + Gajidsr);
  }  

  get Hsks {
    return (sks);
  }
}

class DosenTetap extends Person {
  int tGajisks = 0;
  int Gajidsr = 0;
  int tunjHadir = 0;

  DosenTetap(String? nama, double sks, int tGajisks, int tunjHadir, int Gajidsr) : super(nama, sks){
    this.tGajisks = tGajisks;
    this.tunjHadir = tunjHadir;
    this.Gajidsr = Gajidsr;
  }
  
  get Gaji {
    return (sks * tGajisks + tunjHadir + Gajidsr);
  }  

  get Hsks {
    return (sks);
  }
}

class DosenTamu extends Person {
  int tGajisks = 0;
  int tunjHadir = 0;

  DosenTamu(String? nama, double sks, int tGajisks, int tunjHadir) : super(nama, sks) {
    this.tGajisks = tGajisks;
    this.tunjHadir = tunjHadir;
  }

  get Gaji {
    return (sks * tGajisks + tunjHadir);
  } 

  get Hsks {
    return (sks);
  }
}