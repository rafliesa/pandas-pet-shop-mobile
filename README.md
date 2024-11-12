# Tugas 7

## 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya!
**Stateless widget** <br>
Stateless widget adalah widget yang tidak menyimpan state sehingga tidak akan berubah seiring waktu. Contoh dari stateless widget adalah tombol, gambar statis, atau teks statis yang tidak akan berubah ketika berinteraksi dengan *user*.

**Stateful widget** <br>
Stateful widget adalah widget yang dapat menyimpan dan mengelola statenya sendiri. Ketika state dari stateful widget berubah, widget tersebut akan melakukan rebuild untuk memperbarui tampilan yang sesuai dengan status baru. Stateful widget digunakan dalam situasi di mana tampilan aplikasi perlu diperbarui berdasarkan interaksi pengguna, seperti input form atau data yang diambil dari server.

## 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya!
**1. Appbar** <br>
berfungsi untuk menampilkan judul aplikasi<br>
**2. Body** <br>
berfungsi sebagai konten utama dari aplikasi<br>
**3. Container**<br>
berfungsi untuk mengatur layout utama<br>
**4. Row**<br> 
berfungsi untuk mengatur layout ke arah horizotal<br>
**5. Column**<br>
berfungsi untuk mengatur layout ke arah vertikal<br>
**6. Text**<br>
berfungsi untuk menampilkan teks<br>
**7. Material**<br>
berfungsi untuk memberikan efek visual yang konsisten dengan prinsip desain Material dari Google<br>
**8. SnackBar**<br> 
berfungsi untuk menampilkan pesan sementara di bawah layar<br>

## 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut!
Fungsi ini digunakan untuk memberi tahu bahwa ada perubahan pada state yang memerlukan pembaruan UI. Ketika setState() dipanggil, flutter akan merender ulang widget yang tergantung pada state tersebut.
Variabel yang terdampak adalah apapun yang berada pada scope fungsi tersebut yang bukan merupakan const atau final.

## 4. Jelaskan perbedaan antara const dengan final!
Keduanya sama-sama merupakan modifier variabel yang menandakan bahwa variabel tersebut tidak bisa diubah. Perbedaannya yaitu final dapat digunakan untuk value yang tidak diketahui pada saat runtime, seperti contoh new DateTime.now(), sedangkan const tidak. Selain itu, fields pada final dapat diubah selama fields tersebut bukan merupakan final/const. Hal tersebut tidak dapat dilakukan dengan menggunakan const.

## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas!

#### Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.
Flutter berjalan cukup lambat pada perangkat saya. Untuk mengatasi hal tersebut, saya menggunakan [Project IDX](https://idx.google.com/). Untuk membuat project Flutter baru, cukup pilih template Flutter pada saat membuat workspace baru. 

Setelah workspace terbuat, Project Flutter terinisiasi secara automatis.

Saya langsung membuat menu.dart pada direktori lib yang akan diisi oleh class MyHomePage. Setelah itu saya menghapus class MyHomePage pada main.dart.

Class tersebut adalah tempat segala konten aplikasi saya.

#### Membuat tiga tombol sederhana dengan ikon dan teks untuk <br>1. Melihat daftar produk (Lihat Daftar Produk)<br>2. Menambah produk (Tambah Produk)<br>3. Logout (Logout)
Pertama, saya membuat class ItemHomepage yang akan menyimpan beberapa variabel seperti name, icon, color. Class ini digunakan sebagai identifikasi item-item yang akan ada di homepage.

Setelah itu membuat class Button yang berfungsi sebagai button, class ini memiliki field ItemHomepage yang sudah didefinisikan di atas. Setelah class tersebut dibuat, kita dapat inisiasi class tersebut pada class MyHomePage. Untuk memberi nama dan icon, inisiasi button tersebut dengan menggunakan ItemHomepage(nama_button, icon_button).

####  Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout).
Buat atribut baru dalam ItemHomepage yang menyimpan nilai dari warna. Lalu pada class button, atur warna sesuai dengan value ItemHomepage.color.

#### Memunculkan Snackbar
Pada class Button, saya menambahkan event handler hideCurrentSnackBar() dan showSnackBar(). Pada showSnackBar, saya menambahkan text dinamis "Text("Kamu telah menekan tombol ${item.name}!")", sehingga nama tombol menyesuaikan tombol yang sedang di tekan.

# Tugas 8
## 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
Kegunaannya adalah untuk mendeklarasikan variabel yang konstan serta nilainya siap saat dicompile (tidak menunggu runtime seperti final).

Keuntungan menggunakan const adalah peningkatan performa karena dibuat hanya satu kali, meskipun digunakan berkali-kali, serta tidak akan berubah pada runtime.

Kita sebaiknya menggunakan const ketika valuenya tidak bergantung pada runtime melainkan sudah diketahui saat compile time. Dalam konteks UI development yang lebih spefisifik, const dapat digunakan ketika elemen UI tidak bergantung pada nilai dinamis atau input dari pengguna.

## 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

### Column
Column menyusun widget secara vertikal, contoh implementasinya pada aplikasi ini adalah grup 2 tombol yang ditumpuk secara vertikal.

### Row
Row menyusun widget secara horizontal, contoh implementasinya pada aplikasi ini adalah 2 tombol yang disusun secara horizontal.

## 3.Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Saya hanya menggunakan TextFormField.

Element input lain yang tidak saya gunakan ada:
1. TextField
2. RadioButton
3. Checkbox
4. Switch
5. Dropdown
6. Slider

### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Dengan menambahkan tema pada pada MaterialApp di kelas main.dart. Saya menambahkan color scheme yang akan digunakan sebagai dasar dalam membangun UI aplikasi secara keseluruhan.


### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Pada aplikasi ini, saya melakukannya dengan:
1. button yang akan mengarahkan ke halaman lain.
2. Drawer yang berisi berbagai halaman terutama yang sering diakses dengan user.