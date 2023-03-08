//TUGAS INPUT DATA//
import 'dart:io';
  main(){
  bool ulang = true;
  List<String> namaList = [];
  List<String> kelasList = [];
  List<String> agamaList = [];
  List<String> jkList = [];
  List<String> citaList = [];
  List<String> alamatList = [];
  List<String> stList = [];

  while (true) {
     stdout.write("Nama            : ");
  String? data1 = stdin.readLineSync();
  namaList.add(data1!);
  //
  stdout.write("Kelas           : ");
  String? data2 = stdin.readLineSync();
  kelasList.add(data2!);
  //
  stdout.write("Agama           : ");
  String? data3 = stdin.readLineSync();
  agamaList.add(data3!);
  //
  stdout.write("Jenis Kelamin   : ");
  String? data4 = stdin.readLineSync();
  jkList.add(data4!);
  //
  stdout.write("Cita Cita       : ");
  String? data5 = stdin.readLineSync();
  citaList.add(data5!);
  //
  stdout.write("Alamat          : ");
  String? data6 = stdin.readLineSync();
  alamatList.add(data6!);
  //
  stdout.write("Status          : ");
  String? data7 = stdin.readLineSync();
  stList.add(data7!);
  //
  print('========================');
  stdout.write('Apakah ingin di ulang y/n :');
  String? jawaban = stdin.readLineSync();
  //
  
  switch (jawaban) {
    case 'y':
    print('========================');
    break;
    case 'n':
    print('=========================');
    print('Data Siswa');
    print('=========================');
    for(int i = 0; i < namaList.length; i++){
      stdout.write('Nama               : '); print(namaList[i]);
      stdout.write('Kelas              : '); print(kelasList[i]);
      stdout.write('Agama              : '); print(agamaList[i]);
      stdout.write('Jenis Kelamin      : '); print(jkList[i]);
      stdout.write('Cita-Cita          : '); print(citaList[i]);
      stdout.write('Alamat             : '); print(alamatList[i]);
      stdout.write('Status             : '); print(stList[i]);
      print('=========================');

    }
    
    
    print('Terima kasih telah menggunakan program ini!');
    exit(0);
  }

  }
}
