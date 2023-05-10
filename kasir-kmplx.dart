import 'dart:io';

void main() {
  var cart = <String, int>{};
  var products = {
    'coffe': 100000,
    'thai tea': 150000,
    'orange': 80000,
    'toast': 120000,
    'cookies': 150000,
  };

  while (true) {
    print('============ Selamat datang di Cafe Pride! ============');
    print('1. Tambah barang ke keranjang');
    print('2. Hapus barang dari keranjang');
    print('3. Lihat keranjang');
    print('4. Proses pembayaran');
    print('5. Keluar');
    print('=======================================================');

    stdout.write('Masukkan pilihan: ');
    var choice = int.tryParse(stdin.readLineSync() ?? '');

    switch (choice) {
      case 1:
        addToCart(cart, products);
        break;
      case 2:
        removeFromCart(cart);
        break;
      case 3:
        viewCart(cart, products);
        break;
      case 4:
        processPayment(cart, products);
        break;
      case 5:
        exit(0);
        break;
      default:
        print('Pilihan tidak valid. Silakan coba lagi.\n');
    }
  }
}

void addToCart(Map<String, int> cart, Map<String, int> products) {
  print('\nDaftar produk:');
  products.forEach((product, price) => print('$product - Rp$price'));

  while (true) {
    stdout.write('Masukkan nama produk: ');
    var product = stdin.readLineSync()!;

    if (product == 'x' || product == 'X') {
      break;
    }

    if (products.containsKey(product)) {
      stdout.write('Masukkan jumlah: ');
      var quantity = int.tryParse(stdin.readLineSync() ?? '');

      if (quantity != null && quantity > 0) {
        cart.update('$product', (value) => value + quantity,
            ifAbsent: () => quantity);
        print(
            'Produk berhasil ditambahkan ke keranjang. ketik [X] untuk keluar\n');
      } else {
        print('Jumlah tidak valid. Gagal menambahkan produk ke keranjang.\n');
      }
    } else {
      print('Produk tidak valid. Gagal menambahkan produk ke keranjang.\n');
    }
  }
}

void removeFromCart(Map<String, int> cart) {
  if (cart.isEmpty) {
    print('\nKeranjang kosong.\n');
    return;
  }

  print('\nIsi keranjang:');
  cart.forEach((product, quantity) => print('$product - $quantity'));

  stdout.write('Masukkan nama produk yang akan dihapus: ');
  var product = stdin.readLineSync()?.toLowerCase();

  if (cart.containsKey(product)) {
    cart.remove(product);
    print('Produk berhasil dihapus dari keranjang.\n');
  } else {
    print('Produk tidak ditemukan di keranjang.\n');
  }
}

void viewCart(Map<String, int> cart, Map<String, int> products) {
  if (cart.isEmpty) {
    print('\nKeranjang kosong.\n');
    return;
  }

  print('\nIsi keranjang:');
  cart.forEach((product, quantity) {
    var price = products[product]!;
    var total = price * quantity;
    print('$product - $quantity x Rp$price = Rp$total');
  });
  print('Total: Rp${calculateTotal(cart, products)}\n');
}

int calculateTotal(Map<String, int> cart, Map<String, int> products) {
  var total = 0;
  cart.forEach((product, quantity) {
    var price = products[product]!;
    total += price * quantity;
  });
  return total;
}

void processPayment(Map<String, int> cart, Map<String, int> products) {
  if (cart.isEmpty) {
    print('\nKeranjang kosong. Tidak ada pembayaran yang perlu diproses.\n');
    return;
  }

  viewCart(cart, products);

  print('Proses pembayaran...');
  print('Masukkan jumlah uang yang diberikan oleh pelanggan: ');

  var payment = int.tryParse(stdin.readLineSync() ?? '');

  if (payment != null && payment >= calculateTotal(cart, products)) {
    var change = payment - calculateTotal(cart, products);
    print('============= CAFE PRIDE =============');
    print('     Jl.Arief Rahman Hakim No. 35     ');
    print('    ==============================    ');
    print('Customer : Tunai');
    //tampilan tanggal
    DateTime now = DateTime.now();
    String date = '${now.day}-${now.month}-${now.year}';
    print('Tanggal  : ${date}\n');
    //tampilan barang dan harga
    cart.forEach((product, quantity) {
      int price = products[product]!;
      int total = price * quantity;
      print('$product ');
      print('$quantity x Rp$price         =      Rp$total');
    });
    print('');
    print('Total: Rp${calculateTotal(cart, products)}');
    //kembalian
    print('Kembalian: Rp$change\n');
    print('=======================================');
    print('       Terima Kasih Atas Kunjungan Anda      ');
    print('Barang yang sudah di beli tidak dapat ditukar\n');
    print('\n');
    print('\n');
    print('\n');
  } else {
    print('Jumlah uang tidak valid atau tidak cukup. Pembayaran gagal.\n');
  }
  cart.clear();
}

// void struk(Map<String, int> cart, Map<String, int> products) {
//   print('============= CAFE PRIDE =============');
//   print('     Jl.Arief Rahman Hakim No. 35     ');
//   print('======================================');

//   cart.forEach((product, quantity) {
//     int price = products[product]!;
//     int total = price * quantity;
//     print('$product ');
//     print('$quantity x Rp$price      = Rp$total');
//   });
//   print('Total: Rp${calculateTotal(cart, products)}');

//   print('============= TERIMA KASIH ===========');
// }
