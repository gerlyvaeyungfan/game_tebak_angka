import 'dart:io';
import 'dart:math';

int hitungFaktorial(int n) {
  int hasil = 1;
  for (int i = 1; i <= n; i++) {
    hasil *= i;
  }
  return hasil;
}

bool cekPrima(int n) {
  if (n < 2) return false;
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

void main() {
  while (true) {
    print("\n=======================================");
    print("          MENU PROGRAM DART             ");
    print("=======================================");
    print("1. Game Tebak Angka");
    print("2. Hitung Faktorial");
    print("3. Cek Bilangan Prima");
    print("0. Keluar");
    stdout.write("Pilih menu: ");
    int pilihan = int.parse(stdin.readLineSync()!);

    switch (pilihan) {
      case 0:
        print("Terima kasih, program selesai.");
        return; // keluar dari program
      case 1:
        gameTebakAngka();
        break;
      case 2:
        stdout.write("Masukkan angka: ");
        int n = int.parse(stdin.readLineSync()!);
        print("Faktorial dari $n = ${hitungFaktorial(n)}");
        break;
      case 3:
        stdout.write("Masukkan angka: ");
        int n = int.parse(stdin.readLineSync()!);
        if (cekPrima(n)) {
          print("$n adalah bilangan prima.");
        } else {
          print("$n bukan bilangan prima.");
        }
        break;
      default:
        print("Menu tidak valid.");
    }
  }
}

void gameTebakAngka() {
  Random random = Random();
  int angkaRahasia = random.nextInt(100) + 1;
  int tebakan;
  int percobaan = 0;

  print("\n=== Game Tebak Angka ===");
  do {
    stdout.write("Masukkan tebakan kamu: ");
    tebakan = int.parse(stdin.readLineSync()!);
    percobaan++;

    if (tebakan > angkaRahasia) {
      print("Terlalu besar!");
    } else if (tebakan < angkaRahasia) {
      print("Terlalu kecil!");
    } else {
      print("🎉 Tebakan benar dalam $percobaan kali percobaan.");
    }
  } while (tebakan != angkaRahasia);
}
