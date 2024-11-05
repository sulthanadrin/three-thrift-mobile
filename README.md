<details>
<summary>--TUGAS 7--</summary>

| *Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.* |

* Widget stateless adalah jenis widget di Flutter yang tidak memiliki status (state) yang dapat berubah selama siklus hidupnya. Ini berarti bahwa ketika widget tersebut dibuat, tampilan dan perilakunya tetap sama sampai widget tersebut dihapus atau diganti dengan yang lain. Widget ini ideal digunakan untuk komponen UI yang tidak memerlukan pembaruan dinamis atau interaksi dari pengguna.

* Widget stateful adalah jenis widget di Flutter yang memiliki status (state) yang dapat berubah selama siklus hidupnya. Berbeda dengan widget stateless, widget stateful dapat menyimpan informasi yang dapat diubah sebagai respons terhadap interaksi pengguna atau perubahan dalam data. Ini membuat widget stateful sangat berguna untuk komponen UI yang memerlukan pembaruan dinamis, seperti formulir, animasi, atau elemen interaktif lainnya.

| *Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya* |

* pada kode saya yang sekarang, saya masih menggunakan StateLess Widget saja yang antara lain berfungsi untuk

     1. Definisi Kelas dan Inisialisasi Data
Kelas MyHomePage adalah StatelessWidget yang mendeskripsikan halaman utama aplikasi.
Menggunakan variabel final untuk menyimpan data yang tidak akan berubah, seperti NPM, nama, dan kelas, menjadikan kelas ini mudah untuk dipahami dan digunakan.
    2. Membangun Antarmuka Pengguna
Metode build: Digunakan untuk membangun antarmuka pengguna. Metode ini akan dipanggil setiap kali widget ini dirender.
Scaffold: Memberikan struktur dasar untuk aplikasi, seperti app bar dan body.
    3. Pengorganisasian Widget
Menggunakan Column dan Row untuk menyusun widget secara vertikal dan horizontal, meningkatkan keterbacaan dan manajemen tata letak.
Kelas InfoCard dan ItemCard yang juga merupakan widget stateless, membantu menjaga kode tetap modular dan terorganisir.
    4. Reusability dan Modularitas
Modularisasi: Dengan memisahkan informasi ke dalam InfoCard, Anda dapat mengubah cara informasi ditampilkan tanpa mempengaruhi keseluruhan halaman.
Reusability: Widget ini dapat digunakan di berbagai tempat dalam aplikasi tanpa penulisan ulang kode, yang menghemat waktu dan usaha.
    5. Kinerja yang Lebih Baik
Karena widget stateless tidak menyimpan status, Flutter dapat mengoptimalkan rendering, hanya membangun ulang widget saat diperlukan.
Rendering Efisien: Jika data tidak berubah, widget tidak perlu dirender ulang, meningkatkan responsivitas aplikasi.
    6. Konsistensi UI
Menggunakan widget stateless untuk menampilkan data tetap (seperti NPM, nama, dan kelas) memastikan bahwa tampilan antarmuka selalu konsisten setiap kali widget ini dirender.

*Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.*

* fungsi setState() digunakan untuk memberi tahu Flutter bahwa ada perubahan yang perlu dilakukan pada UI ketika pengguna menekan card yang terkait dengan item, yang berfungsi sebagai tombol interaktif. Jika ada variabel dalam kelas State yang menyimpan informasi tentang status aplikasi (seperti jumlah klik atau informasi yang berkaitan dengan item yang sedang dipilih), maka variabel tersebut akan terpengaruh dan UI akan diperbarui untuk mencerminkan status terbaru setiap kali setState() dipanggil. Penggunaan setState() menjamin bahwa UI selalu sinkron dengan status terkini dari aplikasi. Dalam kode saya belum ada variabel yang terdampak

| *Jelaskan perbedaan antara const dengan final* |

* **Perbedaan antara `final` dan `const` dalam Dart** terletak pada cara penugasan dan sifat imutabilitasnya. `final` berarti bahwa sebuah variabel hanya dapat diinisialisasi sekali; setelah diberikan nilai, nilai tersebut tidak dapat diubah. Ini memungkinkan variabel `final` untuk diisi dengan data yang diketahui pada waktu runtime, seperti hasil dari pemanggilan fungsi atau nilai yang diperoleh dari database.

