# Tokokita

Aplikasi mobile management produk toko yang dibangun menggunakan Flutter. Aplikasi ini menyediakan fitur CRUD (Create, Read, Update, Delete) untuk manajemen produk serta sistem autentikasi user.

## Fitur Aplikasi

### 1. Registrasi

![alt text](image.png)

Halaman registrasi adalah halaman pertama untuk pendaftaran user baru. Halaman ini memiliki AppBar berwarna biru dengan judul "Registrasi". Di body terdapat form dengan 4 input field:

- **Field Nama**: Validasi minimal 3 karakter
- **Field Email**: Validasi format email yang benar menggunakan RegEx
- **Field Password**: Validasi minimal 6 karakter
- **Field Konfirmasi Password**: Validasi harus sama dengan password yang diinputkan

Terdapat tombol "Registrasi" untuk submit form. Saat ini tombol sudah melakukan validasi form, namun belum terhubung ke backend API untuk menyimpan data registrasi.

### 2. Login

![alt text](image-1.png)

Halaman login untuk user yang sudah terdaftar. Memiliki AppBar berwarna biru dengan judul "Login". Form login terdiri dari:

- **Field Email**: Validasi email harus diisi
- **Field Password**: Validasi password harus diisi
- **Tombol Login**: Untuk submit form
- **Link Registrasi**: Link berwarna biru di bawah yang mengarahkan ke halaman registrasi jika user belum punya akun

Saat ini fungsi login sudah memvalidasi input tetapi belum terintegrasi dengan API untuk autentikasi.

### 3. List Produk Page

![alt text](image-2.png)

Halaman utama yang menampilkan daftar produk. Memiliki AppBar berwarna biru dengan judul "List Produk" dan icon tambah (+) di pojok kanan untuk menambah produk baru. Terdapat drawer menu dengan opsi Logout.

Body menampilkan ListView berisi card produk dalam bentuk ListTile. Setiap item produk menampilkan nama produk sebagai title dan harga sebagai subtitle. Saat ini ada 3 produk dummy:

- Kamera dengan harga 5000000
- Kulkas dengan harga 2500000
- Mesin Cuci dengan harga 2000000

Ketika item produk diklik, akan membuka halaman detail produk.

### 4. Add Produk Page

![alt text](image-3.png)

Halaman untuk menambah produk baru. AppBar berwarna biru dengan judul "TAMBAH PRODUK". Form input terdiri dari:

- **Field Kode Produk**: Validasi harus diisi
- **Field Nama Produk**: Validasi harus diisi
- **Field Harga**: Validasi harus diisi, input type number

Tombol "SIMPAN" untuk menyimpan data produk. Validasi sudah berjalan tetapi belum terhubung ke API untuk menyimpan data ke database.

### 5. Detail Produk Page

![alt text](image-4.png)

Halaman yang menampilkan informasi lengkap produk. AppBar berwarna biru dengan judul "Detail Produk". Di body menampilkan:

- Kode produk dengan font size 20
- Nama produk dengan font size 18
- Harga produk dengan format "Rp." dan font size 18

Di bagian bawah terdapat 2 tombol yang saling menempel:

- **Tombol EDIT**: Berwarna hijau dengan sudut melengkung di sisi kiri, untuk mengedit produk
- **Tombol DELETE**: Berwarna merah dengan sudut melengkung di sisi kanan, untuk menghapus produk

### 6. Edit Produk Page

![alt text](image-5.png)

Halaman untuk mengubah data produk yang sudah ada. AppBar berwarna biru dengan judul "UBAH PRODUK". Form sama seperti Add Produk tetapi field sudah terisi dengan data produk yang akan diedit:

- **Field Kode Produk**: Menampilkan kode produk saat ini
- **Field Nama Produk**: Menampilkan nama produk saat ini
- **Field Harga**: Menampilkan harga produk saat ini

Tombol berubah menjadi "UBAH" untuk menyimpan perubahan. Validasi form sudah berjalan tetapi belum terhubung ke API untuk update data.

### 7. Delete Alert

![alt text](image-6.png)

Dialog konfirmasi yang muncul ketika user menekan tombol DELETE di halaman detail produk. AlertDialog menampilkan:

- **Pesan konfirmasi**: "Yakin ingin menghapus data ini?"
- **Tombol Ya**: Untuk mengonfirmasi penghapusan dan kembali ke halaman list produk
- **Tombol Batal**: Untuk membatalkan penghapusan dan menutup dialog

Saat ini fungsi delete sudah terintegrasi dengan ProdukBloc yang akan memanggil API delete, dan menampilkan WarningDialog jika penghapusan gagal.

## Struktur Folder

```
lib/
├── bloc/           # Business logic layer
├── model/          # Data models (Login, Registrasi, Produk)
├── ui/             # User interface pages
└── widget/         # Reusable widgets
```

## Teknologi

- Flutter SDK
- Dart Programming Language
