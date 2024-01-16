import 'package:flutter/material.dart';

class Tentang extends StatelessWidget {
  const Tentang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Kami'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 87,139,152),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('images/PILEMAS.png'), // Ganti dengan path atau URL gambar tim Anda
              ),
              const SizedBox(height: 16.0),
              Text(
                'Kelompok Pemulung Handal',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Pil Emas, adalah teman setia anda dalam mewujudkan gaya hidup sehat. '
                'Dibuat khusus untuk membantu Anda meraih keseimbangan antara pekerjaan dan kehidupan pribadi, Pil Emas menyediakan informasi terkini seputar kebiasaan hidup sehat, tips nutrisi, rutinitas olahraga, dan saran kesehatan yang mudah diintegrasikan ke dalam kehidupan sehari-hari Anda.'
                'Temukan inspirasi untuk menjaga kesehatan tubuh dan pikiran Anda, serta temukan perjalanan menuju versi terbaik dari diri Anda melalui Pil Emas.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Tambahkan fungsi untuk tombol jika diperlukan
                },
                child: Text('Hubungi Kami'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
