import 'dart:io';

void main() {
  // nilai();
  // tebak();
  // kegiatan();
  bilangan();
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
