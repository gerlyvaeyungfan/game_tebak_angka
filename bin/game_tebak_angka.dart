import 'dart:io';
import 'dart:math';

int hitungFaktorial(int n) {
  int hasil = 1;
  for (int i = 1; i <= n; i++) {
    hasil *= i;
  }
  return hasil;
}

void main() {
  print("=======================================");
  print("         GAME TEBAK ANGKA DART          ");
  print("=======================================");

  Random random = Random();
  int angkaRahasia = random.nextInt(100) + 1;
  int tebakan;
  int percobaan = 0;

  print("\nSaya sudah memilih angka antara 1 sampai 100.");
  print("Coba tebak angka rahasia!");

  do {
    stdout.write("\nMasukkan tebakan kamu: ");
    tebakan = int.parse(stdin.readLineSync()!);
    percobaan++;

    if (tebakan > angkaRahasia) {
      print("Terlalu besar! Coba lagi.");
    } else if (tebakan < angkaRahasia) {
      print("Terlalu kecil! Coba lagi.");
    } else {
      print("🎉 Selamat! Kamu berhasil menebak angka $angkaRahasia dalam $percobaan kali tebakan.");
    }
  } while (tebakan != angkaRahasia);

  // Demo pemanggilan faktorial
  stdout.write("\nMasukkan angka untuk faktorial: ");
  int n = int.parse(stdin.readLineSync()!);
  print("Faktorial dari $n = ${hitungFaktorial(n)}");
}
