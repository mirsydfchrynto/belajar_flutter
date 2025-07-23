import 'dart:io';

void main() {
  // hari();
  kegiatan();
}

void hari() {
  stdout.write('input angka hari (1–7): ');
  String? input = stdin.readLineSync()?.trim();

  if (input != null && int.tryParse(input) != null) {
    var angka = int.parse(input);
    switch (angka) {
      case 1:
        print('hari senin');
        break;
      case 2:
        print('hari selasa');
        break;
      case 3:
        print('hari rabu');
        break;
      case 4:
        print('hari kamis');
        break;
      case 5:
        print('hari jumat');
        break;
      case 6:
        print('hari sabtu');
        break;
      case 7:
        print('hari minggu');
        break;
      default:
        print('angka melebihi range 1 - 7 !!');
    }
  } else {
    print(' masukan angka !!');
  }
}


void kegiatan (){
  stdout.write('input hari (senin–minggu): ');
  var hari = stdin.readLineSync()?.toLowerCase().trim();

  switch (hari){
    case 'senin' :
      print('aktifitas hari ini Upacara bendera');
      break;
    case 'selasa' :
      print('aktifitas hari ini Pelajaran Olahraga');
      break;
    case 'rabu' :
      print('aktifitas hari ini Praktek komputer');
      break;
    case 'kamis' :
      print('aktifitas hari ini Kajian agama');
      break;
    case 'jumat' :
    case 'jum\'at':
      print('aktifitas hari ini Jum\'at bersih');
      break;
    case 'sabtu' :
      print('aktifitas hari ini Ekstrakurikuler');
      break;
    case 'minggu' :
      print('aktifitas hari ini Libur');
      break;
    default:
      print('Hari tidak dikenali!');
  }
}
