import 'dart:io';

void main() {
  // nilai();
  // tebak();
  // kegiatan();
  // bilangan();
  siswa();
}

void nilai() {
  stdout.write('masukan nama anda : ');
  String? nama = stdin.readLineSync()?.trim().toLowerCase();
  if (nama == null || nama.isEmpty) {
    print('masukan nama !');
    return;
  }
  stdout.write('masukan nilai tugas : ');
  int? tugas = int.tryParse(stdin.readLineSync()?.trim() ?? '');
  if (tugas == null) {
    print('masukan nilai tugas !');
    return;
  }
  stdout.write('masukan nilai uts : ');
  int? uts = int.tryParse(stdin.readLineSync()?.trim() ?? '');
  if (uts == null) {
    print('masukan nilai uts !');
    return;
  }
  stdout.write('masukan nilai uas : ');
  int? uas = int.tryParse(stdin.readLineSync()?.trim() ?? '');
  if (uas == null) {
    print('masukan nilai uas !');
    return;
  }
  var akhir = (tugas * 0.20) + (uts * 0.30) + (uas * 0.50);
  var hasil = akhir >= 85
      ? 'A'
      : akhir >= 75
          ? 'B'
          : akhir >= 65
              ? 'C'
              : akhir >= 50
                  ? 'D'
                  : 'E';
  print('$nama dengan predikat $hasil mencapai nilai akhir $akhir');
}

void tebak() {
  for (var kondisi = 1; kondisi <= 3; kondisi++) {
    stdout.write('masukan angka : ');
    int? input =
        int.tryParse(stdin.readLineSync()?.trim() ?? 'input tidak valid');
    print(input == null
        ? 'input tidak valid'
        : (input % 2 == 0 ? 'angka genap' : 'angka ganjil'));
  }
}

void kegiatan() {
  var hari = ['senin', 'selasa', 'rabu', 'kamis', 'jumat', 'sabtu', 'minggu'];
  var aktifitas = [
    'gym',
    'futsal',
    'badminton',
    'hiking',
    'belajar',
    'kerja',
    'renang'
  ];
  for (var i = 0; i < hari.length; i++) {
    switch (i) {
      case 0:
        print('hari: ${hari[i]} aktivitas: ${aktifitas[i]} ');
        break;
      case 1:
        print('hari: ${hari[i]} aktivitas: ${aktifitas[i]} ');
        break;
      case 2:
        print('hari: ${hari[i]} aktivitas: ${aktifitas[i]} ');
        break;
      case 3:
        print('hari: ${hari[i]} aktivitas: ${aktifitas[i]} ');
        break;
      case 4:
        print('hari: ${hari[i]} aktivitas: ${aktifitas[i]} ');
        break;
      case 5:
        print('hari: ${hari[i]} aktivitas: ${aktifitas[i]} ');
        break;
      case 6:
        print('hari: ${hari[i]} aktivitas: ${aktifitas[i]} ');
        break;
    }
  }
}

void bilangan() {
  for (var i = 1; i <= 50; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print('fizzbuzz');
    } else if (i % 3 == 0) {
      print('fizz');
    } else if (i % 5 == 0) {
      print('buzz');
    } else {
      print(i);
    }
  }
}

