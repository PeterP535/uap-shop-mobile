Nama : Peter Putra Lesmana
NPM : 2306152361
Kelas: PBP B


[Tugas 7](#tugas-7)
[Tugas 8](#tugas-8)
# Tugas 7

## Stateless Widget dan Stateful Widget
- **Stateless Widget** adalah widget yang tidak dapat berubah setelah dibuat. Sekali dibuat, widget ini hanya menampilkan data statis yang tidak akan diperbarui atau diubah saat aplikasi berjalan. Contoh penggunaan Stateless Widget adalah ketika kita hanya menampilkan teks, ikon, atau gambar yang tidak akan berubah. Stateless Widget lebih ringan dan hemat sumber daya karena tidak memiliki state yang perlu di-update.
- **Stateful Widget** adalah widget yang dapat berubah ketika aplikasi sedang berjalan. Stateful Widget memiliki state yang dapat diubah, misalnya ketika pengguna berinteraksi dengan aplikasi (seperti menekan tombol atau mengetik di input). State pada widget ini dapat diperbarui menggunakan metode setState() yang kemudian akan menyebabkan widget untuk dirender ulang. Stateful Widget biasanya digunakan saat ada interaksi pengguna atau data yang mungkin berubah, seperti tombol atau daftar yang bisa berubah.
## Widget yang Digunakan di Proyek Ini
- Scaffold: Sebuah widget yang menyediakan struktur dasar halaman aplikasi, seperti AppBar, body, dan floatingActionButton. Scaffold sangat umum digunakan di aplikasi untuk membuat layout halaman utama.

- AppBar: Ini adalah alat di bagian atas layar yang biasanya menampilkan judul, ikon, atau tombol navigasi. Dalam proyek ini, AppBar digunakan untuk menampilkan judul halaman.

- Center: Widget ini digunakan untuk memposisikan widget child di tengah layar secara horizontal dan vertikal.

- Column: Column digunakan untuk menata beberapa widget child di layar secara vertikal. Dalam proyek ini, Column menampung tombol-tombol (ElevatedButton.icon) untuk melihat daftar produk, menambah produk, dan logout.

- ElevatedButton.icon: Ini adalah jenis tombol yang memungkinkan kita menambahkan ikon dan teks. Pada proyek ini, digunakan untuk membuat tiga tombol berbeda dengan ikon dan teks.

- SnackBar: Widget ini digunakan untuk menampilkan pesan pop-up singkat di bagian bawah layar. SnackBar berguna untuk memberikan umpan balik atau informasi singkat ketika tombol ditekan.

- SizedBox: Digunakan untuk memberi jarak antar widget, dalam proyek ini digunakan sebagai spacer antara tombol-tombol.

## Fungsi setState()
setState() adalah fungsi dalam Stateful Widget yang digunakan untuk memperbarui state dari widget tersebut. Ketika setState() dipanggil, widget akan dirender ulang dengan data yang baru. Semua variabel dalam widget yang berada di dalam state dapat terdampak oleh setState().
Contoh variabel yang terdampak oleh setState():
- Variabel yang menyimpan data dinamis, seperti teks, angka, atau daftar yang berubah karena interaksi pengguna.
- Contoh: jika kita memiliki penghitung dalam aplikasi yang bertambah setiap kali tombol ditekan, variabel penghitung akan diperbarui di dalam setState().

## Perbedaan antara const dan final
- const: Digunakan untuk mendeklarasikan nilai konstan yang bersifat tetap di waktu kompilasi. Nilai yang dideklarasikan dengan const tidak dapat berubah dan harus diketahui saat waktu kompilasi. const juga memungkinkan Flutter untuk melakukan optimasi yang lebih baik dengan membuat widget lebih ringan.

- final: Digunakan untuk mendeklarasikan variabel yang nilainya tetap setelah diinisialisasi, tetapi bisa diinisialisasi saat runtime (tidak harus diketahui di waktu kompilasi). final memungkinkan inisialisasi nilai yang akan diketahui di runtime.

Perbedaan utama: const digunakan untuk nilai tetap yang diketahui saat kompilasi, sementara final memungkinkan nilai tetap yang diatur pada runtime.

## Implementasi Checklist-Checklist di Atas
Berikut cara saya mengimplementasikan checklist yang diberikan:

- Membuat tiga tombol menggunakan ElevatedButton.icon untuk menampilkan ikon dan teks. Masing-masing tombol diberi warna yang berbeda dengan backgroundColor di ElevatedButton.styleFrom.
- Menambahkan logika untuk setiap tombol, di mana setiap tombol akan menampilkan Snackbar dengan pesan berbeda saat ditekan. Hal ini diimplementasikan di dalam onPressed untuk setiap tombol.
- Menambahkan const pada widget statis untuk mengoptimalkan performa dan meminimalkan penggunaan memori sesuai dengan rekomendasi analyzer.




# Tugas 8
## 1. Kegunaan const di Flutter
const digunakan untuk membuat objek yang bersifat immutable (tidak dapat diubah) dan constant pada saat compile-time. Dalam Flutter, const sering digunakan untuk meningkatkan performa aplikasi dengan menghindari pembuatan ulang widget yang tidak berubah.

### Keuntungan menggunakan const:
- Efisiensi memori: Objek const hanya dibuat sekali dan dapat digunakan di mana saja tanpa alokasi memori baru.
- Optimalisasi performa: Flutter dapat menghindari rendering ulang untuk widget const karena mereka dijamin tidak akan berubah.
- Penghindaran bug: Dengan const, kita memastikan bahwa nilai tidak dapat dimodifikasi setelah dideklarasikan.
### Kapan menggunakan const:
- Gunakan const jika widget atau nilai tidak akan berubah selama siklus hidup aplikasi.
- Contoh: teks statis, ikon, atau dekorasi widget.
### Kapan tidak menggunakan const:
- Jika nilai atau widget akan berubah secara dinamis berdasarkan input atau logika aplikasi.

## Perbandingan Column dan Row pada Flutter
Column dan Row adalah widget layout yang digunakan untuk menyusun widget secara vertikal (Column) atau horizontal (Row).

### Column
- Orientasi: Vertikal.
- Kegunaan: Untuk menyusun widget secara vertikal, satu di atas yang lain.
- Properti utama:
- - mainAxisAlignment: Mengatur penyelarasan pada sumbu utama (vertikal).
- - crossAxisAlignment: Mengatur penyelarasan pada sumbu silang (horizontal).
- Contoh Column:
```dart
@Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
)
```
### Row
- Orientasi: Horizontal.
- Kegunaan: Untuk menyusun widget secara horizontal, satu di samping yang lain.
- Properti utama:
- - mainAxisAlignment: Mengatur penyelarasan pada sumbu utama (horizontal).
- - crossAxisAlignment: Mengatur penyelarasan pada sumbu silang (vertikal).
- Contoh Row:
```dart
@Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
        Icon(Icons.home),
        Icon(Icons.search),
        Icon(Icons.settings),
    ],
)
```
## Elemen Input pada Halaman Form
### Elemen input yang digunakan:
TextFormField: Untuk menerima input teks seperti nama, jumlah, dan deskripsi.

Contoh:

```dart

@TextFormField(
decoration: InputDecoration(labelText: "Name"),
)
```
### Elemen input Flutter yang tidak digunakan:
1. Checkbox: Untuk menerima input berupa nilai boolean (true/false).
2. Radio: Untuk memilih satu opsi dari beberapa pilihan.
3. Switch: Untuk mengaktifkan/mematikan fitur (boolean).
4. DropdownButton: Untuk memilih satu opsi dari daftar dropdown.
5. Slider: Untuk memilih nilai dalam rentang tertentu.
6. DatePicker: Untuk memilih tanggal.
### Penjelasan:
Elemen input lain seperti Checkbox atau DropdownButton tidak digunakan karena tidak relevan untuk tugas kali ini (form hanya memerlukan teks input).


## Mengatur Tema (Theme) pada Flutter
### Cara mengatur tema dalam Flutter:
   Flutter memiliki fitur ThemeData untuk mengatur tema global aplikasi, termasuk warna, teks, dan gaya widget lainnya.

### Apakah saya mengimplementasikan tema?
Pada aplikasi yang dibuat, tema sudah diatur menggunakan properti ThemeData pada MaterialApp. Warna default aplikasi menggunakan ColorScheme untuk konsistensi.



## Menangani Navigasi dalam Aplikasi Flutter
### Cara menangani navigasi:
Navigasi dasar dengan Navigator: Gunakan Navigator.push untuk berpindah ke halaman baru.

```dart

@Navigator.push(
context,
MaterialPageRoute(builder: (context) => NewPage()),
)
```
### Navigasi dengan routes di MaterialApp: Tentukan rute di MaterialApp untuk navigasi yang lebih terorganisir.

```dart

@MaterialApp(
routes: {
'/': (context) => HomePage(),
'/add-item': (context) => AddItemForm(),
},
)
```
Navigasi ke halaman:

```dart
Navigator.pushNamed(context, '/add-item');
```
### Navigasi dengan state management: 
Untuk aplikasi kompleks, gunakan state management seperti Provider atau Riverpod untuk navigasi terintegrasi dengan logika aplikasi.