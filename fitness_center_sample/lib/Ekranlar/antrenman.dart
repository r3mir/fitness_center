import 'package:flutter/cupertino.dart';

class antrenman extends StatefulWidget {
  const antrenman({Key? key}) : super(key: key);

  @override
  State<antrenman> createState() => _antrenmanState();
}

class _antrenmanState extends State<antrenman> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Antrenman"
      ),
    );
  }
}
