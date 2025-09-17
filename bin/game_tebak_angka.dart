import 'dart:io';
import 'dart:math';

void main() {
  // Judul program
  print("=======================================");
  print("         GAME TEBAK ANGKA DART          ");
  print("=======================================");

  // Generate angka acak 1–100
  Random random = Random();
  int angkaRahasia = random.nextInt(100) + 1;
  int tebakan;
  int percobaan = 0;

  print("\nSaya sudah memilih angka antara 1 sampai 100.");
  print("Coba tebak angka rahasia!");

  // Perulangan do-while agar minimal sekali jalan
  do {
    stdout.write("\nMasukkan tebakan kamu: ");
    tebakan = int.parse(stdin.readLineSync()!);
    percobaan++;

    // Percabangan if-else
    if (tebakan > angkaRahasia) {
      print("Terlalu besar! Coba lagi.");
    } else if (tebakan < angkaRahasia) {
      print("Terlalu kecil! Coba lagi.");
    } else {
      print("🎉 Selamat! Kamu berhasil menebak angka $angkaRahasia dalam $percobaan kali tebakan.");
    }
  } while (tebakan != angkaRahasia);
}
