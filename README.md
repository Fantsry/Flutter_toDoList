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
MyApp (StatelessWidget) | __ MaterialApp | __ HomePage (StatefulWidget) | __ AppBar | __ Text (To do List) | __ IconButton  
(leading: Icon(icons.person)) | __ Body: ListView.builder | __ TodoList (for each item in toDoList) | __ Slidable | __ endActionPane:  
SlidableAction (delete) | __ Container | __ Row | __ Checkbox | __ Text | __ (decorations) | __ (other properties) | __ FloatingActionButton (Row) | __ Expanded: TextField | __ FloatingActionButton (with Icon(icons.add))

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

