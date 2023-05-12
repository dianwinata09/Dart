import 'dart:io';

void main() {
  var cart = <String, int>{};

  while (true) {
    displayMenu();

    var choice = int.tryParse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addToCart(cart);
        break;
      case 2:
        removeFromCart(cart);
        break;
      case 3:
        viewCart(cart);
        break;
      case 4:
        checkout(cart);
        return;
      default:
        print("Pilihan tidak valid. Silakan coba lagi.\n");
    }
  }
}

void displayMenu() {
  print("========== Minimarket Kasir ==========");
  print("1. Tambahkan barang ke keranjang");
  print("2. Hapus barang dari keranjang");
  print("3. Lihat keranjang");
  print("4. Checkout");
  print("======================================");
  print("Pilih menu (1-4):");
}

void addToCart(Map<String, int> cart) {
  print("\nMasukkan nama barang:");
  var itemName = stdin.readLineSync()!;

  print("Masukkan harga barang:");
  var itemPrice = int.tryParse(stdin.readLineSync()!);

  if (itemPrice != null) {
    cart[itemName] = itemPrice;
    print("$itemName berhasil ditambahkan ke keranjang.\n");
  } else {
    print("Harga barang tidak valid. Barang gagal ditambahkan ke keranjang.\n");
  }
}

void removeFromCart(Map<String, int> cart) {
  print("\nMasukkan nama barang yang ingin dihapus:");
  var itemName = stdin.readLineSync()!;

  if (cart.containsKey(itemName)) {
    cart.remove(itemName);
    print("$itemName berhasil dihapus dari keranjang.\n");
  } else {
    print("$itemName tidak ditemukan di keranjang.\n");
  }
}

void viewCart(Map<String, int> cart) {
  print("\nIsi keranjang belanja:");

  if (cart.isEmpty) {
    print("Keranjang kosong.\n");
  } else {
    var total = 0;
    for (var item in cart.entries) {
      print("${item.key} - Rp${item.value}");
      total += item.value;
    }
    print("Total: Rp$total\n");
  }
}

void checkout(Map<String, int> cart) {
  print("\n===== Checkout =====");
  viewCart(cart);
  print("Terima kasih telah berbelanja!");
}
