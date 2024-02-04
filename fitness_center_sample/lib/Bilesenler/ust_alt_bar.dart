import 'package:fitness_center_sample/Bilesenler/Network.dart';
import 'package:fitness_center_sample/Ekler/renkler.dart';
import 'package:fitness_center_sample/Ekranlar/antrenman.dart';
import 'package:fitness_center_sample/Ekranlar/bildirimler.dart';
import 'package:fitness_center_sample/Ekranlar/favoriler.dart';
import 'package:fitness_center_sample/Ekranlar/istatistik.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Ekranlar/ana_sayfa/ana_sayfa.dart';
import '../Ekranlar/diyetisyen.dart';
import '../Ekranlar/profil.dart';

class ust_alt_bar extends StatefulWidget {
  @override
  State<ust_alt_bar> createState() => _ust_alt_barState();
}

class _ust_alt_barState extends State<ust_alt_bar> {
  int _sayfa_index = 0;

  final List<Widget> _sayfalar = [
    ana_sayfa(),
    istatistik(),
    antrenman(),
    diyetisyen(),
    profil(),
    favoriler(),
    bildirimler(),
  ];

  void _sayfa_degistir(int index) {
    setState(() {
      _sayfa_index = index;
    });
  }

  @override
  void initState() {
    super.initState();
    run();
  }

  String username = "";

  run() async {
    username = await storage.read(key: "username") ?? "Emir Fırat";
    setState(() {
      username;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return (await showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text(
                    style: TextStyle(color: ana_renkler.ana_renk), "Çıkış"),
                content: Text(
                    style: TextStyle(color: ana_renkler.beyaz),
                    "Uygulamadan çıkmak istiyor musunuz?"),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: Text(
                        style: TextStyle(color: ana_renkler.beyaz), "Evet"),
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: Text(
                        style: TextStyle(color: ana_renkler.ana_renk), "Hayır"),
                  ),
                ],
                backgroundColor: ana_renkler.koyu,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            )) ??
            false;
      },
      child: Scaffold(
        appBar: _sayfa_index != 4
            ? AppBar(
                elevation: 0,
                backgroundColor: ana_renkler.arkaplan,
                leading: IconButton(
                    onPressed: () => _sayfa_degistir(4),
                    icon: const Icon(
                      Icons.account_circle_rounded,
                      color: ana_renkler.beyaz,
                    )),
                title: Text(
                  username,
                  style: TextStyle(color: Colors.white),
                ),
                actions: [
                  IconButton(
                      onPressed: () => _sayfa_degistir(5),
                      icon: Icon(
                        Icons.favorite_rounded,
                        color: ana_renkler.beyaz,
                      )),
                  IconButton(
                      onPressed: () => _sayfa_degistir(6),
                      icon: const Icon(
                        Icons.notifications_rounded,
                        color: ana_renkler.beyaz,
                      )),
                ],
              )
            : null,
        body: _sayfalar[_sayfa_index],
        bottomNavigationBar: BottomAppBar(
          color: ana_renkler.arkaplan,
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: _sayfa_index == 0
                    ? SvgPicture.asset("lib/Ekler/iconlar/ana_sayfa_secili.svg")
                    : SvgPicture.asset("lib/Ekler/iconlar/ana_sayfa.svg"),
                onPressed: () => _sayfa_degistir(0),
              ),
              IconButton(
                icon: _sayfa_index == 1
                    ? SvgPicture.asset(
                        "lib/Ekler/iconlar/istatistik_secili.svg")
                    : SvgPicture.asset("lib/Ekler/iconlar/istatistik.svg"),
                onPressed: () => _sayfa_degistir(1),
              ),
              IconButton(
                icon: _sayfa_index == 2
                    ? SvgPicture.asset("lib/Ekler/iconlar/antrenman_secili.svg")
                    : SvgPicture.asset("lib/Ekler/iconlar/antrenman.svg"),
                onPressed: () => _sayfa_degistir(2),
              ),
              IconButton(
                icon: _sayfa_index == 3
                    ? SvgPicture.asset(
                        "lib/Ekler/iconlar/diyetisyen_secili.svg")
                    : SvgPicture.asset("lib/Ekler/iconlar/diyetisyen.svg"),
                onPressed: () => _sayfa_degistir(3),
              ),
              IconButton(
                icon: _sayfa_index == 4
                    ? SvgPicture.asset("lib/Ekler/iconlar/profil_secili.svg")
                    : SvgPicture.asset("lib/Ekler/iconlar/profil.svg"),
                onPressed: () => _sayfa_degistir(4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
