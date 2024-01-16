import 'package:flutter/material.dart';
import 'package:mandiri_pbb/data/tips.dart';
import 'package:mandiri_pbb/pages/detailobat.dart';

class MenuObat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tips Kesehatan'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 244, 20, 4),
      ),
      backgroundColor: Color.fromARGB(255, 234, 177, 177),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2.5,
          ),
          itemCount: TipsList.length,
          itemBuilder: (context, index) {
            Tips obat = TipsList[index];
            return Card(
              color: Color.fromARGB(255, 255, 255, 255),
              child: ListTile(
                leading: Image.network(obat.imageUrl),
                title: Text(obat.title, textAlign: TextAlign.right),
                subtitle: Text(""),
                trailing: Icon(Icons.arrow_forward_rounded),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ObatDetailsScreen(obat)),
                  );
                },
              ),
            );
          }),
    );
  }
}
