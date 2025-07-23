import 'dart:io';

void main (){

  var ipa = 65;
  var mtk = 80;
  var ips = 75;
  var agama = 90;
  var bindo = 100;
  var bing = 88;
  var pkn = 85;
  var gagal = [];

  if(ipa <= 75) gagal.add("ipa");
  if(mtk <= 75) gagal.add("mtk");
  if(ips <= 75) gagal.add("ips");
  if(agama <= 75) gagal.add("agama");
  if(bindo <= 75) gagal.add("b.indonesia");
  if(bing <= 75) gagal.add("b.inggris");
  if(pkn <= 75) gagal.add("pkn");

  if (gagal.isEmpty){
    print("selamat anda lulus");
  }else{
    print('anda blum lulus di mata kuliah ${gagal.join(', ')}');
  }

  nilai();
  ganjilgenap();
  // lulus();
  // huruf();
  // orang();
  // orang2();
  // kota();
  // diskon();
  // diskon2();
}

void nilai () {
  var a = 97;
  var b = 83;
  var c = 87;

  var nama = 'a';
  var nilai = a;

  if (b > nilai){
    nama = 'b';
    nilai = b;
  }
  if (c > nilai){
    nama = 'c';
    nilai = c;
  }
  return print('nilai tertinggi adalah $nama dengan nilai $nilai');
}

void ganjilgenap (){
  stdout.write('masukan angka : ');
  var angka = stdin.readLineSync()?.trim();
  
  if (angka != null && int.tryParse(angka) != null){
    var hasil  = int.parse(angka);
    if (hasil % 2 == 0 ){
      print('$hasil adalah bilangan genap');
    }else {
      print('$hasil adalah bilangan ganjil');
    }
  } else{
    print('masukan nilai sebuah angka!!!');
  }
}

void lulus (){
  var nilai = 68;
  if (nilai >= 75){
    print('anda lulus');
  }else{
    print('anda belum lulus');
  }
}

void huruf(){
  var huruf = 'e';
  var vokal = ['a','i','u','e','o'];
  if (vokal.contains(huruf) ) {
    print('$huruf adalah huruf vokal');
  }else{
    print('$huruf adalah bukan huruf vokal');
  }
}


void orang () {
  var nama1 = 'Adit';
  var nilai1 = 72;

  var nama2 = 'Budi';
  var nilai2 = 81;

  var nama3 = 'Cici';
  var nilai3 = 76;

  var namahasil = nama1;
  var nilaihasil = nilai1 ;

  if (nilai2 > nilaihasil){
    namahasil = nama2;
    nilaihasil = nilai2;
  }
  if (nilai3 > nilaihasil){
    namahasil = nama3;
    nilaihasil = nilai3;
  }

  return print('nilai tertinggi adalah $namahasil dengan nilai $nilaihasil');
}

void orang2 () {
  var nama1 = 'Cici';
  var nilai1 = 90;

  var nama2 = 'Arif';
  var nilai2 = 83;

  var nama3 = 'Bella';
  var nilai3 = 76;

  var hasil = [];

  if (nilai2 > nilai1 && nilai2 > nilai3) {
    hasil.add('peringkat pertama adalah $nama2');
    if (nilai1 > nilai3) {
      hasil.add('peringkat kedua adalah $nama1');
      hasil.add('peringkat ketiga adalah $nama3');
    } else {
      hasil.add('peringkat kedua adalah $nama3');
      hasil.add('peringkat ketiga adalah $nama1');
    }
  } else if (nilai3 > nilai1 && nilai3 > nilai2) {
    hasil.add('peringkat pertama adalah $nama3');
    if (nilai1 > nilai2) {
      hasil.add('peringkat kedua adalah $nama1');
      hasil.add('peringkat ketiga adalah $nama2');
    } else {
      hasil.add('peringkat kedua adalah $nama2');
      hasil.add('peringkat ketiga adalah $nama1');
    }
  } else if (nilai1 > nilai3 && nilai1 > nilai2) {
    hasil.add('peringkat pertama adalah $nama1');
    if (nilai2 > nilai3) {
      hasil.add('peringkat kedua adalah $nama2');
      hasil.add('peringkat ketiga adalah $nama3');
    } else {
      hasil.add('peringkat kedua adalah $nama3');
      hasil.add('peringkat ketiga adalah $nama2');
    }
  }

  print(hasil[0]);
  print(hasil[1]);
  print(hasil[2]);
}

  void kota (){
    var kota1 = 'tegal';
    var suhu1 = 29;
    var kota2 = 'jkrta';
    var suhu2 = 32;
    var kota3 = 'semarang';
    var suhu3 = 27;

    if (suhu1 > suhu2 && suhu1 > suhu3){
      print('suhu tertinggi: $kota1 $suhu1°C');
      if(suhu2 < suhu3){
        print('suhu terendah: $kota2 $suhu2°C');
      } else {
        print('suhu terendah: $kota3 $suhu3°C');
      }
    }else if (suhu2 > suhu1 && suhu2 > suhu3){
      print('suhu tertinggi: $kota2 $suhu2°C');
      if(suhu1 < suhu3){
        print('suhu terendah: $kota1 $suhu1°C');
      } else {
        print('suhu terendah: $kota3 $suhu3°C');
      }
    }else if (suhu3 > suhu1 && suhu3 > suhu2){
      print('suhu tertinggi: $kota3 $suhu3°C');
      if(suhu1 < suhu2){
        print('suhu terendah: $kota1 $suhu1°C');
      } else {
        print('suhu terendah: $kota2 $suhu2°C');
      }
    }
  }

