import 'package:flutter/material.dart';

class galeri extends StatelessWidget {
  final List<String> Anime = [
    'asset/image/KON.jpg',
    'asset/image/kocchi.jpg',
    'asset/image/lie.jpg',
    'asset/image/lucky.jpg',
    'asset/image/bojji.jpg',
    'asset/image/spy.jpg',
  ];

  final List<String> Judul = [
    'K-ON',
    'ACCHI KOCCHI',
    'SHIGATSU KIMI NO USO',
    'LUCKY STAR',
    'OUSAMA RANGKING',
    'SPY X FAMILY',
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: Anime.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                Anime[index],
                width: 350,
                height: 200,
                fit: BoxFit.cover,
              )),
              subtitle: Text(Judul[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15)),
            ),
          );
        },
      ),
    );
  }
}
