# Glory Hair Salon LD – Website

Website multi-page statis untuk **Glory Hair Salon LD** (women-only hair studio di Loa Duri Ilir). Dibuat dengan **HTML + Tailwind CSS via CDN**, fokus pada tampilan elegan hitam–emas–putih dan integrasi **WhatsApp & Instagram**.

---

## 1. Struktur File

Direkomendasikan struktur folder seperti ini:

```bash
project-root/
├─ index.html          # Halaman utama (Home)
├─ about.html          # Tentang Glory Hair Salon LD
├─ services.html       # Layanan rambut
├─ gallery.html        # Galeri foto
├─ price.html          # Daftar harga (price list)
├─ booking.html        # Form booking → kirim ke WhatsApp
├─ contact.html        # Kontak & lokasi
└─ images/
   ├─ logo.png         # Logo salon (juga dipakai sebagai favicon)
   └─ ...              # Foto-foto galeri & ilustrasi
```

> Catatan: Semua halaman sudah diset untuk saling terhubung via `<a href="...">` di navbar.

---

## 2. Teknologi yang Dipakai

- **HTML5** statis (tidak ada backend / database).
- **Tailwind CSS via CDN** – langsung dipanggil dari `<script src="https://cdn.tailwindcss.com"></script>`.
- **Sedikit JavaScript** vanilla:
  - Buka WhatsApp dengan pesan terisi otomatis.
  - Buka Instagram salon.
  - Toggle navbar di mobile.
  - Auto-update tahun di footer.

Tidak perlu instal Node.js atau build tools, cukup buka file `.html` di browser.

---

## 3. Hal yang Wajib Diubah

### 3.1. Nomor WhatsApp Salon

Di semua halaman ada konstanta:

```js
const WHATSAPP_NUMBER = '6281234567890';
```

**Ganti** dengan nomor WhatsApp Glory Hair Salon LD yang asli (format internasional TANPA tanda `+`), contoh:

```js
const WHATSAPP_NUMBER = '62857xxxxxxx';
```

Pastikan sama di semua file: `index.html`, `services.html`, `gallery.html`, `price.html`, `booking.html`, `about.html`, `contact.html` (dan halaman lain kalau ditambah).

### 3.2. Logo Salon

Logo dipakai di:

```html
<link rel="icon" type="image/png" href="images/logo.png" />
<img src="images/logo.png" alt="Glory Hair Salon LD" />
```

- Simpan file logo di folder `images/` dengan nama `logo.png`.
- Kalau nama file berbeda, update semua `src="images/logo.png"` dan `href="images/logo.png"`.

### 3.3. Foto-Foto Galeri

Di `gallery.html` masih menggunakan **contoh gambar** dari Pexels (URL eksternal), misalnya:

```html
<img src="https://images.pexels.com/photos/3738341/pexels-photo-3738341.jpeg?..." />
```

Kamu bisa menggantinya dengan foto hasil kerja salon sendiri:

1. Simpan foto di folder `images/`, misalnya:
   - `images/gallery-soft-waves.jpg`
   - `images/gallery-soft-brown.jpg`
   - `images/gallery-highlight.jpg`
2. Ganti `src="..."` di `gallery.html` menjadi path file lokal, contoh:

```html
<img src="images/gallery-soft-waves.jpg" alt="Soft waves styling di Glory Hair Salon LD" />
```

Lakukan untuk semua gambar di bagian:
- Hero gallery
- Before/After
- Styling & coloring
- Kids haircut & vibe

---

## 4. Penjelasan Tiap Halaman

### 4.1. `index.html` – Home

- Hero utama: intro salon, women-only, lokasi Loa Duri Ilir (naik gunung arah Putak).
- Tombol utama: `Booking via WhatsApp` & `Lihat layanan`.
- Sekilas tentang layanan, keunggulan, dan CTA ke halaman lain.

### 4.2. `about.html` – Tentang Salon

- Cerita pendek kenapa Glory dibuka.
- Fokus: salon khusus rambut wanita & anak perempuan.
- Menjelaskan nilai: suasana nyaman, ramah ibu & anak, bukan salon ramai campur laki-laki.

### 4.3. `services.html` – Layanan

Menjelaskan secara detail:

- Hair styling & blow
- Hair coloring (full, ombre, highlight, retouch akar)
- Straightening / smoothing
- Keratin treatment
- Kids girl haircut

Juga ada edukasi:
- Hal yang akan ditanyakan sebelum treatment (pernah bleaching, berhijab, dll).
- Ajakan kirim foto kondisi rambut sebelum datang.

### 4.4. `price.html` – Price List

Berisi tabel kisaran harga (pendek / medium / panjang) untuk:

- Potong rambut & styling dasar.
- Coloring (full color, highlight, ombre, retouch akar).
- Pelurusan / smoothing.
- Keratin treatment.
- Kids girl haircut.

Catatan di bawah tabel menjelaskan bahwa harga bisa diubah sesuai tarif resmi salon.

### 4.5. `booking.html` – Form Booking

Form sederhana yang **tidak mengirim ke server**, tapi langsung menyusun teks dan membuka WhatsApp:

