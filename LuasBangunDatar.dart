import 'dart:io';
import 'dart:math';

void main() {
  int pilihan;
  do {
    stdout.write('Pilih bentuk geometri yang ingin dihitung luasnya:\n'
        '1. Persegi\n'
        '2. Persegi panjang\n'
        '3. Lingkaran\n'
        '4. Segitiga\n'
        '5. jajar genjang\n'
        '6. belah ketupat\n'
        '7. trapesium\n'
        '8. layang-layang\n'
        '0. Keluar\n'
        'Pilihan: ');
    pilihan = int.parse(stdin.readLineSync()!);

    switch (pilihan) {
      case 1:
        hitungLuasPersegi();
        break;
      case 2:
        hitungLuasPersegiPanjang();
        break;
      case 3:
        hitungLuasLingkaran();
        break;
      case 4:
        hitungLuasSegitiga();
        break;
      case 5:
        hitungLuasJajargenjang();
        break;
      case 6:
        hitungLuasBelahketupat();
        break;
      case 7:
        hitungLuasTrapesium();
        break;
      case 8:
        hitungLuasLayanglayang();
        break;
      case 0:
        print('Terima kasih.');
        break;
      default:
        print('Pilihan tidak valid.');
        break;
    }
    print('');
  } while (pilihan != 0);
}

void hitungLuasPersegi() {
  stdout.write('Masukkan panjang sisi: ');
  double sisi = double.parse(stdin.readLineSync()!);
  double luas = sisi * sisi;
  print('Luas persegi dengan sisi $sisi adalah $luas');
}

void hitungLuasPersegiPanjang() {
  stdout.write('Masukkan panjang: ');
  double panjang = double.parse(stdin.readLineSync()!);
  stdout.write('Masukkan lebar: ');
  double lebar = double.parse(stdin.readLineSync()!);
  double luas = panjang * lebar;
  print(
      'Luas persegi panjang dengan panjang $panjang dan lebar $lebar adalah $luas');
}

void hitungLuasLingkaran() {
  stdout.write('Masukkan jari-jari: ');
  double jariJari = double.parse(stdin.readLineSync()!);
  double luas = pi * jariJari * jariJari;
  print('Luas lingkaran dengan jari-jari $jariJari adalah $luas');
}

void hitungLuasSegitiga() {
  stdout.write('Masukkan alas: ');
  double alas = double.parse(stdin.readLineSync()!);
  stdout.write('Masukkan tinggi: ');
  double tinggi = double.parse(stdin.readLineSync()!);
  double luas = 0.5 * alas * tinggi;
  print('Luas segitiga dengan alas $alas dan tinggi $tinggi adalah $luas');
}

void hitungLuasJajargenjang() {
  stdout.write('Masukkan alas: ');
  double alas = double.parse(stdin.readLineSync()!);
  stdout.write('Masukkan tinggi: ');
  double tinggi = double.parse(stdin.readLineSync()!);
  double luas = alas * tinggi;
  print('Luas jajargenjang dengan alas $alas dan tinggi $tinggi adalah $luas');
}

void hitungLuasBelahketupat() {
  stdout.write('Masukkan diagonal1: ');
  double diagonal1 = double.parse(stdin.readLineSync()!);
  stdout.write('Masukkan diagonal2: ');
  double diagonal2 = double.parse(stdin.readLineSync()!);
  double luas = 0.5 * diagonal1 * diagonal2;
  if (diagonal1 != diagonal2) {
    print('inputan salah');
  } else {
    print(
        'Luas belahketupat dengan panjang sisi diagonal1 $diagonal1 dan panjang sisi diagonal2 $diagonal2 adalah $luas');
  }
}

void hitungLuasTrapesium() {
  stdout.write('Masukkan tinggi: ');
  double tinggi = double.parse(stdin.readLineSync()!);
  stdout.write('Masukkan panjang sisiA: ');
  double sisiA = double.parse(stdin.readLineSync()!);
  stdout.write('Masukkan panjang sisiB: ');
  double sisiB = double.parse(stdin.readLineSync()!);
  double luas = 2 / tinggi * (sisiA + sisiB);
  print(
      'Luas trapesium dengan tinggi $tinggi dan sisiA $sisiA dan sisiB $sisiB adalah $luas');
}

void hitungLuasLayanglayang() {
  stdout.write('Masukkan diagonal1: ');
  double diagonal1 = double.parse(stdin.readLineSync()!);
  stdout.write('Masukkan diagonal2: ');
  double diagonal2 = double.parse(stdin.readLineSync()!);
  double luas = 0.5 * diagonal1 * diagonal2;
  if (diagonal1 == diagonal2) {
    print('inputan salah');
  } else {
    print(
        'Luas layanglayang dengan panjang sisi diagonal1 $diagonal1 dan panjang sisi diagonal2 $diagonal2 adalah $luas');
  }
}
