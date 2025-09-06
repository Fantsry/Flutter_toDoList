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
MyApp (StatelessWidget)
│
└── MaterialApp
    │
    └── HomePage (StatefulWidget)
        │
        ├── AppBar
        │   ├── Text ('To do List')
        │   └── IconButton (leading: Icon(Icons.person))
        │
        ├── Body: ListView.builder
        │   └── TodoList (for each item in toDoList)
        │       ├── Slidable
        │       │   ├── endActionPane: SlidableAction (delete)
        │       │   └── Container
        │       │       ├── Row
        │       │       │   ├── Checkbox
        │       │       │   └── Text
        │       │       │
        │       │       └── (decorations)
        │       │
        │       └── (other properties)
        │
        └── FloatingActionButton (Row)
            ├── Expanded: TextField
            └── FloatingActionButton (with Icon(Icons.add))


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