Field:
- Nama
- Nomor WhatsApp
- Tanggal & perkiraan jam kedatangan
- Layanan yang diinginkan
- Panjang rambut
- Catatan tambahan

Saat tombol `Kirim ke WhatsApp` ditekan:
- Browser membuka `https://wa.me/62xxxx?text=...` dengan isi pesan booking yang sudah dirangkum.
- User bisa cek & edit dulu sebelum benar-benar mengirim ke admin.

### 4.6. `contact.html` – Kontak & Lokasi

- Form kontak singkat → di-convert ke pesan WhatsApp.
- Informasi lokasi: Loa Duri Ilir, naik gunung arah Putak.
- Tombol untuk minta pin lokasi via WA.
- Link ke Instagram & WhatsApp.
- Tips sebelum datang ke salon.

### 4.7. `gallery.html` – Galeri

- Menampilkan contoh hasil styling, coloring, smoothing, keratin, dan kids haircut.
- Seksi **Before / After**.
- Grid styling & coloring.
- Kids + salon vibe.
- CTA untuk cek Instagram & booking WA.

---

## 5. Jalankan di Lokal (di Laptop)

Cara paling simpel:

1. Simpan semua file `.html` dan folder `images/` di satu folder.
2. Buka file `index.html` dengan cara:
   - Klik dua kali, atau
   - Klik kanan → Open with → browser (Chrome/Edge/Opera, dll).
3. Navigasi antar halaman lewat navbar.

Kalau mau lebih "rapi" saat development, bisa pakai Live Server (VS Code extension), tapi tidak wajib.

---

## 6. Deploy ke GitHub Pages

1. Buat repository baru di GitHub, misalnya: `glory-hair-salon-ld`.
2. Upload semua file:
   - `index.html`, `about.html`, `services.html`, `gallery.html`, `price.html`, `booking.html`, `contact.html`.
   - Folder `images/`.
3. Di GitHub:
   - Buka tab **Settings** → **Pages**.
   - **Source**: pilih `Deploy from a branch`.
   - Branch: `main` / `master`, folder: `/root`.
   - Simpan.
4. Tunggu beberapa saat, GitHub akan memberikan URL, misalnya:

   ```
   https://username.github.io/glory-hair-salon-ld/
   ```

5. Pastikan semua link antar halaman menggunakan path relatif sederhana:

   ```html
   <a href="index.html">Home</a>
   <a href="services.html">Services</a>
   <!-- dst. -->
   ```

> Kalau mau pakai custom domain (misalnya `gloryhairsalonld.com`), bisa diatur lewat DNS dan pengaturan GitHub Pages.

---

## 7. Deploy ke Cloudflare Pages (opsional)

1. Login ke Cloudflare.
2. Buka **Pages** → "Create a project".
3. Sambungkan ke repo GitHub yang berisi website Glory.
4. Karena ini static HTML biasa, di bagian build setting bisa:
   - Framework preset: `None` / `Direct Upload`.
   - Build command: kosong.
   - Output directory: `./` (root).
5. Deploy.

Atau, jika tidak ingin sambung GitHub:
- Bisa build folder ZIP dan upload manual ke Cloudflare Pages (Direct Upload).

---

## 8. Custom Domain (Opsional)

Kalau ingin domain lebih profesional, beberapa ide:

- `gloryhairsalonld.com`
- `gloryhairld.com`
- `glorysalonld.com`
- `salongloryld.com`

Setelah domain dibeli di provider (Niagahoster, Rumahweb, Cloudflare, dll):
- Arahin DNS ke GitHub Pages atau Cloudflare Pages.
- Tambahkan domain itu ke pengaturan project (Custom domain).

---

## 9. Cara Edit Konten Tulisan

Semua teks mudah diubah langsung di file `.html`. Contoh:

- Ubah deskripsi layanan → edit bagian `<p>` di `services.html`.
- Ubah harga → edit isi `<td>` di tabel `price.html`.
- Ubah jam operasional → cari teks `10.00 – 17.00` dan sesuaikan.

Tips:
- Gunakan fitur **Find** (`Ctrl + F`) di text editor untuk mencari teks yang mau diganti.
- Simpan (`Ctrl + S`), lalu refresh browser.

---

## 10. Catatan Tambahan

- Semua JavaScript dibuat minimal dan sederhana, tanpa dependensi berat.
- Tailwind via CDN memudahkan editing style tanpa setup build.
- Jika suatu saat website ingin dihubungkan dengan sistem booking yang lebih rumit (misalnya Google Sheets / Telegram bot / integrasi n8n), form di `booking.html` bisa diupgrade tanpa mengubah tampilan besar.

---

Kalau struktur dan konten sudah sesuai kebutuhan Glory Hair Salon LD, langkah selanjutnya tinggal:

1. Pastikan semua nomor WA & link IG sudah benar.
2. Ganti semua foto contoh dengan foto asli hasil kerja salon.
3. Deploy ke GitHub Pages atau Cloudflare Pages.

Website Glory siap dipakai buat narik pelanggan. ✨💇‍♀️

