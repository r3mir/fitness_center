import 'package:flutter/cupertino.dart';

class favoriler extends StatefulWidget {
  const favoriler({Key? key}) : super(key: key);

  @override
  State<favoriler> createState() => _favorilerState();
}

class _favorilerState extends State<favoriler> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          "Favoriler"
      ),
    );
  }
}
