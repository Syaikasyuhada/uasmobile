import 'package:flutter/material.dart';

class LuasPage extends StatefulWidget {
  const LuasPage({this.isPersegi = true, super.key});
  final bool isPersegi;

  @override
  State<LuasPage> createState() => _LuasPageState();
}

class _LuasPageState extends State<LuasPage> {
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();
  TextEditingController text3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isPersegi ? "Luas Persegi" : "Luas Lingkaran"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: text1,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: widget.isPersegi ? "Panjang" : "Jari-jari",
              ),
            ),
            widget.isPersegi ? const SizedBox(height: 10) : const SizedBox(),
            widget.isPersegi
                ? TextFormField(
                    controller: text2,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Lebar",
                    ),
                  )
                : const SizedBox(),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (widget.isPersegi) {
                  final int panjang = int.parse(text1.text);
                  final int lebar = int.parse(text2.text);
                  final int hasil = panjang * lebar;
                  text3.text = hasil.toString();
                } else {
                  final double jari = double.parse(text1.text);
                  final double hasil = 3.14 * jari * jari;
                  text3.text = hasil.toString();
                }
              },
              child: const Text("Hitung"),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: text3,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Hasil",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
