import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Biodata Diri',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BiodataPage(),
    );
  }
}

class BiodataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata Diri'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Foto Profil
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('asset/img/galang.jpg'), // Ganti dengan path foto
            ),
            SizedBox(height: 20),
            // Nama
            Text(
              'Galang Abdee Prasatya',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            // Deskripsi Singkat
            Text(
              'Mahasiswa Teknik & Informatika UNDIKNAS',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),
            // Informasi Kontak
            Card(
              child: ListTile(
                leading: Icon(Icons.school),
                title: Text('Prodi'),
                subtitle: Text('Teknologi Informasi'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Nim'),
                subtitle: Text('42230032'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.sports_soccer),
                title: Text('Hobi'),
                subtitle: Text('Bermain Sepak Bola'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
