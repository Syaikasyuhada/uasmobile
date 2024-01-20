import 'package:flutter/material.dart';

class DeveloperPage extends StatelessWidget {
  const DeveloperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Developer'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/profile.png',
                    width: 200,
                    height: 200,
                  ),
                  const ListTile(
                    title: Text('Nama :'),
                    subtitle: Text('Syaika Syuhada'),
                  ),
                  const ListTile(
                    title: Text(NPM :'),
                    subtitle: Text('2010020015'),
                  ),
                  const ListTile(
                    title: Text('Jurusan :'),
                    subtitle: Text('Sistem Informasi'),
                  ),
                  const ListTile(
                    title: Text('Fakultas :'),
                    subtitle: Text('Teknik Informatika'),
                  ),
                  const ListTile(
                    title: Text('Universitas :'),
                    subtitle: Text(
                        'Universitas Islam Kalimantan Muhammad Arsyad Al-Banjary'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
