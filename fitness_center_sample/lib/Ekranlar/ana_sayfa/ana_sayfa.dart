import 'package:fitness_center_sample/Ekler/renkler.dart';
import 'package:flutter/material.dart';
import 'ana_sayfa_tab.dart';
import 'calismalarim_tab.dart';
import 'egitmenler_tab.dart';

class ana_sayfa extends StatefulWidget {
  @override
  State<ana_sayfa> createState() => _ana_sayfaState();
}

class _ana_sayfaState extends State<ana_sayfa> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: ana_renkler.arkaplan,
        appBar: const TabBar(
          indicatorColor: ana_renkler.ana_renk,
          tabs: [
            Tab(
              text: "Anasayfa",
            ),
            Tab(
              text: "Eğitmenler",
            ),
            Tab(
              text: "Çalışmalarım",
            ),
          ],
        ),
        body: TabBarView(
          children: [
            ana_sayfa_tab(),
            egitmenler_tab(),
            calismalarim_tab(),
          ],
        ),
      ),
    );
  }
}
























