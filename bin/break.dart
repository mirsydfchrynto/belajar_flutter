void main (){
  var cek = 1 ;

  while(true){
    print('perulangan ke-$cek');
    cek++;

    if (cek > 10){
      break; /// break untuk stop perulangan
    }
  }

  for (var cek2 = 1 ; cek2 <= 50 ; cek2++) {
    if (cek2 % 2 == 0) {
      continue;
    }
    print('perulangan ke $cek2');
  }
}
