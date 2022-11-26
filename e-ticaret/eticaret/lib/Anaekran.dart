import 'package:eticaret/Sayfa1.dart';
import 'package:eticaret/Sayfa2.dart';
import 'package:eticaret/Sayfa3.dart';
import 'package:eticaret/colors.dart';
import 'package:flutter/material.dart';

class AnaEkran extends StatefulWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  int secilisayfa = 0;

  void sayfadegistir(int index) {
    setState(() {
      secilisayfa = index;
    });
  }

  sayfagoster(int secilisayfa) {
    if (secilisayfa == 0) {
      return Sayfa1();
    } else if (secilisayfa == 1) {
      return Sayfa2();
    } else if (secilisayfa == 2) {
      return Sayfa3();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined), label: "sepet"),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_border), label: "favoriler")
        ],
        currentIndex: secilisayfa,
        onTap: sayfadegistir,
        type: BottomNavigationBarType.fixed,
      ),
      appBar: AppBar(
        title: const Text('ANA SAYFA'),


        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ],
      ),
      body: sayfagoster(secilisayfa),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Text(
                "Başlık Tasarımı",
                style: TextStyle(fontSize: 30),
              ),
              decoration: BoxDecoration(color: kShrineErrorRed),
            ),
            ListTile(
              title: Text("sayfa1"),
              onTap: () {
                setState(() {
                  secilisayfa = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("sayfa2"),
              onTap: () {
                setState(() {
                  secilisayfa = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("sayfa3"),
              onTap: () {
                setState(() {
                  secilisayfa = 2;
                });
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
