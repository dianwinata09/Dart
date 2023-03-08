// void main(List<String> arguments) {
//   var setBuah = <String>{}; (var yaitu untuk membuat variabel bernama setBuah)
//   setBuah.add('apel'); (.add untuk menambahkan data ke variabel setBuah)
//   setBuah.add('rambutan');
//   setBuah.add('pisang');
//   print(setBuah); (print untuk menampilkan data pada variabel setBuah)
// }

// void main(List<String> arguments) {
//   var setBuah = {'apel', 'pisang', 'jeruk'}; (var yaitu untuk membuat variabel bernama setBuah)
//   var buahLain = {'semangka', 'anggur'}; (var yaitu untuk membuat variabel bernama buahLain)
//   setBuah.addAll(buahLain); (.addAll untuk menambahkan data di variabel buahLain ke variabel setBuah)
//   print(setBuah); (print untuk menampilkan data pada variabel setBuah)
// }

// void main(List<String> arguments) {
//   var setBuah = {'apel', 'pisang', 'jeruk', 'melon', 'semangka', 'rambutan'}; (var yaitu untuk membuat variabel bernama setBuah)
//   print(setBuah.length); (print untuk menampilkan data pada variabel setBuah .length untuk menampilkan jumlah data pada variabel)
// }

// void main(List<String> arguments) {
//   var setBuah = {'apel', 'pisang', 'jeruk', 'melon', 'semangka', 'rambutan'}; (var yaitu untuk membuat variabel bernama setBuah)
//   setBuah.remove('pisang'); (.remove untuk menghapus data)
//   print(setBuah); (print untuk menampilkan data pada variabel setBuah)
// }

// void main(List<String> arguments) {
//   var setGorengan = {'cireng', 'ubi', 'bakwan', 'risol'}; (var yaitu untuk membuat variabel bernama setGorengan)

//   print(setGorengan.contains('bakwan')); (.contains untuk mengecek data yang ada pada variabel)

//   print(setGorengan.containsAll(['pisang', 'risol'])); (.contains untuk mengecek semua data yang ada pada variabel apakah isinya ada atau tidak)

//   var fruitsToCheck = {'bakwan', 'pisang'};
//   print(setGorengan.containsAll(fruitsToCheck)); (setGorengan.containsAll(fruitsToCheck) untuk mengecek apakah dalam variabel setGorengan mengandung data yang disimpan pada fruitsToCheck)
// }

// void main(List<String> arguments) {
//   var setGorengan = {'bakwan', 'cireng', 'ubi', 'risol'}; (var yaitu untuk membuat variabel bernama setGorengan)
//   var setGorenganDua = {'cireng', 'cilok', 'batagor'}; (var yaitu untuk membuat variabel bernama setGorenganDua)
//   var intersectionSet = setGorengan.intersection(setGorenganDua); (untuk mengambil data yang sama pada varibel setGorengan dan setGorenganDua)
//   print(intersectionSet); (print untuk menampilkan data pada variabel intersectionSet)
// }

// void main(List<String> arguments) {
//   var setGorengan = {'bakwan', 'cireng', 'ubi', 'risol'}; (var yaitu untuk membuat variabel bernama setGorengan)
//   var setGorenganDua = {'cireng', 'cilok', 'batagor'}; (var yaitu untuk membuat variabel bernama setGorenganDua)
//   var intersectionSet = setGorengan.union(setGorenganDua); (untuk menggabungkan semua data pada kedua variabel)
//   print(intersectionSet);
// }

