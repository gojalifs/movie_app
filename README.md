# movie_app

Ini adalah sebuah aplikasi movie list yang dibuat dengan TMDB API.
Saya membuatnya menggunakan TMDB API karena saya tidak bisa menemukan list film di OMDB API.

## Instalasi

1. Get dependency
   `flutter pub get`

2. build runner generator
   `dart run build_runner build --delete-conflicting-outputs`

3. Build flutter localizations
    enable/uncomment generate in pubspec.yaml to generate localizations
    `flutter gen-l10n`

3. Jalankan project
   `flutter run`

## Library

### Freezed

Library ini saya gunakan untuk serialisasi json dan data class pada model data untuk memudahkan saya dalam pengembangan.

### Floor, SQFLite

Library ini mirip dengan library Room yang ada pada native android, di mana library ini menyediakan abstraction layer untuk memudahkan saya menggunakan SQLite database.

### Get_it, Injectable

Library ini saya gunakan sebagai service locator atau biasa disebut dependency injection agar kode saya menjadi scalable tentunya lebih baik.

### Go Router

Library ini digunakan untuk memudahkan saya dalam melakukan navigasi antar halaman.

### Shared Preferences

Library untuk menyimpan sesi/token sebagai penanda bahwa user tersebut sudah login.

### Provider

State management yang cukup mudah penggunaannya.

### Http

HTTP merupakan library untuk melakukan api call dengan sangat mudah.

### Flutter_Localizations

Ini merupakan package yang sangat penting dalam membuat sebuah aplikasi multi language.

## Intl

Merupakan library pembantu flutter_localizations untuk mengimplementasikan internationalization.

## Screenshots

