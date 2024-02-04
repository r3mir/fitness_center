
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class calismalarim_tab extends StatefulWidget {
  @override
  State<calismalarim_tab> createState() => _calismalarim_tabState();
}

class _calismalarim_tabState extends State<calismalarim_tab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Column(children: [
        ElevatedButton(
            onPressed: ()
            {
              launch("tel:05331333121");
            },
            child: Text("Beni Arayın")),
        ElevatedButton(
            onPressed: ()
            {
              launch("https://github.com/Fratmeric/mobilprogramla.git");
            },
            child: Text("Github Reposu"))
      ],
      ),
    );
  }
}
