import 'package:eticaret/bile%C5%9Fenler/header.dart';
import 'package:flutter/material.dart';

class UrunDetay extends StatefulWidget {
  String YemekAdi;

  UrunDetay(@required this.YemekAdi);

  @override
  State<UrunDetay> createState() => _UrunDetayState();
}

class _UrunDetayState extends State<UrunDetay> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    int UrUnAdedi = 1;
    return Scaffold(
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                header(widget.YemekAdi, context),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.10),
                              blurRadius: 24,
                              offset: Offset(0, 16))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          SizedBox(
                              height: 75,
                              child: Image.asset("resimler/iclikofte.jpg")),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "İcli Köfte",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "akjsfafasfmasfalsfnlaksfajsfklahfslasjhfailksfhalskfhasjflmansfkajsfasnkfasbfasjkfbasjkfbaskjfas",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Adet:",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black54)),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        UrUnAdedi--;
                                      });
                                    },
                                    child: Text("-")),
                                Text("$UrUnAdedi",
                                    style: TextStyle(fontSize: 18)),
                                TextButton(
                                  onPressed: () {
                                   setState(() {

                                   });
                                    print("$UrUnAdedi");
                                  },
                                  child: Text("+:",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black54)),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Toplam Fiyat:",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black54)),
                                Text(
                                  "₺45",
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: width,
                      height: 65,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Sepete Ekle",
                            style: TextStyle(fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
