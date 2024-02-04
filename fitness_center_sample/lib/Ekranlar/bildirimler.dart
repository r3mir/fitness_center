import 'package:flutter/material.dart';
import 'package:fitness_center_sample/Ekler/renkler.dart';

class bildirimler extends StatefulWidget {

  @override
  State<bildirimler> createState() => _bildirimlerState();
}

class _bildirimlerState extends State<bildirimler> {

  void _bildirime_git(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ana_renkler.arkaplan,
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.crisis_alert,color: ana_renkler.beyaz,),
            title:
                TextButton(
                  onPressed: _bildirime_git,
                    child:Text("Bildirim Başlığı", style: TextStyle(color: ana_renkler.beyaz),)),
            subtitle: Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.",
                  style: TextStyle(color: ana_renkler.azkoyu)),
          );
        },
      ),
    );
  }
}
