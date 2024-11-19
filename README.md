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
Modularisasi: Dengan memisahkan informasi ke dalam InfoCard, Kita dapat mengubah cara informasi ditampilkan tanpa mempengaruhi keseluruhan halaman.
Reusability: Widget ini dapat digunakan di berbagai tempat dalam aplikasi tanpa penulisan ulang kode, yang menghemat waktu dan usaha.
    5. Kinerja yang Lebih Baik
Karena widget stateless tidak menyimpan status, Flutter dapat mengoptimalkan rendering, hanya membangun ulang widget saat diperlukan.
Rendering Efisien: Jika data tidak berubah, widget tidak perlu dirender ulang, meningkatkan responsivitas aplikasi.
    6. Konsistensi UI
Menggunakan widget stateless untuk menampilkan data tetap (seperti NPM, nama, dan kelas) memastikan bahwa tampilan antarmuka selalu konsisten setiap kali widget ini dirender.

*Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.*

* fungsi setState() digunakan untuk memberi tahu Flutter bahwa ada perubahan yang perlu dilakukan pada UI ketika pengguna menekan card yang terkait dengan item, yang berfungsi sebagai tombol interaktif. Jika ada variabel dalam kelas State yang menyimpan informasi tentang status aplikasi (seperti jumlah klik atau informasi yang berkaitan dengan item yang sedang dipilih), maka variabel tersebut akan terpengaruh dan UI akan diperbarui untuk mencerminkan status terbaru setiap kali setState() dipanggil. Penggunaan setState() menjamin bahwa UI selalu sinkron dengan status terkini dari aplikasi. Dalam kode saya belum ada variabel yang terdampak

| *Jelaskan perbedaan antara const dengan final* |

* Perbedaan antara `final` dan `const` dalam Dart terletak pada cara penugasan dan sifat imutabilitasnya. `final` berarti bahwa sebuah variabel hanya dapat diinisialisasi sekali; setelah diberikan nilai, nilai tersebut tidak dapat diubah. Ini memungkinkan variabel `final` untuk diisi dengan data yang diketahui pada waktu runtime, seperti hasil dari pemanggilan fungsi atau nilai yang diperoleh dari database.

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

<details>
<summary>--TUGAS 8--</summary>

| *Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?* |

    * const pada flutter digunakan untuk mencreate suatu objek yang bersifat immutable yang berarti state dari objek tidak bisa diubah setelah objek sudah dibuat.

    * Beberapa keuntungan dari const antara lain adalah:

        - Optimasi Kinerja, Flutter sangat bergantung pada pohon widget untuk mewakili UI. Ketika widget yang ditandai dengan const ditemui selama rebuild, Flutter mengenali widget tersebut sebagai objek yang telah dibangun dan tidak dapat diubah. Ini memungkinkan Flutter untuk menggunakan kembali objek yang ada, menghindari perhitungan dan alokasi objek yang tidak perlu, yang mengarah pada kinerja yang lebih lancar. Kata kunci const memberi instruksi kepada Dart VM untuk melakukan optimasi pada waktu kompilasi, termasuk alokasi memori sebelumnya dan penyederhanaan ekspresi (evaluasi ekspresi saat kompilasi), yang mempercepat pembuatan objek dan mengurangi pengumpulan sampah selama runtime.

        - Keterbacaan dan Pemeliharaan, Menggunakan const dengan konstruktor konstan secara jelas mengkomunikasikan niat untuk membuat objek yang tidak dapat diubah. Ini membuat kode lebih mudah dipahami oleh Kita dan pengembang lainnya. Karena objek tidak dapat diubah setelah dibuat, ini menyederhanakan pemahaman aliran data di aplikasi, mengurangi risiko perilaku yang tidak terduga, dan mempermudah debugging.

        - Manajemen Pohon Widget yang Efisien, Prinsip utama Flutter adalah meminimalkan jumlah rebuild yang diperlukan untuk memperbarui UI. Widget yang ditandai dengan const berkontribusi pada prinsip ini dengan memastikan mereka hanya dibangun ulang jika referensinya benar-benar berubah. Ini mengurangi pembuatan dan rebuild widget yang tidak perlu, sehingga UI menjadi lebih responsif dan efisien.

    * Kita dapat menggunakan const saat situasi seperti membuat objek data yang tidak dapat diubah, seperti warna atau konfigurasi yang tidak berubah sepanjang siklus hidup aplikasi. Selain itu, nilai-nilai yang sudah ditentukan sebelumnya, seperti endpoint API atau nilai statis yang tidak berubah, juga ideal untuk menggunakan const. Penggunaan const juga mengoptimalkan pohon widget di Flutter, karena widget yang ditandai const dianggap telah dibangun sebelumnya dan dapat digunakan kembali selama rebuild, mengurangi pembuatan widget yang tidak perlu dan meningkatkan kinerja.

    * Kita sebaiknya menghindari penggunaan const pada saat data objek perlu dimodifikasi setelah dibuat, seperti input pengguna atau data yang diambil dari panggilan jaringan. Selain itu, objek yang mengambil data dari sumber eksternal seperti panggilan jaringan tidak cocok untuk dideklarasikan dengan const, karena data tersebut dapat berubah.

