/// lagi belajar dart dasar!!
library;
/*
ada function void main
variable (val,final,cons,let)
tipe data (string, number, int, double)
 */

void main () {
  /// variable
  print("test satu dua tiga");
  // String nama;
  var nama = "irsyad";
  var nama2 = "fachrynto";
  print(nama);

  /// variable late
  late var lengkap = tes(); //late variable yang akan dibaca/dijalankan ketika didefinisikan/dipanggil, jadi akan print cek dulu
  // late var depan = cek()
  print("cek"); //kalau tidak late akan hai, lengkap dulu baru cek
  print("nama saya adalah $lengkap, salam kenal yaa ");
  // print(lastname);
  /// variable final dan cons
  final array1 = [1, 2, 3];
  const array2 = [1, 2, 3];
  array1[0] =
  5; // final masih bisa mengubah isi data satuannya namun untuk keselurruhanya langsung tidak bisa
  // array2[0] = 5; cons tidak bisa merubah full data dari keseluruhan langsung maupun data persatuannya
  print(array1);
  print(array2);

  /// tipe data
  /// string menyimpan tipe data teks
  String cek = 'hello guys';
  var hallo = 'tes, $cek';
  var gini = 'ini adalah \'dart\' \$kerenn ';
  var full = nama + nama2;
  var full2 = "irsyad" "fachryanto";
  var panjang = '''
halau guys nama saya irsyad
  saya sedang belajar dart hehe ''';
  print(panjang);
  print(full);
  print(full2);
  print(gini);
  print(cek);
  print(hallo);

  /// int nyimpen tipe data angka bulat
  int satu = 18;
  print(satu);

  /// double nyimpen tipe data angka desimal atau koma
  double dua = 18.13;
  print(dua);

  /// num digunakan agar efektif bisa simpan angka bulat maupun desimal
  List<num> tiga = [1, 1.5, 2, 2.5, 3];
  print(tiga);
  num empat = 2;
  empat = 2.5;
  print(empat);

  /// boolean tipe data memiliki 2 nilai , benar (true) atau salah (false)
  bool benar = true;
  bool salah = false;
  print(benar);
  print(salah);

  /// dynamic tipe data yang bisa menampung segala jenit tipe data
  dynamic data = 1813;

  /// bisa berubah menjadi tipe data apapun
  print(data);
  data = 18.13;
  print(data);
  data = false;
  print(data);
  data = "berubah";
  print(data);

  /// konversi data
  var string = '1813';
  var inputint = int.parse(string);
  var inputdouble = double.parse(string);

  var intkedouble = inputint.toDouble();
  var doublekeint = inputdouble.toInt();

  var intkestring = inputint.toString();
  var doublekestring = inputdouble.toString();

  print(string);
  print(inputint);
  print(inputdouble);
  print(intkedouble);
  print(doublekeint);
  print(intkestring);
  print(doublekestring);

  var cekstring = 'benar';
  cekstring = 'salah';
  var cekbool = cekstring == 'benar';
  var booltostr = cekbool.toString();
  print(cekstring);
  print(cekbool);
  print(booltostr);

  /// operator aritmatika
  var a = 10;
  var b = 7;
  var c = -5;

  print(a + b);
  print(a - b);
  print(a / b);
  print(a ~/ b);
  print(a * b);
  print(a % b);
  print(c);

  /// operator perbandingan
  print(20 == 20);
  print(20 != 20);
  print(20 > 20);
  print(20 < 20);
  print(20 >= 20);
  print(20 <= 20);

  print('marsha' == 'irsyad');
  print('marsha' != 'irsyad');

  /// operator penugasan
  dynamic coba = 188;
  print(coba += 7);
  print(coba -= 7);
  print(coba *= 7);
  print(coba ~/= 7);
  print(coba /= 7);
  print(coba %= 7);

  var i = 0;
  var k = i++;
  print(i);
  print(k);
  var j = ++i;
  print(i);
  print(j);
  var t = --i;
  print(t);
  var l = i--;
  print(l);

  /// operator logika
  var sikap = 75;
  var absen = 60;
  var nilai = 70;

  var syaratsikap = sikap >= 75;
  var syaratabsen = absen >= 75;
  var syaratnilai = nilai >= 75;
  print("$syaratsikap, $syaratabsen, $syaratnilai");

  // var lulus = syaratsikap && syaratabsen && syaratnilai ;
  var lulus = syaratsikap || syaratabsen || syaratnilai;
  print("anda lulus adalah $lulus");

  print(!true);
  print(!false);

  /// operator type test
  dynamic variable = 1813;
  var harusInt = variable as int;
  // var harusInt = variable as String; error

  print(harusInt);
  print(variable is int);
  print(variable is bool);
  print(variable is String);
  print(variable is! int);
  print(variable is! bool);
  print(variable is! String);

  /// list
  List<int> nilaiku = [80, 100, 90, 70];
  var listt = <String>['ips', 'mtk', 'ipa'];
  var namaorg = [
    'nugi',
    'wisnu',
    'rapli'
  ];
  print(nilaiku[1]); /// ambil bagian perindex
  print(listt[0]);
  namaorg.add("tegar");
  namaorg.add("panji");
  namaorg.add("ragil"); 
  namaorg[2]= 'fikal'; /// ganti bagian per index
  namaorg.removeAt(1); /// hapus bagian list
  print(namaorg[0]);
  print(namaorg);
  print(namaorg.contains('irsyad')); /// false karena gak ada irsyad didalam list var namaorg
  print(namaorg.length);

  /// set
  Set set = { 1,2,3,4,5,6,7,8,9 };
  var anggota = { 'dodo','bambang','joko','dimas','muthu'};
  var number = <int>{};
/// mirip list namun gabisa data nya sama
  print(number);
  print(anggota);
  print(anggota.contains('dodit')); /// cek value nya ada ga di set
  print(set);
  
  print(number.length);
  number.add(18);
  number.add(13);
  number.add(03);
  number.add(03);
  number.add(11 );
  print(number);
  number.remove(11);
  print(number);
  print(number.length);

  /// map
  var tesMap = {
    1 : 'adam',
    2 : 'afni',
    3 : 'irsyad',
    4 : 'marsha',
    5 : 'dinda',
  };

  print(tesMap[3]); /// ambil data
  print(tesMap.length); /// banyaknya data
  print(tesMap[2]= 'salwa'); /// ubah data sesuai key [2]
  tesMap[6]='ranifa';  /// tambah data baru dan key baru
  print(tesMap);

  /// symbol
  Symbol cobasymbol = Symbol('1813032005');
  var cobasymbol2 = #ini_symbol;
  print(cobasymbol);
  print(cobasymbol2);


}


String tes () {
  print("hai");
  final name = 'irsyad';
  var lastname = 'ryan';
  // name = "fachryanto";
  lastname = 'fachryanto';
  var lengkap = '$name $lastname';
  print(lengkap);
  return "nama saya $name $lastname";
}



