import 'fperson.dart';


class Mahasiswa extends Person {
  double ipk = 0.0;
  double ips = 0;
  bool? mstatus;

  Mahasiswa(String? nama, double sks, double ipk, double ips, bool? status) : super(nama, sks){
    this.ipk = ipk;
    this.ips = ips;
    this.mstatus = mstatus;
  }

  void setstatus(bool dtStatus) {
    mstatus = dtStatus;
  }

  String getStatus() {
    if (mstatus == true) {
      return "Cuti";
    } else {
      return "Aktif";
    }
  }

}