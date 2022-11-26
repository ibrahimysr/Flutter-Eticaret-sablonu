import 'package:eticaret/UrunDetay.dart';
import 'package:eticaret/bile%C5%9Fenler/header.dart';
import 'package:eticaret/colors.dart';
import 'package:flutter/material.dart';

class DetaySayfasi extends StatefulWidget {
  String KategoriAdi;

  DetaySayfasi(@required this.KategoriAdi);

  @override
  State<DetaySayfasi> createState() => _DetaySayfasiState();
}

class _DetaySayfasiState extends State<DetaySayfasi> {
  List<Map> veriler = [
    {
      "isim": "İçli Köfte",
      "fotograf": "resimler/iclikofte.jpg",
      "fiyat": "35 tl"
    },
    {
      "isim": "İçli Köfte",
      "fotograf": "resimler/iclikofte.jpg",
      "fiyat": "35 tl"
    },
    {
      "isim": "İçli Köfte",
      "fotograf": "resimler/iclikofte.jpg",
      "fiyat": "35 tl"
    },
    {
      "isim": "İçli Köfte",
      "fotograf": "resimler/iclikofte.jpg",
      "fiyat": "35 tl"
    },
    {
      "isim": "İçli Köfte",
      "fotograf": "resimler/iclikofte.jpg",
      "fiyat": "35 tl"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(widget.KategoriAdi, context),
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                children: veriler.map((Map veriler) {
                  return ContainerBuild(veriler["isim"], veriler["fotograf"],
                      veriler["fiyat"], context);
                }).toList(),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

Widget ContainerBuild(String title, String PhotoUrl, String fiyat, context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return UrunDetay(title);
      }));
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.10),
                blurRadius: 24,
                offset: Offset(0, 16))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          SizedBox(width: 70, child: Image.asset(PhotoUrl)),
          SizedBox(
            height: 35,
          ),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 17),
              ),
              Text(
                "$fiyat",
                style: TextStyle(color: Colors.red[400]),
              )
            ],
          )
        ],
      ),
    ),
  );
}