* Sementara itu, `const` digunakan untuk mendefinisikan nilai yang sepenuhnya dapat dihitung pada waktu kompilasi. `const` tidak hanya mengikat variabel tetapi juga nilai yang diwakilinya. Jika nilai diketahui pada waktu kompilasi, menggunakan `const` lebih disarankan daripada `final`, terutama dalam konteks yang membutuhkan imutabilitas dan efisiensi memori, seperti saat membuat koleksi atau objek tertentu.

| *Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas* |

* Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya

    pertama-tama saya membuat sebuah proyek baru menggunakan flutter create untuk membuat projek flutter baru. Setelah itu saya membuat file dart baru yang bernama menu.dart untuk tampilan homepage saya. Disitu saya membuat class MyHomepage yang berisi final string nama,npm,dan juga kelas. Dan juga saya membuat class InfoCard untuk menampilkan informasi tersebut.

* Membuat tiga tombol sederhana dengan ikon dan teks 

    Dalam kode saya, tiga tombol yang ditampilkan dalam tampilan antarmuka pengguna dibuat dengan menggunakan widget GridView yang menampilkan koleksi ItemCard, di mana setiap ItemCard mewakili sebuah tombol interaktif. Proses pembuatan tombol dimulai dengan mendefinisikan daftar items, yang berisi objek ItemHomepage dengan nama dan ikon untuk setiap tombol. Saat GridView.count dirender, setiap objek dalam daftar items diiterasi dengan menggunakan metode map, yang memanggil konstruktor ItemCard untuk setiap item, menciptakan widget tombol dengan latar belakang berwarna yang berbeda berdasarkan nama item (seperti biru untuk "Lihat Daftar Produk", hijau untuk "Tambah Produk", dan merah untuk "Logout"). Setiap tombol juga memiliki fungsi yang diikat pada event onTap, yang menggunakan ScaffoldMessenger untuk menampilkan Snackbar yang memberikan umpan balik kepada pengguna saat tombol ditekan.

* Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout)

    Dalam kode saya, implementasi warna-warna yang berbeda untuk setiap tombol ("Lihat Daftar Produk", "Tambah Produk", dan "Logout") dilakukan dengan menggunakan metode `getBackgroundColor()` di dalam kelas `ItemCard`. Metode ini mengambil nama item dari objek `ItemHomepage` dan menggunakan pernyataan `switch` untuk menentukan warna latar belakang yang sesuai berdasarkan nama item. Misalnya, jika nama item adalah "Lihat Daftar Produk", warna yang dikembalikan adalah biru; jika nama item adalah "Tambah Produk", warna yang dikembalikan adalah hijau; dan jika nama item adalah "Logout", warna yang dikembalikan adalah merah. Dengan demikian, setiap tombol yang ditampilkan dalam grid mendapatkan warna latar belakang yang sesuai saat di-render, memberikan visual yang jelas dan berbeda untuk setiap fungsi tombol.

* Memunculkan Snackbar

    Dalam kode saya, Snackbar dengan tulisan yang berbeda-beda muncul sebagai respons terhadap interaksi pengguna dengan tombol-tombol yang ada di dalam `ItemCard`. Setiap `ItemCard` dilengkapi dengan event `onTap`, di mana ketika tombol ditekan, metode `ScaffoldMessenger.of(context)` dipanggil untuk menampilkan Snackbar. Pesan yang ditampilkan dalam Snackbar disesuaikan dengan nama item yang sedang ditekan, yang diambil dari objek `ItemHomepage`. Dalam fungsi `onTap`, saya menggunakan interpolasi string untuk mencetak pesan seperti "Kamu telah menekan tombol Lihat Daftar Produk!" atau "Kamu telah menekan tombol Tambah Produk!" sesuai dengan nama item yang terkait, sehingga memberikan umpan balik yang spesifik dan informatif kepada pengguna tentang tombol mana yang telah mereka pilih. Dengan pendekatan ini, setiap tombol memberikan informasi yang unik dan relevan ketika diinteraksi.
</details>