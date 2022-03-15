import 'dart:io';
import 'mahasiswa.dart';
import 'dosen.dart';
import 'staff.dart';

void main (List<String> arguments) {
  Mahasiswa mhs1 = Mahasiswa('Beta', 20, 3.21, 3.2, true);
  DosenLB dlb1 = DosenLB('Andrew', 20, 40000, 1500000);
  DosenTamu dtm1 = DosenTamu('Gilbert', 18, 40000, 3000000);
  DosenTetap dtt1 = DosenTetap('Anton', 21, 40000, 3000000, 2000000);
  Staff stf1 = Staff('Albert', 2000000, 2500000);


  while (true) {
    print("=== Menu ===");
    print("1. Menu Mahasiswa");
    print("2. Menu Dosen");
    print("3. Menu Staf");
    print("4. Close Menu");
    String? type = stdin.readLineSync();
    int chc = int.parse(type!);

    if (chc == 1) {
      while (true) {
        print("=== Menu Mahasiswa ===");
        print("1. Detail Mahasiswa");
        print("2. Change Status");
        print("3. Exit");

        int chcmhs = int.parse(stdin.readLineSync()!);
        if(chcmhs == 1){
          print('Nama: ${mhs1.nama} -- SKS: ${mhs1.sks} -- IPK: ${mhs1.ipk} -- IPS: ${mhs1.ips} -- Status: ${mhs1.getStatus()}');
        }else if(chcmhs == 2){
           if (mhs1.getStatus() == "Aktif") {
            mhs1.setstatus(false);
            print("Status Mahasiswa telah diubah ke 'Cuti'");
          } else {
            mhs1.setstatus(true);
            print("Status Mahasiswa telah diubah ke 'Aktif'");
          }
        }else if(chcmhs == 3){
          break;
        }
      }
    }
      
      else if (chc == 2){
        while (true){
          print("Menu Dosen");
          print("1. DosenLB");
          print("2. DosenTamu");
          print("3. DosenTetap");
          print("4. Exit");

          int chcdosen = int.parse(stdin.readLineSync()!);
          if(chcdosen == 1){
            while(true) {
              print("Menu DosenLB");
              print("1. Detail DosenLB");
              print("2. Total Gaji");
              print("3. Exit");

              int chcdosenlb = int.parse(stdin.readLineSync()!);
              if(chcdosenlb == 1){
                print('Nama: ${dlb1.nama} -- Jumlah SKS yang diampu: ${dlb1.sks} -- Gaji Dasar: ${dlb1.Gajidsr}');
              }else if(chcdosenlb == 2){
                print('Total Gaji: ${dlb1.Gaji}');
              }else if(chcdosenlb == 3){
                break;
              }

            }
          }
          
          else if(chcdosen == 2){
            while(true) {
              print("Menu DosenTamu");
              print("1. Detail DosenTamu");
              print("2. Total Gaji");
              print("3. Exit");

              int chcdosentamu = int.parse(stdin.readLineSync()!);
              if(chcdosentamu == 1){
                print('Nama: ${dtm1.nama} -- Jumlah SKS yang diampu: ${dtm1.sks} -- Tunjangan Kehadiran: ${dtm1.tunjHadir}');
              }else if(chcdosentamu == 2){
                print('Total Gaji: ${dtm1.Gaji}');
              }else if(chcdosentamu == 3){
                break;
              }

            }
          }

          else if(chcdosen == 3){
            while(true) {
              print("Menu DosenTetap");
              print("1. Detail DosenTetap");
              print("2. Total Gaji");
              print("3. Exit");

              int chcdosentetap = int.parse(stdin.readLineSync()!);
              if(chcdosentetap == 1){
                print('Nama: ${dtt1.nama} -- Jumlah SKS yang diampu: ${dtt1.sks} -- Tunjangan Kehadiran: ${dtt1.tunjHadir} -- Gaji Dasar: ${dtt1.Gajidsr}');
              }else if(chcdosentetap == 2){
                print('Total Gaji: ${dtt1.Gaji}');
              }else if(chcdosentetap == 3){
                break;
              }

            }
          }

          else if(chcdosen == 4){
            break;
          }

        }
      }

      else if (chc == 3){
        while (true) {
          print("Menu Staff");
          print("1. Detail Staff");
          print("2. Ajukan Cuti");
          print("3. Total Gaji");
          print("4. Exit");

          int chcstaff = int.parse(stdin.readLineSync()!);
          if(chcstaff == 1){
            print('Nama: ${stf1.nama} -- Tunjangan Kehadiran: ${stf1.StunjHadir} -- Gaji Dasar: ${stf1.Gajidsr}');
          }else if (chcstaff == 2){
              stf1.kurangjatahcuti();
              print("Sisa Jatah Cuti: ${stf1.jatahcuti}");
          }else if (chcstaff == 3){
            print('Total Gaji: ${stf1.Tgaji}');
          }else if (chcstaff == 4){
            break;
          }

        }
      }

      else if (chc == 4){
        break;
      }
    }

  }