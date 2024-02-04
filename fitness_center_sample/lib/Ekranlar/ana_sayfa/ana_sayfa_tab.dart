import 'package:fitness_center_sample/Ekler/renkler.dart';
import 'package:flutter/material.dart';

class ana_sayfa_tab extends StatefulWidget {
  @override
  State<ana_sayfa_tab> createState() => _ana_sayfa_tabState();
}

class _ana_sayfa_tabState extends State<ana_sayfa_tab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              style: TextStyle(color: ana_renkler.beyaz),
              decoration: InputDecoration(
                prefixIconColor: ana_renkler.azkoyu,
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: ana_renkler.koyu,
                hintStyle: TextStyle(color: ana_renkler.azkoyu),
                hintText: "Ara",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Colors.transparent)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(style: TextStyle(color: ana_renkler.beyaz),"Eğitim setlerini keşfet!"),
                TextButton(
                    onPressed: null,
                    child: Text(style: TextStyle(color: ana_renkler.ana_renk),"Hepsini Gör"))
              ],
            ),
            SizedBox(
              height: 200,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Image(
                          image: AssetImage("lib/Ekler/resimler/scroll.png"),
                        ),
                        Positioned(
                            bottom: 30,
                            left: 20,
                            child: Column(
                              children: [
                                Text(
                                  "Kardiyo Seti",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: ana_renkler.beyaz,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "Eğitmen Ahmet Kaplan",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: ana_renkler.beyaz,
                                  ),
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Image(
                          image: AssetImage("lib/Ekler/resimler/scroll_2.png"),
                        ),
                        Positioned(
                            bottom: 30,
                            left: 20,
                            child: Column(
                              children: [
                                Text(
                                  "Kardiyo Seti 2",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: ana_renkler.beyaz,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "Eğitmen Robert Fox",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: ana_renkler.beyaz,
                                  ),
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Image(
                          image: AssetImage("lib/Ekler/resimler/scroll_3.png"),
                        ),
                        Positioned(
                            bottom: 30,
                            left: 20,
                            child: Column(
                              children: [
                                Text(
                                  "Kardiyo Seti 3",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: ana_renkler.beyaz,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "Eğitmen Ahmet Kaplan",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: ana_renkler.beyaz,
                                  ),
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(style: TextStyle(color: ana_renkler.beyaz),"Ortak aktiviteler keşfet!"),
                TextButton(
                    onPressed: null,
                    child: Text(style: TextStyle(color: ana_renkler.ana_renk),"Hepsini Gör"))
              ],
            ),
            SizedBox(
              height: 200,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Image(
                          image: AssetImage("lib/Ekler/resimler/scroll.png"),
                        ),
                        Positioned(
                            bottom: 30,
                            left: 20,
                            child: Column(
                              children: [
                                Text(
                                  "Kardiyo Seti",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: ana_renkler.beyaz,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "Eğitmen Ahmet Kaplan",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: ana_renkler.beyaz,
                                  ),
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Image(
                          image: AssetImage("lib/Ekler/resimler/scroll_2.png"),
                        ),
                        Positioned(
                            bottom: 30,
                            left: 20,
                            child: Column(
                              children: [
                                Text(
                                  "Kardiyo Seti 2",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: ana_renkler.beyaz,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "Eğitmen Robert Fox",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: ana_renkler.beyaz,
                                  ),
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Image(
                          image: AssetImage("lib/Ekler/resimler/scroll_3.png"),
                        ),
                        Positioned(
                            bottom: 30,
                            left: 20,
                            child: Column(
                              children: [
                                Text(
                                  "Kardiyo Seti 3",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: ana_renkler.beyaz,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "Eğitmen Ahmet Kaplan",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: ana_renkler.beyaz,
                                  ),
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}