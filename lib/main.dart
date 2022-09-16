import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('my first portal'),
          centerTitle: true,
          backgroundColor: Colors.blue[600],
        ),
        body: Column(
          children: [
            const OutlineTombol(),
            Expanded(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    color: Colors.purple[200],
                    width: 500,
                    height: 260,
                  ),
                  Positioned(
                    top: 168,
                    child: Container(
                      width: 500,
                      height: 70,
                      alignment: Alignment.center,
                      color: Colors.white,
                      child: const Text("Costa Mendekat ke Palmeiras",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                  Positioned(
                    top: 240,
                    child: Container(
                        padding: const EdgeInsets.all(15.0),
                        color: Colors.purple[200],
                        width: 500,
                        height: 50,
                        child: const Text("transfer",
                            style:
                                TextStyle(fontSize: 20, color: Colors.black))),
                  ),
                  Image.network(
                    'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt3fb221c751bdd34d/60dacc985c97640f943f3250/8e9f68dc9178d045468e572aefae38ffe9bf117a.jpg?quality=80&format=pjpg&auto=webp&width=1000',
                    height: 170,
                    width: 500,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const isi_berita(),
                  // ignore: unnecessary_new
                  const tanggal_terbit(),
                  const isi_berita(),
                  // ignore: unnecessary_new
                  const tanggal_terbit(),
                  const isi_berita(),
                  // ignore: unnecessary_new
                  const tanggal_terbit(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class tanggal_terbit extends StatelessWidget {
  const tanggal_terbit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      child: Center(
        child: Row(
          children: const [
            Text(
              'Malang Raya : 28 Agustus 2022',
              style: TextStyle(fontSize: 10),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class isi_berita extends StatelessWidget {
  const isi_berita({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      child: Center(
        child: Row(
          children: [
            Image.network(
                "https://vid.alarabiya.net/images/2021/02/10/204486ae-ff75-46bd-915e-96568d21777f/204486ae-ff75-46bd-915e-96568d21777f_16x9_1200x676.jpg?width=1120&format=jpg",
                width: 180),
            const Text(
              'Pique Bilang Wasit Untungkan Madrid , Koeman Tapok Jidat',
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class OutlineTombol extends StatelessWidget {
  const OutlineTombol({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
          style: OutlinedButton.styleFrom(
              primary: Colors.black,
              backgroundColor: Colors.white,
              textStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              padding:
                  const EdgeInsets.symmetric(vertical: 30, horizontal: 50)),
          onPressed: () {
            print('Pressed');
          },
          child: const Text(
            'BERITA TERBARU',
          ),
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
              primary: Colors.black,
              backgroundColor: Colors.white,
              textStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              padding:
                  const EdgeInsets.symmetric(vertical: 30, horizontal: 60)),
          onPressed: () {
            print('Pressed');
          },
          child: const Text('PERTANDINGAN HARI INI'),
        ),
      ],
    );
  }
}
