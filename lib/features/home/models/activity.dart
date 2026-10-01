// import 'package:flutter/material.dart';
// 
// class Activity {
//   final String title;
//   final String subtitle;
//   final IconData icon;
//   final Color iconColor;
// 
//   Activity({
//     required this.title,
//     required this.subtitle,
//     required this.icon,
//     required this.iconColor,
//   });
// }
class Item {
  String titulo;
  String categoria;
  bool completado;
  Item({required this.titulo, required this.categoria, this.completado = false});
}
