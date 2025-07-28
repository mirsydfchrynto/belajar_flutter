void main (){
var ini = tes(name3: 'marshaa ');
print(ini);
}

String tes ({String? name, String name2 = 'irsyad', required String? name3}){
  return 'ayo main ${name??'fatir'}, $name2, $name3';
}