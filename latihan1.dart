// void main() {
//   String nama = "Dian winata";
//   String kelas = "XI RPL2";
//   String sekolah = "SMKN 1 SUBANG";
//   double nilai = 9.1;
  
//   print("Nama Lengkap: $nama");
//   print("Kelas       : $kelas");
//   print("Sekolah     : $sekolah");
//   print("Nilai       : $nilai");
// }

// void main(){
//   String nama = "Dian winata";
//   String alamat = "Bbk. Bandung, Gg saluyu";
//   String sekolah = "SMKN 1 SUBANG";
//   String cita = "Pengusaha";
  
//   print("Nama saya $nama alamat saya di $alamat,saya bersekolah di $sekolah cita cita saya $cita");
// }

// import 'dart:io';

// main(){
//   stdout.write("siapa kamu: ");
//   var nama = stdin.readLineSync();
//   print("Helllo $nama");
// }


// void main(){
//   String nama = "Dian";
//   int total = 85;
//   print("Nama : $nama");
//   print("Nilai: $total");
//   if(total > 100){
//     print("input melebihi batas");
//   }else if(total >= 90){
//     print("Predikat :A");
//   }else if(total >= 80){
//     print ("Predikat: B");
//   }else if(total >= 70){
//     print("Predikat :C");
//   }else if(total >= 60){
//     print ("Predikat :D");
//   }else if(total <= 60){
//     print("Predikat :Remedial");
//   }  
// }

import 'dart:io';

main(){
  stdout.write("masukan Nilai A: ");
  stdout.write("masukan Nilai B: ");
  var A = stdin.readLineSync();
  var B = stdin.readLineSync();
  var H = '$A' + '$B'; 

  print("hasil Nilai A dan B adalh $H");
}