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
  lulus();
  huruf();
  orang();
  orang2();
  kota();
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
  var angka = 21;
  
  if (angka != null){
    if (angka % 2 == 0 ){
      print('$angka adalah bilangan genap');
    }else {
      print('$angka adalah bilangan ganjil');
    }
  } else{
    print('masukan nilai!!!');
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
