# Northwind Customer Churn & Diagnostic Analytics

## Deskripsi Proyek
Proyek ini merupakan analisis diagnostik dan retensi pelanggan interaktif yang dibangun menggunakan Power BI berdasarkan dataset Northwind. Proyek ini bertujuan untuk mengidentifikasi tingkat Churn Pelanggan, menganalisis dampak finansial terhadap pendapatan perusahaan, serta memahami faktor-faktor utama yang mempengaruhi keputusan pelanggan untuk berhenti bertransaksi.

## Pertanyaan Bisnis (Business Questions)
1. Berapa tingkat *churn rate* pelanggan dan berapa besar potensi pendapatan yang hilang (*lost revenue*) akibat pelanggan yang berhenti bertransaksi?
2. Siapa saja profil pelanggan yang mengalami *churn* dan bagaimana distribusinya berdasarkan wilayah serta frekuensi pemesanan?
3. Apa faktor utama yang menyebabkan pelanggan mengalami *churn* (apakah karena keterlambatan pengiriman, biaya ongkos kirim, atau tingkat diskon yang diberikan)?
4. Bagaimana performa penjualan antar kategori produk pada kelompok pelanggan aktif dibandingkan pelanggan yang *churn*?

## Temuan Utama & Hasil Analisis (Key Insights)
- Masalah Utama (Tingkat Diskon): Pelanggan yang *churn* menerima rata-rata diskon yang lebih rendah (4.42%) dibandingkan pelanggan aktif (5.76%). Kurangnya insentif harga/diskon menjadi pendorong utama pelanggan beralih atau berhenti melakukan pemesanan.
- Frekuensi Pemesanan: Pelanggan *churn* memiliki rata-rata frekuensi order yang jauh lebih rendah (5.75 kali) dibandingkan pelanggan aktif (10.11 kali).
- Performa Pengiriman: Keterlambatan pengiriman pada pelanggan *churn* relatif lebih rendah (0.18 hari) dibandingkan pelanggan aktif (0.31 hari), sehingga faktor operasional pengiriman bukan penyebab utama *churn*.
- Kerugian Finansial: Total *lost revenue* akibat 16 pelanggan *churn* (17.98% dari total 89 pelanggan) mencapai $11,275,562.00.

## Sumber Data
Dataset yang digunakan dalam proyek ini diperoleh dari Kaggle:
- Link Kaggle Dataset: [https://www.kaggle.com/datasets/jeetahirwar/northwind-traders?select=customers.csv]

## Teknologi & Alat yang Digunakan
- PostgreSQL: Digunakan untuk pengelolaan basis data, eksekusi query data mentah, dan pembuatan view/agregasi tabel.
- Microsoft Excel: Digunakan untuk pembersihan data awal, validasi data, serta pencocokan ulang angka revenue dan metrik utama.
- Power BI Desktop: Digunakan untuk pemodelan data, pembuatan visualisasi interaktif, serta penyusunan dashboard analitik eksekutif.

## Ringkasan Metrik Utama
- Total Revenue: $126,579,301.00
- Total Transaksi: 830
- Average Order Value (AOV): $152,505.18
- Jumlah Customer: 89 Pelanggan (73 Aktif, 16 Churned)
- Churn Rate: 17.98%
- Lost Revenue akibat Churn: $11,275,562.00

## Struktur Repositori
- Processed Query Data/ : Berisi tabel-tabel hasil transformasi query dan view agregasi data.
- Raw Dataset/ : Berisi data mentah asli sebelum proses pembersihan dan transformasi.
- script/ : Berisi skrip SQL dan skrip pendukung pengolahan data.
- documentation/ : Berisi dokumentasi visual dashboard (.png) dan ringkasan eksekutif (.pdf).
- Customer Churn & Diagnostic Analytics Dashboard.pbix : File laporan utama Power BI.

## Tampilan Dashboard
1. Page 1 - Executive Overview: Menampilkan indikator kinerja utama (KPI), distribusi churn pelanggan, analisis 10 pelanggan teratas, tren performa penjualan bulanan, serta tingkat recency pelanggan.
2. Page 2 - Root Cause Analysis: Menampilkan analisis mendalam mengenai keterlambatan pengiriman, frekuensi pemesanan, rata-rata nilai transaksi per status pelanggan, biaya pengiriman, distribusi kategori produk, dan tingkat diskon.

## Penjelasan Model Data dan Transformasi
- Normalisasi Skala Data: Dilakukan transformasi perkalian dengan faktor 100 pada kolom total_belanja di Power Query untuk menyelaraskan pembacaan format desimal antara sumber data asal dan Power BI.
- Pemodelan Tabel: Menggunakan skema relasi terintegrasi yang menghubungkan tabel master pelanggan, transaksi detail, pengiriman, hingga tabel view kategori produk (public v_order_categories).

## Petunjuk Penggunaan
1. Unduh atau clone repositori ini ke komputer lokal.
2. Buka file Customer Churn & Diagnostic Analytics Dashboard.pbix menggunakan Power BI Desktop.
3. Pastikan seluruh sumber data terhubung sesuai direktori lokal jika ingin memperbarui query.
