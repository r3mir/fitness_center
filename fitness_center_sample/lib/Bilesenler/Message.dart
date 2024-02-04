import 'package:fitness_center_sample/Ekler/renkler.dart';
import 'package:fitness_center_sample/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

messageShow(String mesaj,{String? icon,int? second}) async
=> ScaffoldMessenger.of(navKey.currentState!.context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: second ?? 2),
        backgroundColor: ana_renkler.ana_renk,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text(style: const TextStyle(color: Colors.white,fontSize: 15),mesaj)),
            const SizedBox(width: 10),
            if (icon != null) SvgPicture.asset(icon),
          ],
        ),
      ),
    );