void siswa() {
  var nama = <String>{};
  var tugas = <String, int>{};
  var uts = <String, int>{};
  var uas = <String, int>{};
  var akhir = <String, double>{};
  var peringkat = <String, int>{
    'A': 0,
    'B': 0,
    'C': 0,
    'D': 0,
    'E': 0,
  };

  String getperingkat(double nilai) {
    return nilai >= 85
        ? 'A'
        : nilai >= 75
        ? 'B'
        : nilai >= 65
        ? 'C'
        : nilai >= 50
        ? 'D'
        : 'E';
  }

  String? namamasuk;
  while (true) {
    print('selamat datang di sistem Nilai Siswa Multi-Input\n'
        '(1) input siswa\n'
        '(2) manajemen data\n'
        '(3) keluar');
    stdout.write('masukan nomor pilihan anda: ');
    int? pilih = int.tryParse(stdin.readLineSync()?.trim() ?? '');
    if (pilih == null) {
      print('masukan nomor pilihan dengan benar dan sesuai menu !');
      return;
    }
    switch (pilih) {
      case 1:
        stdout.write('masukan jumlah siswa : ');
        int? jumlah = int.tryParse(stdin.readLineSync()?.trim() ?? '');
        if (jumlah == null) {
          print('masukan jumlah siswa dengan benar !');
          return;
        }

        for (var i = 1; i <= jumlah; i++) {
          stdout.write('masukan siswa urutan ke-$i: ');
          namamasuk = stdin.readLineSync()?.trim().toLowerCase();
          if (namamasuk == null || namamasuk.isEmpty) {
            print('masukan nama !');
            return;
          } else {
            nama.add(namamasuk);
          }
          stdout.write('masukan nilai tugas : ');
          int? tugasmasuk = int.tryParse(stdin.readLineSync()?.trim() ?? '');
          if (tugasmasuk != null) {
            tugas[namamasuk] = tugasmasuk;
          } else {
            print('masukan nilai tugas !');
            return;
          }
          stdout.write('masukan nilai uts : ');
          int? utsmasuk = int.tryParse(stdin.readLineSync()?.trim() ?? '');
          if (utsmasuk != null) {
            uts[namamasuk] = utsmasuk;
          } else {
            print('masukan nilai uts !');
            return;
          }
          stdout.write('masukan nilai uas : ');
          int? uasmasuk = int.tryParse(stdin.readLineSync()?.trim() ?? '');
          if (uasmasuk != null) {
            uas[namamasuk] = uasmasuk;
          } else {
            print('masukan nilai uas !');
            return;
          }
        }
        break;

      case 2:
        if (nama.isEmpty) {
          print('DATA MASIH KOSONG !!');
          return;
        }
        String? hasilfinal;
        var kelist = nama.toList();
        for (var cek = 0; cek < nama.length; cek++) {
          var hasiltugas1 = tugas[kelist[cek]];
          var hasiluts1 = uts[kelist[cek]];
          var hasiltuas1 = uas[kelist[cek]];
          var jadi = (hasiltugas1! * 0.20) +
              (hasiluts1! * 0.30) +
              (hasiltuas1! * 0.50);
          akhir[kelist[cek]] = jadi;
        }

        double total = 0;
        for (var i in akhir.values) {
          total += i;
        }

        double rata = total / akhir.length;
        print('(1) cari data siswa\n'
            '(2) tampilkan semua data siswa\n'
            '(3) rata rata seluruh siswa\n'
            '(4) total siswa berpredikat');
        stdout.write('masukan nomor pilihan anda: ');
        int? pilih2 = int.tryParse(stdin.readLineSync()?.trim() ?? '');
        if (pilih2 == null) {
          print('masukan nomor pilihan dengan benar dan sesuai menu !');
          return;
        }
        switch (pilih2) {
          case 1:
            stdout.write('masukan nama siswa anda : ');
            String? siswa = stdin.readLineSync()?.trim().toLowerCase();
            if (siswa == null || siswa.isEmpty) {
              print('masukan nama !');
            } else if (!akhir.containsKey(siswa)) {
              print('Data tidak ditemukan');
            } else {
              var hasiltugas = tugas[siswa];
              var hasiluts = uts[siswa];
              var hasiltuas = uas[siswa];
              var jadi = akhir[siswa];
              var hasil2 = getperingkat(jadi!);
              print('==== DATA SISWA $siswa ====\n'
                  'nama : $siswa\n'
                  'nilai tugas : $hasiltugas\n'
                  'nilai uts : $hasiluts\n'
                  'nilai uas : $hasiltuas\n'
                  'nilai akhir : ${akhir[siswa]}\n'
                  'predikat: $hasil2');
            }
            break;
          case 2:
            for (var cek = 0; cek < akhir.length; cek++) {
              hasilfinal = getperingkat(akhir[kelist[cek]]!);
              print('==== DATA SISWA KE-${cek + 1} ====\n'
                  'nama : ${kelist[cek]}\n'
                  'nilai tugas : ${tugas[kelist[cek]]}\n'
                  'nilai uts : ${uts[kelist[cek]]}\n'
                  'nilai uas : ${uas[kelist[cek]]}\n'
                  'nilai akhir : ${akhir[kelist[cek]]}\n'
                  'predikat: $hasilfinal');
            }
            break;
          case 3:
            print('nilai rata rata siswa keseluruhan: $rata');
            break;
          case 4:
            peringkat.updateAll((key, value) => 0);
            for( var e = 0; e < akhir.length; e++ ){
                akhir[kelist[e]]! >= 85
                  ? peringkat['A']= (peringkat['A']??0)+1
                  : akhir[kelist[e]]! >= 75
                  ? peringkat['B'] = (peringkat['B']??0)+1
                  : akhir[kelist[e]]! >= 65
                  ? peringkat['C'] = (peringkat['C']??0)+1
                  : akhir[kelist[e]]! >= 50
                  ? peringkat['D'] = (peringkat['D']??0)+1
                  : peringkat['E'] = (peringkat['E']??0)+1;
            }
            print('daftar jumlah peringkat\n'
                'A : ${peringkat['A']} siswa \n'
                'B : ${peringkat['B']} siswa \n'
                'C : ${peringkat["C"]} siswa \n'
                'D : ${peringkat["D"]} siswa \n'
                'E : ${peringkat["E"]} siswa \n');
            break;
          default:
            print('masukan pilihan menu yang benar !!');
        }
        break;
      case 3:
        return;
      default:
        print('masukan pilihan 1-3');
    }
  }
}
