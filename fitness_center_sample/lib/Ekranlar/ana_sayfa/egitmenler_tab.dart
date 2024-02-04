import 'package:fitness_center_sample/Bilesenler/Network.dart';
import 'package:fitness_center_sample/Ekler/renkler.dart';
import 'package:flutter/material.dart';

class egitmenler_tab extends StatefulWidget {
  @override
  State<egitmenler_tab> createState() => _egitmenler_tabState();
}

class _egitmenler_tabState extends State<egitmenler_tab> {

  @override
  void initState() {
    super.initState();
    run();
  }

  dynamic response;
  bool loading = true;

  run()async
  {
    setState(() {
      loading = true;
    });
    response = await Network("users?page=2").get();
    setState(() {
      response;
      loading = false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return loading
        ? Center(child: CircularProgressIndicator(),)
        : Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(style: TextStyle(color: ana_renkler.beyaz),"Favori Eğitmenlerim"),
            ],
          ),
          Container(
            height: 225,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: response["data"].length ?? 0,
                itemBuilder: (context,index)
                {
                  return Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: ana_renkler.koyu,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 175,
                    height: 175,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(width: 75,height: 75,child: ClipRRect(borderRadius:BorderRadius.circular(100),child: Image.network(response["data"][index]["avatar"]))),
                        Text(response["data"][index]["email"],style: TextStyle(color: ana_renkler.beyaz,fontSize: 15 ),textAlign: TextAlign.center,),
                        Text(response["data"][index]["first_name"]+response["data"][index]["last_name"],style: TextStyle(color: ana_renkler.beyaz,fontSize: 10 ),),
                      ],
                    ),
                  );
                }
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(style: TextStyle(color: ana_renkler.beyaz),"Tüm Eğitmenler"),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: response["data"].length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Container(width: 25,height: 25,child: ClipRRect(borderRadius:BorderRadius.circular(100),child: Image.network(response["data"][index]["avatar"]))),
                  title: Text(response["data"][index]["email"],style: TextStyle(color: ana_renkler.beyaz)),
                  subtitle: Text(response["data"][index]["first_name"]+response["data"][index]["last_name"], style: TextStyle(color: ana_renkler.azkoyu)),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}