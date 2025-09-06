# Flutter ToDo List App

Aplikasi Flutter sederhana dengan 2 halaman:
- **HomePage**: Menampilkan daftar ToDo (bisa tambah, centang, hapus).
- **ProfilePage**: Menampilkan profil statis.

## Fitur
- Tambah task baru (validasi tidak boleh kosong).
- Checklist task selesai.
- Hapus task dengan **swipe (Slidable)**.
- Navigasi antar halaman (Home ↔ Profile).

## Widget Tree (singkat)
MyApp
└── MaterialApp
└── HomePage (Stateful)
├── AppBar (dengan tombol menuju ProfilePage)
├── ListView.builder → TodoList (custom widget + Slidable)
└── FloatingActionButton (+ TextField untuk tambah task)
└── ProfilePage (Stateless)


## State Management
Menggunakan **`setState`** karena:
- Sederhana.
- Cukup untuk aplikasi kecil dengan state lokal (list ToDo).

## Slidable
Paket `flutter_slidable` dipakai untuk membuat task bisa di-**swipe** ke kiri,
sehingga muncul tombol hapus berwarna merah.  
Ini membuat interaksi lebih natural dibanding hanya menekan ikon delete.

## Demo
[Lihat Demo](screenshots/demo.mp4)

