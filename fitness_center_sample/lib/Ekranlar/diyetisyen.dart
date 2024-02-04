import 'package:fitness_center_sample/Ekler/renkler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class diyetisyen extends StatefulWidget {
  @override
  State<diyetisyen> createState() => _diyetisyenState();
}

class _diyetisyenState extends State<diyetisyen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ana_renkler.arkaplan,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                  style: TextStyle(color: ana_renkler.beyaz, fontSize: 17),
                  "Diyetisyen Takvimi"),
            ),
            Stack(
              children: [
                Container(
                  height: 300,
                  child: Stack(
                    children: [
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                          color: ana_renkler.koyu,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                        style: TextStyle(
                                            color: ana_renkler.beyaz,
                                            fontSize: 20),
                                        "Pazartesi"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                        style: TextStyle(
                                            color: ana_renkler.azkoyu,
                                            fontSize: 17),
                                        "Salı"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                        style: TextStyle(
                                            color: ana_renkler.azkoyu,
                                            fontSize: 17),
                                        "Çarşamba"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                        style: TextStyle(
                                            color: ana_renkler.azkoyu,
                                            fontSize: 17),
                                        "Perşembe"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                        style: TextStyle(
                                            color: ana_renkler.azkoyu,
                                            fontSize: 17),
                                        "Cuma"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                        style: TextStyle(
                                            color: ana_renkler.azkoyu,
                                            fontSize: 17),
                                        "Cumartesi"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(20,0,20,0),
                                    child: Text(
                                        style: TextStyle(
                                            color: ana_renkler.azkoyu,
                                            fontSize: 17),
                                        "Pazar"),
                                  ),
                                ],
                              ),
                            ),
                            SvgPicture.asset("lib/Ekler/resimler/elma.svg"),
                            Text(
                                style: TextStyle(
                                    color: ana_renkler.beyaz, fontSize: 17),
                                "Henüz diyetisyen takvimi oluşturmadınız."),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        bottom: 25,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(75, 0, 75, 0),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    ana_renkler.ana_renk),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Text("Diyetisyen takvimi oluştur")),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