| *Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!* |

    * Pada Flutter, widget Column digunakan untuk menyusun elemen secara vertikal, sedangkan widget Row digunakan untuk menyusun elemen secara horizontal. Column sangat berguna ketika kita ingin menampilkan widget satu per satu secara berurutan dalam arah vertikal, seperti dalam daftar atau form. Sebaliknya, Row digunakan ketika kita ingin menampilkan widget yang sejajar dalam satu baris, seperti gambar atau tombol yang ingin ditata berdampingan. Kedua widget ini dapat digabungkan untuk menciptakan layout yang lebih kompleks dan responsif.

    * Contoh implementasinya: 

        Column(
                children: [
                    Text('Pilihan Baju', style: TextStyle(fontSize: 24)),
                    Row(
                    children: [
                        Image.asset('assets/tshirt1.jpg', width: 100, height: 100),
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text('T-shirt Hitam'), Text('Harga: \$20')],
                        ),
                    ],
                    ),
                    Row(
                    children: [
                        Image.asset('assets/tshirt2.jpg', width: 100, height: 100),
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text('T-shirt Biru'), Text('Harga: \$25')],
                        ),
                    ],
                    ),
                ],
                )

| *Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!* |

    * Saya memakai tiga elemen input utama yang digunakan dalam form, yaitu tiga TextFormField untuk mengumpulkan data dari pengguna. Pertama, ada TextFormField untuk nama produk, yang memastikan input tidak kosong. Kedua, TextFormField untuk deskripsi produk, yang juga memvalidasi agar tidak kosong. Ketiga, TextFormField untuk harga produk, yang memvalidasi bahwa input berupa angka dan tidak kosong. Semua elemen input ini dikemas dalam widget Form yang dilengkapi dengan tombol ElevatedButton untuk menyimpan data setelah form tervalidasi dengan benar.

    * Selain TextFormField, Flutter menyediakan berbagai elemen input lainnya yang dapat digunakan dalam aplikasi, seperti DropdownButtonFormField untuk memilih nilai dari daftar pilihan, Checkbox dan CheckboxListTile untuk memilih opsi biner (true/false), Switch dan SwitchListTile untuk memilih antara dua keadaan (on/off), serta Radio dan RadioListTile untuk memilih satu opsi dari beberapa pilihan. Ada juga DatePicker dan TimePicker untuk memilih tanggal atau waktu, serta Slider untuk memilih nilai dalam rentang tertentu. Semua elemen input ini dapat digabungkan dalam form untuk memberikan interaksi yang lebih dinamis dan responsif sesuai kebutuhan aplikasi.

| *Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?* |

    * Saya mengatur tema aplikasi dengan menggunakan Theme.of(context).colorScheme.primary untuk menentukan warna latar belakang pada AppBar, yang memastikan aplikasi mengikuti tema warna yang konsisten. Tema ini diterapkan dari MaterialApp yang biasanya berada di level atas aplikasi (meskipun tidak ditampilkan langsung di kode ini), yang memungkinkan penggunaan warna yang telah ditentukan di seluruh aplikasi. Misalnya, warna primary dari colorScheme digunakan untuk AppBar, sehingga warna ini otomatis konsisten di seluruh tampilan aplikasi, mengikuti desain yang telah ditentukan dalam tema global aplikasi.

