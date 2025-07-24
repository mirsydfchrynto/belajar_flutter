void main (){
  /// null
  int number1 ;
  number1 = 20 ;
  // number1 = null ;  error jangan gini
  int? number2;
  number2 = null ; /// nah gini atau
  int? number3 = null; ///aman bos ku
  print(number3);
  print(number2);
  print(number1);

  /// safety null with tenary operation
  int? age = null ;
  // print(age.toDouble()); ini eror karena ga di cek terlebih dahulu (null pointer exception)
  if (age != null){ /// ini cara safety nya
    print(age.toDouble());
  }
  var cek = age != null ? age.toDouble() : 'isi data'; /// harus ada check menggunakan if atau seperti ini tenary
  print(cek);

  /// konversi null ke non null atau pun sebaliknya
  var name = 'eko' ; ///ini non null
  String? nullablename = name; /// menjadi null

  int? nullangka ; /// null
  if(nullangka != null){ /// jadi harus ada null check
    var number = nullangka; /// menjadi tidak null
  }

  /// default value
  String? makan;
  var lauk = makan ?? 'nasi'; /// jadi value deffult nya nasi, aman not null juga ada default value jika value tidak diisi

  /// paksa conversi null ke non null
  int? rumah ;
  // int perumahan = rumah!;
  /// eror karena maksa jadi non null tanpa check null terlebih dahulu
  /// jadi kalau mau paksa pastikan null sudah di check
  rumah = 22;
  int perumahan = rumah;
  print(perumahan);

  /// nullable member
  /// lebih simple dari if else dan tenary
  double? datadouble ;
  datadouble = 0053458.0000000;
  int? dataint = datadouble?.toInt(); ///langsuhg pakai ? setelah menyebutkan variable nulll type
  /// yang nerima juga harus null maupun itu beda tipe data
  print(dataint);
}

