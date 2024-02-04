import 'package:fitness_center_sample/Ekler/renkler.dart';
import 'package:flutter/material.dart';
import 'Ekranlar/giris.dart';

GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

void main() => runApp(uygulama());

class uygulama extends StatefulWidget {

  @override
  State<uygulama> createState() => _uygulamaState();
}

class _uygulamaState extends State<uygulama> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navKey,
      theme: ThemeData(fontFamily: "Manrope"),
      debugShowCheckedModeBanner: false,
      color: ana_renkler.arkaplan,
      home: giris(),
    );
  }
}