| *Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?* |

    * Untuk menangani navigasi dalam aplikasi dengan banyak halaman di Flutter, Kita dapat menggunakan Navigator dan routes untuk berpindah antar halaman. Pada kode yang diberikan, Kita bisa menambahkan navigasi dengan menggunakan Navigator.push() untuk membuka halaman baru dan Navigator.pop() untuk kembali ke halaman sebelumnya. Misalnya, ketika pengguna memilih opsi seperti "Lihat Daftar Produk" atau "Tambah Produk" pada GridView, Kita dapat menambahkan aksi pada item untuk melakukan navigasi ke halaman baru menggunakan Navigator.push() dengan rute yang sesuai, atau mengatur rute menggunakan MaterialPageRoute untuk menentukan halaman yang akan dituju. Kita juga bisa mendefinisikan routes di dalam MaterialApp untuk mengatur halaman-halaman yang dapat diakses secara lebih terstruktur.

</details>


<details>
<summary>--TUGAS 9--</summary>

*Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?*
-> Model diperlukan untuk memastikan data JSON yang dikirim atau diterima memiliki struktur yang konsisten dengan aplikasi. Dengan model, kita dapat mendefinisikan atribut seperti `name`, `price`, dan `description`, serta memastikan tipe data yang benar. Ini membantu mencegah kesalahan akibat field yang hilang, tambahan, atau tidak sesuai dengan format yang diharapkan.

Tanpa model, data JSON harus diproses secara manual setiap kali digunakan, yang meningkatkan risiko kesalahan seperti `KeyError` atau `TypeError`. Selain itu, perubahan struktur data dapat memengaruhi banyak bagian dalam kode, sehingga sulit dipelihara. Model membantu membuat proses parsing dan manipulasi data lebih efisien, terorganisir, dan terhindar dari bug.

*Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini*
-> Library `http` digunakan untuk melakukan komunikasi antara aplikasi Flutter dan server backend melalui protokol HTTP. Dalam tugas ini, library ini memungkinkan aplikasi mengirimkan permintaan (request) seperti `POST` atau `GET` ke server, misalnya untuk mengirim data produk ke API Django atau mengambil data JSON dari server. Fungsi ini mempermudah integrasi antara frontend dan backend.

Dengan `http`, kita dapat mengelola respons dari server secara efisien, seperti parsing data JSON yang diterima menjadi objek di Flutter. Library ini juga mendukung penanganan status HTTP, sehingga kita dapat menangani respons sukses atau error (seperti 200 atau 404) untuk memberikan umpan balik kepada pengguna secara tepat. Hal ini membuat pengelolaan data antara aplikasi dan server menjadi lebih terstruktur dan terkontrol.

*Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.*
-> `CookieRequest` berfungsi untuk menangani autentikasi berbasis sesi di aplikasi Flutter dengan menyimpan dan mengelola cookie secara otomatis. Library ini memungkinkan aplikasi untuk mempertahankan status login pengguna, sehingga permintaan HTTP ke server dapat menyertakan cookie otentikasi secara otomatis. Dengan `CookieRequest`, aplikasi dapat mengakses endpoint yang membutuhkan autentikasi tanpa harus mengelola token atau informasi login secara manual.

Instance `CookieRequest` perlu dibagikan ke semua komponen di aplikasi Flutter agar setiap bagian aplikasi yang membutuhkan komunikasi dengan server dapat menggunakan cookie yang sama. Ini memastikan bahwa status login pengguna tetap konsisten di seluruh aplikasi, dan komponen seperti formulir, halaman produk, atau daftar data dapat bekerja dengan sesi yang sama. Pendekatan ini mempermudah pengelolaan autentikasi dan memastikan pengalaman pengguna yang mulus tanpa perlu login berulang kali.

*Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.*
-> 
Mekanisme pengiriman data dimulai dari pengguna yang mengisi formulir di aplikasi Flutter. Setelah semua input valid, data dari formulir dikonversi menjadi format JSON menggunakan fungsi seperti `jsonEncode`. Kemudian, data JSON ini dikirim ke server backend melalui permintaan HTTP (misalnya `POST`) menggunakan library seperti `http` atau `CookieRequest`. Server backend, seperti Django, menerima permintaan tersebut, memproses data JSON, dan menyimpannya ke dalam database menggunakan model yang telah ditentukan.

Setelah data berhasil disimpan, server dapat mengirimkan kembali data tersebut dalam format JSON melalui endpoint API. Aplikasi Flutter kemudian mengirimkan permintaan `GET` ke endpoint tersebut untuk mengambil data. Respons JSON dari server diparsing menjadi objek Dart menggunakan model, seperti kelas `Product`. Objek ini kemudian ditampilkan di aplikasi Flutter menggunakan widget seperti `ListView` atau `Card`, sehingga data yang telah dikirim pengguna dapat terlihat kembali di antarmuka aplikasi. Mekanisme ini memastikan integrasi yang mulus antara input pengguna, penyimpanan backend, dan tampilan di frontend.

*Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.*
-> Mekanisme autentikasi dimulai ketika pengguna memasukkan data akun mereka (username dan password) di Flutter pada formulir login atau register. Untuk login, aplikasi Flutter mengirimkan data tersebut ke endpoint Django melalui permintaan `POST` menggunakan `CookieRequest`. Django memverifikasi kredensial yang diterima dengan mencocokkannya di database pengguna. Jika valid, Django mengirimkan cookie otentikasi dalam responsnya, yang secara otomatis disimpan oleh `CookieRequest` di Flutter. Cookie ini digunakan untuk menjaga sesi pengguna, sehingga pengguna tetap dianggap login pada permintaan berikutnya tanpa perlu memasukkan ulang kredensial.

Pada proses register, data yang dimasukkan pengguna dikirim ke endpoint Django untuk dibuatkan akun baru. Django memvalidasi data (misalnya, kesesuaian password dan keunikan username), lalu menyimpan akun ke database. Setelah register berhasil, pengguna diarahkan ke halaman login untuk autentikasi lebih lanjut. Untuk logout, Flutter mengirimkan permintaan ke endpoint logout di Django, yang akan menghapus cookie otentikasi dari sisi server dan mengakhiri sesi pengguna. Setelah logout, pengguna diarahkan kembali ke halaman login, memastikan bahwa sesi telah diakhiri dengan aman. Menu atau halaman utama hanya ditampilkan jika pengguna memiliki sesi aktif, yang diverifikasi dengan cookie pada setiap permintaan.

*Implementasi Checklist*

-Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.

    Fitur registrasi akun pada proyek Flutter dimulai dengan pembuatan halaman registrasi menggunakan widget seperti `TextFormField` untuk input data pengguna (misalnya username, password, dan konfirmasi password). Data ini kemudian divalidasi di sisi Flutter, seperti memastikan password tidak kosong dan cocok dengan konfirmasi password. Setelah input valid, data dikirim ke backend Django melalui permintaan `POST` menggunakan `CookieRequest` atau `http`. Data dikonversi menjadi format JSON menggunakan `jsonEncode` sebelum dikirim ke endpoint Django, yang menangani pembuatan akun baru.

    Di sisi Django, data yang diterima diproses oleh endpoint khusus registrasi, misalnya dengan `UserCreationForm` untuk memvalidasi username dan password. Jika valid, akun disimpan ke database dan respons dengan status `success` dikirim ke Flutter. Jika terjadi error, seperti username sudah ada atau password tidak valid, Django mengirimkan respons dengan pesan error yang sesuai. Di Flutter, respons ini ditampilkan menggunakan `SnackBar` sebagai notifikasi kepada pengguna. Setelah registrasi berhasil, pengguna diarahkan ke halaman login untuk melanjutkan autentikasi. Mekanisme ini memastikan proses registrasi berjalan lancar dan aman antara frontend Flutter dan backend Django.  

