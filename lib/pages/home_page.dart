import 'package:flutter/material.dart';
import 'package:uaspbo/pages/luas_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uas Jaya'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            CardWidget(
              title: "Hitung Luas Persegi",
              subtitle: "Pilih untuk mulai menghitung luas persegi",
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const LuasPage(isPersegi: true);
                  },
                ));
              },
            ),
            const SizedBox(height: 10),
            CardWidget(
              title: "Hitung Luas Lingkaran",
              subtitle: "Pilih untuk mulai menghitung luas lingkaran",
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const LuasPage(isPersegi: false);
                  },
                ));
              },
            ),
            const SizedBox(height: 10),
            CardWidget(
              title: "Profile Developer",
              subtitle: "Pilih untuk melihat profile developer",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    this.title,
    this.subtitle,
    this.onTap,
    super.key,
  });
  final String? title;
  final String? subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
        child: Column(
          children: [
            Text(
              title ?? "",
            ),
            Text(
              subtitle ?? "",
            ),
          ],
        ),
      ),
    );
  }
}
