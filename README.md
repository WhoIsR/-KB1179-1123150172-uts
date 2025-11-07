# 🎃 UTS Flutter — Aplikasi Mini

![Flutter](https://img.shields.io/badge/Flutter-3.9-blue?logo=flutter&logoColor=white) ![Dart](https://img.shields.io/badge/Dart-%5E3.9.2-blue)

Nama lengkap: **Radja Satrio Seftiano**  
NIM: **1123150172**

---

## ✨ ringkasan

Proyek Flutter sederhana berisi tiga splash screen berurutan yang mengarahkan pengguna ke layar login. Aset gambar terdaftar di `pubspec.yaml` dan entry point berada di `lib/main.dart`.

## 📋 Daftar isi

- [Cara menjalankan (run di device)](#-cara-menjalankan-run-di-device)
- [Isi penting dari `lib/`](#-isi-penting-dari-lib)
- [Catatan kendala / hal yang perlu diperhatikan](#-catatan-kendala--hal-yang-perlu-diperhatikan)
- [Troubleshooting singkat](#-troubleshooting-singkat)

---

## 🚀 Cara menjalankan (run di device)

Prasyarat:

- Flutter SDK terpasang dan dikonfigurasi (PATH).
- Android SDK (untuk perangkat Android) atau dukungan desktop (Windows) jika menargetkan desktop.
- Jika menjalankan di perangkat fisik Android: aktifkan "USB debugging" dan sambungkan perangkat via USB.

Buka PowerShell di folder proyek (`c:\MobileApp\uts_flutter`) lalu jalankan:

```powershell
flutter pub get
flutter devices
flutter run
# Jika ada lebih dari satu device, jalankan:
flutter run -d <deviceId>
```

Build release APK (Android):

```powershell
flutter build apk --release
```

Jalankan di Windows (desktop) jika tersedia:

```powershell
flutter run -d windows
```

Jika terjadi error environment: jalankan

```powershell
flutter doctor
```

---

## 🗂️ Ringkasan isi penting dari `lib/`

- `lib/main.dart` — entry point, memulai `SplashScreen1`.
- `lib/screen/splash_screen1.dart` — splash pertama (menggunakan `assets/images/hw3.png`).
- `lib/screen/splash_screen2.dart` — splash kedua (menggunakan `assets/images/hw2.png`).
- `lib/screen/splash_screen3.dart` — splash ketiga (menggunakan `assets/images/hw1.png`) dan menavigasi ke `Login`.
- `lib/screen/login.dart` — layar login UI (TextField dan tombol), namun aksi login belum diimplementasikan.

---

## ⚠️ Catatan kendala / hal yang perlu diperhatikan

1. Tombol **SIGN IN** pada `lib/screen/login.dart` belum berisi logika autentikasi (ada komentar `//todo: login action`). Menekan tombol saat ini tidak melakukan apa-apa.
2. Pada `login.dart` tombol **Lupa Password?** menavigasi kembali ke `SplashScreen1` — ini mungkin bukan perilaku yang diharapkan untuk fitur lupa password.
3. Pastikan berkas aset ada di lokasi yang sesuai:

- `assets/images/hw1.png`
- `assets/images/hw2.png`
- `assets/images/hw3.png`
  Jika file aset tidak ditemukan, aplikasi akan melempar error saat memuat `AssetImage`.

4. Tidak ada paket pihak ketiga selain `cupertino_icons` yang digunakan (lihat `pubspec.yaml`). Jadi dependency management relatif sederhana.
5. Jika mendapatkan error Gradle/SDK saat build Android, periksa konfigurasi Android SDK pada `local.properties` atau jalankan Android Studio untuk menyetel kembali path SDK.

6. Warna/footer sedikit keliru pada halaman Login — catatan tambahan (baru):

- Footer pada halaman **Login** memakai gradient atau warna yang tidak sepenuhnya menyatu dengan latar body sehingga teks footer tampak tidak kontras atau 'terpisah'. Hal ini spesifik terlihat pada `lib/screen/login.dart` di bagian `bottomNavigationBar`.
- Penyebab umum: `bottomNavigationBar` tidak mewarisi dekorasi body; jika ingin tampilan menyatu, dekorasi gradient harus ditempatkan di parent yang membungkus keseluruhan layar, atau gunakan `extendBody: true` / `extendBodyBehindAppBar` dan atur background `bottomNavigationBar` menjadi transparan, atau gabungkan footer ke dalam body (mis. column dengan Expanded + footer). Saya belum mengubah kode, jadi ini catatan kendala yang saya temukan pada halaman Login.

---

## 🛠 Troubleshooting singkat

- Jika device tidak terdeteksi: jalankan `flutter devices` dan pastikan driver USB (Windows) terpasang serta USB debugging aktif.
- Jika build gagal karena versi SDK/Gradle: jalankan `flutter doctor` dan ikuti instruksi.
- Untuk masalah assets: periksa `pubspec.yaml` dan pastikan file berada di `assets/images/`.

---

Terima kasih.