- Membuat halaman login pada proyek tugas Flutter.

    Untuk membuat halaman login pada proyek Flutter, langkah pertama adalah membuat widget Stateful yang berisi form login. Gunakan widget seperti `TextFormField` untuk input username dan password, serta tambahkan validator untuk memastikan data yang diinput valid. Tambahkan tombol login (`ElevatedButton`) yang akan mengirim data ke backend Django saat ditekan. Data input dikirim menggunakan `CookieRequest` dalam format JSON ke endpoint Django yang menangani login, seperti `/auth/login/`. Setelah respons diterima, periksa apakah autentikasi berhasil (status `success`) atau gagal, dan tampilkan notifikasi kepada pengguna menggunakan `SnackBar`.

    Di backend Django, data login yang diterima diproses untuk memverifikasi username dan password menggunakan fungsi seperti `authenticate` dan `login`. Jika valid, Django mengirimkan cookie autentikasi ke Flutter, yang secara otomatis disimpan oleh `CookieRequest` untuk menjaga sesi pengguna. Setelah berhasil login, pengguna diarahkan ke halaman utama aplikasi menggunakan `Navigator.pushReplacement`. Dengan cara ini, halaman login Flutter dapat berintegrasi dengan server Django untuk memverifikasi kredensial pengguna dan memberikan akses ke fitur aplikasi yang memerlukan autentikasi. Langkah ini memastikan pengalaman pengguna yang aman dan mulus.

- Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter

    Untuk mengintegrasikan sistem autentikasi Django dengan Flutter, langkah pertama adalah memastikan bahwa Django memiliki endpoint autentikasi yang mendukung login, logout, dan registrasi. Endpoint ini harus menerima data dalam format JSON, seperti username dan password, serta memprosesnya menggunakan fungsi bawaan Django seperti `authenticate` dan `login`. Setelah memverifikasi kredensial, Django mengirimkan cookie autentikasi dalam respons, yang akan digunakan untuk menjaga sesi pengguna. Selain itu, Django perlu menangani logout dengan menghapus cookie autentikasi saat permintaan logout diterima.

    Di sisi Flutter, integrasi dilakukan menggunakan library seperti `CookieRequest`, yang memungkinkan pengelolaan cookie secara otomatis. Flutter mengirimkan data login atau registrasi ke Django menggunakan metode `POST` dan menerima respons yang berisi status autentikasi. Jika autentikasi berhasil, cookie disimpan secara otomatis untuk digunakan pada permintaan berikutnya, sehingga pengguna tetap login saat mengakses fitur lain di aplikasi. Proses ini memungkinkan Flutter untuk berkomunikasi dengan Django secara aman, memastikan bahwa hanya pengguna yang diautentikasi yang dapat mengakses data atau fitur tertentu. Integrasi ini memberikan pengalaman pengguna yang mulus dengan memanfaatkan mekanisme sesi berbasis cookie dari Django.

-Membuat model kustom sesuai dengan proyek aplikasi Django.

   Dalam proyek saya, saya membuat model kustom di Flutter untuk menangani data dari endpoint JSON Django. Saya menggunakan website QuickType untuk membantu proses ini. Pertama, saya menyalin URL endpoint JSON dari Django yang sudah saya deploy ke QuickType. QuickType kemudian secara otomatis menghasilkan model Dart berdasarkan struktur data JSON yang dikembalikan oleh endpoint tersebut. Model yang dihasilkan berisi kelas utama, seperti `Product`, dan metode utilitas seperti `fromJson` untuk parsing data dan `toJson` untuk serialisasi data kembali ke format JSON.

    Setelah itu, saya menempatkan model Dart ini di dalam subdirektori `models` pada file bernama `product_entry.dart` di proyek Flutter saya. Model ini sangat mempermudah proses pengelolaan data, terutama saat mengambil data dari Django. Ketika saya menerima data dari endpoint Django, saya menggunakan metode `fromJson` untuk mengubah JSON menjadi objek Dart, sehingga data menjadi lebih terstruktur dan mudah diproses. Model ini juga memungkinkan saya mengirimkan data kembali ke server Django dalam format yang sesuai menggunakan metode `toJson`. Dengan pendekatan ini, saya memastikan integrasi antara Flutter dan Django berjalan dengan lancar, dan aplikasi saya menjadi lebih modular dan mudah dipelihara.

- Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.

    Untuk membuat halaman daftar item yang menampilkan data dari endpoint JSON Django, langkah pertama adalah memastikan endpoint sudah tersedia dan dapat diakses. Endpoint ini mengembalikan data JSON dengan field seperti `name`, `price`, dan `description`. Di Flutter, gunakan widget seperti `FutureBuilder` untuk mengambil data dari endpoint menggunakan `http` atau `CookieRequest`. Data JSON yang diterima diparsing menjadi objek Dart, misalnya model `Item`, yang membantu mengelola dan menampilkan data dengan lebih terstruktur.

    Setelah data diparsing, gunakan widget `ListView.builder` untuk menampilkan setiap item dari daftar dalam bentuk yang rapi. Pada setiap elemen daftar, tampilkan informasi seperti `name`, `price`, dan `description` menggunakan widget seperti `Text` di dalam widget `Card` atau `Container` untuk desain yang lebih menarik. Dengan cara ini, data dari endpoint JSON Django ditampilkan secara dinamis di Flutter, memastikan bahwa setiap perubahan data di backend dapat langsung terlihat di aplikasi tanpa harus memodifikasi kode Flutter. Langkah ini memungkinkan integrasi yang mulus antara Django dan Flutter untuk menampilkan data item kepada pengguna.

- Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.

    Untuk membuat halaman detail di Flutter, saya memanfaatkan navigasi antar halaman dengan mengirimkan data dari halaman daftar item ke halaman detail. Ketika pengguna memilih salah satu item dari daftar, saya menggunakan Navigator.push untuk mengarahkan ke halaman detail dengan menyertakan objek item yang dipilih sebagai argumen. Di halaman detail, saya mendefinisikan widget Stateful atau Stateless yang menerima parameter item dari konstruktor dan menampilkan informasi seperti name, price, dan description menggunakan widget seperti Text dan Column. Desain halaman detail dibuat lebih menarik dengan menambahkan elemen seperti gambar atau tombol aksi sesuai kebutuhan aplikasi.

    Di halaman daftar item, saya membungkus setiap elemen daftar menggunakan widget GestureDetector atau InkWell untuk mendeteksi klik pengguna. Ketika elemen daftar diklik, data item dikirim ke halaman detail melalui parameter. Contohnya, Navigator.push akan memanggil halaman detail dengan data item yang dipilih, seperti ini:

    
    Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => DetailPage(item: snapshot.data[index]),
    ),
    );
    
    Dengan cara ini, pengguna dapat melihat informasi lengkap dari item yang dipilih dengan pengalaman navigasi yang mulus. Pendekatan ini memastikan bahwa setiap detail item ditampilkan dengan tepat berdasarkan data dari halaman daftar item.

- Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.

    Untuk melakukan filter pada halaman daftar item agar hanya menampilkan item yang terasosiasi dengan pengguna yang login, pertama-tama saya memastikan endpoint JSON di Django hanya mengembalikan data milik pengguna yang sedang login. Di backend, saya memanfaatkan relasi ForeignKey antara model item dan model pengguna. Endpoint JSON di Django difilter menggunakan request.user, misalnya:

    data = Product.objects.filter(user=request.user)
    Endpoint ini memastikan bahwa data yang dikembalikan adalah data yang sesuai dengan pengguna yang login, sehingga tidak ada item dari pengguna lain yang ikut ditampilkan.

    Di sisi Flutter, saat mengambil data dari endpoint JSON menggunakan CookieRequest, saya cukup memproses respons dari server tanpa perlu filter tambahan, karena filtering sudah dilakukan di Django. Data yang diterima kemudian diparsing menjadi objek Dart dan ditampilkan menggunakan widget seperti ListView.builder. Dengan cara ini, hanya item yang terasosiasi dengan pengguna yang login akan ditampilkan di halaman daftar. Proses ini memastikan integrasi yang aman antara backend dan frontend, serta memberikan pengalaman pengguna yang lebih personal dan relevan.

</details>