void main(List<String> args) {
  var setJurusan = {
    'RPL',
    'TKJ',
    'DG',
    'TL',
    'TB',
    'TBSM',
    'TPM',
    'BDP',
    'OTKP',
    'AKL'
  };
  var setRPL = {
    'X RPL 1',
    'X RPL 2',
    'XI RPL 1',
    'XI RPL 2',
    'XII RPL 1',
    'XII RPL 2'
  };
  var setTKJ = {
    'X TKJ 1',
    'X TKJ 2',
    'XI TKJ 1',
    'XI TKJ 2',
    'XII TKJ 1',
    'XII TKJ 2'
  };
  var setDG = {
    'X DG 1',
    'X DG 2',
    'XI DG 1',
    'XI DG 2',
    'XII DG 1',
    'XII DG 2'
  };
  var setTL = {'X TL', 'XI TL'};
  var setTB = {'X TB', 'XI TB'};
  var setTBSM = {
    'X TBSM 1',
    'X TBSM 2',
    'X TBSM 3',
    'XI TBSM 1',
    'XI TBSM 2',
    'XII TBSM 1',
    'XII TBSM 2'
  };
  var setTPM = {
    'X TPM 1',
    'X TPM 2',
    'X TPM 3',
    'XI TPM 1',
    'XI TPM 2',
    'XII TPM 1',
    'XII TPM 2'
  };
  var setBDP = {
    'X BDP 1',
    'X BDP 2',
    'X BDP 3',
    'X BDP 4',
    'XI BDP 1',
    'XI BDP 2',
    'XI BDP 3',
    'XI BDP 4',
    'XI BDP 5',
    'XII BDP 1',
    'XII BDP 2',
    'XII BDP 3',
    'XII BDP 4'
  };
  var setOTKP = {
    'X OTKP 1',
    'X OTKP 2',
    'X OTKP 3',
    'XI OTKP 1',
    'XI OTKP 2',
    'XI OTKP 3',
    'XI OTKP 4',
    'XII OTKP 1',
    'XII OTKP 2',
    'XII OTKP 3',
    'XII OTKP 4',
    'XII OTKP 5'
  };
  var setAKL = {
    'X AKL 1',
    'X AKL 2',
    'X AKL 3',
    'XI AKL 1',
    'XI AKL 2',
    'XI AKL 3',
    'XII AKL 1',
    'XII AKL 2',
    'XII AKL 3',
    'XII AKL 4'
  };

  // print("JURUSAN RPL");
  // var kelas = {' X RPL 3'};
  // setRPL.addAll(kelas);
  // print(setRPL);
  // print('\n');
  // print("JUUSAN TKJ");
  // var tkj = {' X TKJ 3'};
  // setTKJ.addAll(tkj);
  // print(setTKJ);
  // print('\n');
  // print("JURUSAN DG");
  // var dg = {' X DG 3'};
  // setDG.addAll(dg);
  // print(setDG);
  // print('\n');
  // print("JURUSAN TL");
  // var tl = {' X TL 2'};
  // setTL.addAll(tl);
  // print(setTL);
  // print('\n');
  // print("JURUSAN TB");
  // var tb = {' X TB 2'};
  // setTB.addAll(tb);
  // print(setTB);
  // print('\n');
  // print("JURUSAN TBSM");
  // var TBSM = {' X TBSM 4'};
  // setTBSM.addAll(TBSM);
  // print(setTBSM);
  // print('\n');
  // print("JURUSAN TPM");
  // var TPM = {' X TPM 4'};
  // setTPM.addAll(TPM);
  // print(setTPM);
  // print('\n');
  // print("JURUSAN BDP");
  // var BDP = {' X BDP 5'};
  // setBDP.addAll(BDP);
  // print(setBDP);
  // print('\n');
  // print("JURUSAN OTKP");
  // var OTKP = {' X OTKP 4'};
  // setOTKP.addAll(OTKP);
  // print(setOTKP);
  // print('\n');
  // print("JURUSAN AKL");
  // var AKL = {' X AKL 4'};
  // setAKL.addAll(AKL);
  // print(setAKL);
  // print('\n');
  // print(setJurusan);

  // print("JURUSAN RPL");
  // setRPL.remove('XI RPL 1');
  // print(setRPL);
  // print('\n');
  // print("JUUSAN TKJ");
  // setTKJ.remove('XI TKJ 1');
  // print(setTKJ);
  // print('\n');
  // print("JURUSAN DG");
  // setDG.remove('XI DG 1');
  // print(setDG);
  // print('\n');
  // print("JURUSAN TL");
  // print(setTL);
  // print('\n');
  // print("JURUSAN TB");
  // print(setTB);
  // print('\n');
  // print("JURUSAN TBSM");
  // print(setTBSM);
  // print('\n');
  // print("JURUSAN TPM");
  // setTPM.remove('XI TPM 2');
  // print(setTPM);
  // print('\n');
  // print("JURUSAN BDP");
  // setBDP.remove('XI BDP 1');
  // setBDP.remove('XI BDP 2');
  // setBDP.remove('XI BDP 3');
  // setBDP.remove('XI BDP 4');
  // setBDP.remove('XI BDP 5');
  // print(setBDP);
  // print('\n');
  // print("JURUSAN OTKP");
  // setOTKP.remove('XI OTKP 1');
  // print(setOTKP);
  // print('\n');
  // print("JURUSAN AKL");
  // setAKL.remove('XI AKL 1');
  // setAKL.remove('XI AKL 2');
  // setAKL.remove('XI AKL 3');
  // print(setAKL);
  // print('\n');
  // print(setJurusan);

  print("TKI");
  var TKI = setRPL.union(setTKJ);
  print(TKI);

  print("\n");

  print("BISNIS");
  var BSS = setBDP.union(setAKL);
  var Bis = BSS.union(setAKL);
  print(Bis);

 
}