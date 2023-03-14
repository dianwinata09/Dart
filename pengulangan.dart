// import 'dart:io';

import 'dart:io';

void main(){
  var y = "y";

  var mylist =[];
  stdout.write("masukan nama :");
  mylist.add(stdin.readLineSync());

  stdout.write("ulang?/ ");
  var ulang = stdin.readLineSync();

  if(ulang == y){
    stdout.write("masukan nama :");
    mylist.add(stdin.readLineSync());
  }else{
    print("Nama :${mylist[0]}");
  }
}

