import 'dart:io';

void main () {
  /// contoh dibawah gapake tenary operator
   var nilai = 70 ;
   // String ucapan ;
   // if (nilai > 75 ) {
   //   print('anda luluss');
   // }else{
   //   print('anda belum lulus');
   // }
   /// hasil pakai tenary operator
   var hasil = nilai > 75 ? 'selamat anda lulus' : 'maaf anda belum lulus';
   print(hasil); ///  lebih singkat dan simple

   tes();
}

void tes(){
   stdout.write('masukan nama anda : ');
   String? nama = stdin.readLineSync()?.trim().toLowerCase();
   // var hasil = nama ?? 'Nama belum diisi' ;
   var hasil = nama == null || nama.isEmpty ? 'nama belum diisi' : 'nama anda: $nama' ;
   print(hasil);
}

