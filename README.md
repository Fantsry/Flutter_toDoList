# Flutter ToDo List App

Aplikasi Flutter sederhana dengan 2 halaman:
- **HomePage**: Menampilkan daftar ToDo (bisa tambah, centang, hapus).
- **ProfilePage**: Menampilkan profil statis.

## Fitur
- Tambah task baru (validasi tidak boleh kosong).
- Checklist task selesai.
- Hapus task dengan **swipe (Slidable)**.
- Navigasi antar halaman (Home ↔ Profile).

## Widget Tree
```
MyApp (StatelessWidget)
└── MaterialApp
    └── HomePage (StatefulWidget)
        ├── Scaffold
        │   ├── AppBar
        │   │   ├── Text ('To do List')
        │   │   └── IconButton (profile navigation)
        │   ├── Body
        │   │   └── ListView.builder
        │   │       └── TodoList (for each item)
        │   │           ├── Slidable
        │   │           │   ├── endActionPane (delete action)
        │   │           │   └── Container
        │   │           │       ├── Row
        │   │           │       │   ├── Checkbox
        │   │           │       │   └── Text
        │   │           │       └── BoxDecoration
        │   │           └── Other properties
        │   └── FloatingActionButton (Row)
        │       ├── Expanded: TextField (input baru)
        │       └── FloatingActionButton (tambah task)
        └── State Management
            └── toDoList array
```
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

