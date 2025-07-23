import 'dart:io';

void main (){
  // hari();
  diskon();
}

void hari () {
  print('input angka hari (1–7): ');
  String? input = stdin.readLineSync();

  if (input != null && int.tryParse(input) != null){
    var angka = int.parse(input);
    switch(angka){
      case 1 : print('hari senin');
      break;
      case 2 : print('hari selasa');
      break;
      case 3 : print('hari rabu');
      break;
      case 4 : print('hari kamis');
      break;
      case 5 : print('hari jumat');
      break;
      case 6 : print('hari sabtu');
      break;
      case 7 : print('hari minggu');
      break;
      default : print('angka melebihi range 1 - 7 !!');
    }
  } else {
    print(' masukan angka !!');
  }
}

void diskon (){
  var barang =  <String, double>{
    "kopi": 15000,
    "teh": 12000,
    "roti": 10000,
  };
  double diskon = 0.10;

  print('masukan  nama barang :');
  String? input1 = stdin.readLineSync();

  print('member ?? (yes/no) : ');
  String? input2 = stdin.readLineSync();

  var dipilih = barang[input1]!;
  var hasil = dipilih * diskon ;
  print( dipilih - hasil);

  if (input1 != null && input1 == barang ){{
    var dipilih = barang[input1] ;
  }
  }

}
