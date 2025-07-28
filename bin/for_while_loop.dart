import 'dart:io';

void main() {
  /// for loop ( perulangan )
  ///  for (init statement ; kondisi ; post statement)
  ///  contoh perulangan tanpa 3 bagian itu juga tidak apapa tidak wajib , tapi rentan eror berulang sampai tak terhentikan
  // for (;;){
  //   print('cek perulangan');
  // }
  /// contoh pakai kondisi
  // var angka = 1 ;
  //   for (;angka <= 10 ;){ // jika kondisi angka lebih kecil = 10 adlh true atau benar, akan selalu looping
  //     print('cek perulangan ke $angka');
  //     angka++; //jadi diblok loop bisa ditambahkan ++ agar bertambah satu setiap loopingnya sampai memenuhi syarat 10, dan kondisi false
  //   }
  /// contoh full syarat var hanya sekali  diawal dimasukan ke dalam init statement
  /// dan angka ++  dibaca ketika diakhir itu bisa dimasukan ke post statement
  /// lebih bersih dan simple
  ///
  ///for in
  //   var yes = {1,2,3,4,5,6,7}; bisa untuik jenis list apapaun
  //   for ( var ada in yes) {  pakai in agar lebih simple dan lebih cepat
  //     print(ada);
  //   }


  for (var angka = 1; angka <= 10; angka++) {
    print('cek perulangan ke $angka');
  }
  /// ada perulangan hanya dengan syarat kondisi saja yaitu while
  var cek = 1;
  while (cek <= 10) {
    print('tes perulangan ke $cek');
    cek++;
  }

  /// do while artinya melakukan dulu baru perkondisian, walaupun hasilnya false nanti setidaknya dia melakukan terlebih dahulu sekali
  var cek2 = 100;
  do {
    print('print perulangan yang ke $cek2');
    cek2--;
  } while(cek2 >= 10); /// saya melakukan perulangan mundur dari 100 ke 10, jika dibuat langsung  while(cek2 >= 10);
  /// dia akan mencetak setidak nya satu dan akhirnya false lalu berhenti
  genap();
  mundur();
  cetak();
}

void genap (){
  for(var gnap = 2; gnap <= 20 ; gnap +=2 ){
    print('$gnap');
  }
}

void mundur (){
  var angka = 10;
  while (angka >= 1){
    print(angka);
    angka--;
  }
}

void cetak (){
  stdout.write('masukan angka : ');
  String? input = stdin.readLineSync()?.trim();
  // var angka = int.tryParse(input!)??'masukan angka';
  if (input == null || input.isEmpty){
    print('masukan angka');
  } else if (int.tryParse(input)!= null){
    int angka = int.parse(input);
    do{
      print('halo dunia');
      angka --;
    }while(angka>0);
  }
}

