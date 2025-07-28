

void main (){
  // stdout.write('masukan nama 1 : ');
  // var pacar = stdin.readLineSync()?.toLowerCase().trim();
  // stdout.write('masukan nama 2 (opsional) : ');
  // var pacar2 = stdin.readLineSync()?.toLowerCase().trim();
  // tes(pacar!, pacar2!);

  tes2(sayang: 'lucyana');
  tes2(sayang: 'lucyana', sayang2: 'iyupe' );
  tes2(sayang: 'lucyana', sayang2: 'iyupe', sayang3: 'yang lain' );
}

/// contoh function parameter
void tes (String sayang, [String?  sayang2]){  /// jika mau default [String  sayang2='defaultnya apa bebas']
  print('lestgowww $sayang kita ke rumah $sayang2');
}

/// function named parameter
void tes2  ({required String sayang,String?  sayang2, String sayang3 ='marsha'}){
  print('lestgowww $sayang kita ke rumah $sayang2, biar bisa makan sama $sayang3');
}