/// logic pengerjaan saya 100%
// void diskon (){
//   var barang =  <String, double>{
//     "kopi": 15000,
//     "teh": 12000,
//     "roti": 10000,
//   };
//   double diskon = 0.10;
//
//   print('masukan  nama barang :');
//   String? input1 = stdin.readLineSync()?.toLowerCase();
//
//   print('member ?? (yes/no) : ');
//   String? input2 = stdin.readLineSync()?.toLowerCase();
//
//   dynamic dipilih;
//   double hasil;
//
//   if (input1 != null && input2 == 'yes' && input2 != null ){
//     if (barang.containsKey(input1)){
//       dipilih = barang[input1];
//       hasil = dipilih * diskon ;
//       print('harga $dipilih kamu ${dipilih - hasil}');
//     }else{
//       print('data tidak ditemukan');
//     }
//   }else if (input1 != null && input2 == 'no' && input2 != null){
//     if (barang.containsKey(input1)) {
//       dipilih = barang[input1];
//       print('harga normal $dipilih, syarat diskon menjadi member');
//     }else{
//       print('data tidak ditemukan');
//     }
//   } else{
//     print('masukan data yang sesuai dan tidak boleh kosong!!');
//   }
//
// }

/// pembetulan gpt dari logic saya
void diskon() {
  var barang = <String, double>{
    "kopi": 15000,
    "teh": 12000,
    "roti": 10000,
  };
  double diskon = 0.10;

  stdout.write('Masukkan nama barang: ');
  String? input1 = stdin.readLineSync()?.toLowerCase().trim(); ///trim untuk jika ada spasi aman

  stdout.write('Member? (yes/no): ');
  String? input2 = stdin.readLineSync()?.toLowerCase().trim();

  if (input1 == null || input2 == null || input1.isEmpty || input2.isEmpty) {
    print('Masukan data yang sesuai dan tidak boleh kosong!!');
    return;
  }

  if (!barang.containsKey(input1)) {
    print('Data tidak ditemukan');
    return;
  }

  double hargaBarang = barang[input1]!;

  if (input2 == 'yes') {
    double potongan = hargaBarang * diskon;
    print('Harga $input1 setelah diskon: ${hargaBarang - potongan}');
  } else if (input2 == 'no') {
    print(
        'Harga normal $input1: $hargaBarang, syarat diskon adalah menjadi member.');
  } else {
    print('Input member harus "yes" atau "no".');
  }
}

void diskon2 () {
  var barang = <String, double> {
    "kopi": 15000,
    "teh": 12000,
    "roti": 10000,
    "susu": 18000
  };

  double member = 0.10;

  stdout.write('Masukkan nama barang: ');
  String? input1 = stdin.readLineSync()?.toLowerCase().trim();
  stdout.write('Masukkan jumlah barang: ');
  String? input2 = stdin.readLineSync()?.toLowerCase().trim();
  stdout.write('Member? (yes/no): ');
  String? input3 = stdin.readLineSync()?.toLowerCase().trim();

  if (input1 == null || input2 == null || input3 == null || input1.isEmpty || input2.isEmpty || input3.isEmpty ) {
    print('Masukan data yang sesuai dan tidak boleh kosong!!');
    return;
  }
  if (!barang.containsKey(input1)) {
    print('Data tidak ditemukan');
    return;
  }
  double pilih = barang[input1]!;
  int? jumlah = int.tryParse(input2);
  if (jumlah == null) {
    print("Jumlah harus angka !!");
    return;
  }

  if (input2 != '0' ){
    if (input3 == 'yes'){
      var hitung = pilih * jumlah;
      var hasil = hitung * member;
      var update = hitung - hasil ;
      print('Total belanja sebelum diskon: $hitung');
      print('Diskon member 10%: $hasil');
      print('Total yang harus dibayar: $update');
    } else {
      var hitung = pilih * jumlah;
      print('Total yang harus dibayar: $hitung');
    }
  } else {
    print('masukan angka yang benar!! untuk jumlah barang anda !!');
  }
}