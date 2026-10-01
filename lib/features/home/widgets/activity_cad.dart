// import 'package:flutter/material.dart';
// 
// class ActivityCard extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   final String trailing;
//   final IconData icon;
//   final Color iconColor;
// 
//   const ActivityCard({
//     super.key,
//     required this.title,
//     required this.subtitle,
//     required this.trailing,
//     required this.icon,
//     required this.iconColor,
//   });
// 
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 5.0,
//       margin: EdgeInsets.zero,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 8.0),
//         child: ListTile(
//           contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
//           leading: Icon(icon, color: iconColor),
//           title: Text(
//             title,
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//             style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           subtitle: Text(
//             subtitle,
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//           ),
//           trailing: Text(
//             trailing,
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//             style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//           ),
//         ),
//       ),
//     );
//   }
// }
