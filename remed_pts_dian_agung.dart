import 'dart:io';

// void main(){
//   print("masukan angka");
//   int total = int.parse(stdin.readLineSync()!);
//   if(total > 0){
//     print("angka yang di inputkan positif");
//   }else if(total == 0){
//     print ("angka yang di input kan nol");
//   }else if(total < 0){
//     print("angka yang di inputkan negatif");
//   }
// }


// import 'dart:io';

void main(){
  stdout.write("hari kerja");
  print('\n');
  print("1.Senin 2.Selasa 3.Rabu 4.Kamis 5.jum'at 6.Sabtu 7.minggu");
  stdout.write("masukan hari : ");
  var poe = stdin.readLineSync();

  if(poe == "senin" || poe == "selasa" || poe == "rabu" || poe == "kamis" || poe == "jumat"){
    print("hari ini hari kerja");
  }else if( poe == "sabtu" || poe == "minggu" ){
    print("hari ini hari libur");
  }else{
    print("hari tidak ada");
  }
}

// void main(){
//   for (int i = 1; i <= 20 ; i++) {
//     if(i % 2 == 0)
//     print(i);
//   }
// }

// void main(){
//   var list = ['Asus', 'Acer', 'Lenovo', 'Samsung', 'Apple'];

//   for(var i = 0; i<list.length; i++){
//     print(list[i]);
//   }
// }

// void main(){
//   for (int i = 1; i <= 50 ; i++) {
//     if(i % 4 == 0)
//     print(i);
//   }
// }

// void main(){
//   var list = ['Bu Retno', 'Pak Egi', 'Pak Taufik'];

//   print(list[0]);
//   print(list[1]);
//   print(list[2]);
// }

// void main(){
//   print("masukan total");
//   int total = int.parse(stdin.readLineSync()!);
//   if(total >= 18){
//     print("anda sudah dewasa");
//   }else{
//     print("anda masih di bawah umur");
//   }
  
// }

// import 'dart:io';

// void main(){
//   print('masukan nilai : ');
//   int total = int.parse(stdin.readLineSync()!) ;
//   if(total > 100){
//     print("inputan salah harap ulangi kembali");
//   }else if(total >= 60){
//     print("Anda lulus");
//   }else if(total >= 1){
//     print ("Anda tidak lulus");
//   }else if(total <= 0){
//     print("inputan salah harap ulangi kembali");
//   } 
// }

// void main(){
//   for (int i = 0; i <= 20 ; i++) {
//     if(i % 2 != 0)
//     print(i);
//   }
// }

// void main(){
//   for (int i = 1; i <= 50 ; i++) {
//     if(i % 5 == 0)
//     print(i);
//   }
// }
