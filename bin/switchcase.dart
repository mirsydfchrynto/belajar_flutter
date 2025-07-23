
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
  String? input1 = stdin.readLineSync()?.toLowerCase();

  print('member ?? (yes/no) : ');
  String? input2 = stdin.readLineSync()?.toLowerCase();

  var dipilih = null;
  var hasil = null ;
  if (input1 != null && input2 == 'yes' && input2 != null ){
    if (barang.containsKey(input1)){
      dipilih = barang[input1];
      hasil = dipilih * diskon ;
      print('harga ${dipilih} kamu ${dipilih - hasil}');
    }else{
      print('data tidak ditemukan');
    }
  }else if (input1 != null && input2 == 'no' && input2 != null){
    if (barang.containsKey(input1)) {
      dipilih = barang[input1];
      print('harga normal ${dipilih}, syarat diskon menjadi member');
    }else{
      print('data tidak ditemukan');
    }
  } else{
    print('masukan data yang sesuai dan tidak boleh kosong!!');
  }

}

