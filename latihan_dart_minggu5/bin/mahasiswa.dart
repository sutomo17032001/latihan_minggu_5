import 'fperson.dart';
import 'status.dart';

class Mahasiswa extends Person implements Status {
  int ipk = 0;
  int ips = 0;
  int mstatus = 0;

  Mahasiswa(String? nama, int sks, int ipk, int ips, int status) : super(nama, sks){
    this.ipk = ipk;
    this.ips = ips;
    this.mstatus = mstatus;
  }

  get Hipk {
    return ipk;
  }

  @override
  String status() {
    // TODO: implement status
    if (mstatus == 0) {
      return 'Aktif';
    }else {
      return 'Cuti';
    }
  }
}