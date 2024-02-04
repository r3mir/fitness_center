import 'package:fitness_center_sample/Bilesenler/Network.dart';
import 'package:fitness_center_sample/Ekler/renkler.dart';
import 'package:fitness_center_sample/Ekranlar/giris.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class profil extends StatefulWidget {
  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {


  @override
  void initState() {
    super.initState();
    run();
  }

  String username = "";

  run()async
  {
    username = await storage.read(key: "username") ?? "Emir Fırat";
    setState(() {
      username;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ana_renkler.arkaplan,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image(image: AssetImage("lib/Ekler/resimler/resim.png")),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Column(
                    children: [
                      Icon(
                        Icons.account_circle_rounded,
                        size: 200,
                        color: ana_renkler.beyaz,
                      ),
                      Text(
                          style:
                              TextStyle(fontSize: 22, color: ana_renkler.beyaz),
                          username),
                      Text(
                          style: TextStyle(
                              fontSize: 17, color: ana_renkler.azkoyu),
                          "emirfirat@stu.istinye.edu.tr"),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: null,
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            "lib/Ekler/iconlar/profil/profili_düzenle.svg"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                            style: TextStyle(
                                color: ana_renkler.beyaz, fontSize: 17),
                            "Profili düzenle"),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            "lib/Ekler/iconlar/profil/bildirimler.svg"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                            style: TextStyle(
                                color: ana_renkler.beyaz, fontSize: 17),
                            "Bildirimler"),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Row(
                      children: [
                        SvgPicture.asset("lib/Ekler/iconlar/profil/yardim.svg"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                            style: TextStyle(
                                color: ana_renkler.beyaz, fontSize: 17),
                            "Yardım"),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            "lib/Ekler/iconlar/profil/hakkinda.svg"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                            style: TextStyle(
                                color: ana_renkler.beyaz, fontSize: 17),
                            "Hakkında"),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => giris()));
                    },
                    child: Text(
                            style: TextStyle(
                                color: Colors.redAccent, fontSize: 17),
                            "Oturumu Kapat"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
