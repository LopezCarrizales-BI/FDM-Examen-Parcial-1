// import 'package:flutter/material.dart';
// import 'package:movil/features/details/screens/datail_screen.dart';
// import 'package:movil/features/home/models/activity.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// 
// class InteractiveActivityCard extends StatefulWidget {
//   final Activity activity;
// 
//   const InteractiveActivityCard({super.key, required this.activity});
// 
//   @override
//   State<InteractiveActivityCard> createState() =>
//       _InteractiveActivityCardState();
// }
// 
// class _InteractiveActivityCardState extends State<InteractiveActivityCard> {
//   bool isCompleted = false;
// 
//   @override
//   void initState() {
//     super.initState();
//     _cargarEstado();
//   }
// 
//   Future<void> _cargarEstado() async {
//     final prefs = await SharedPreferences.getInstance();
// 
//     setState(() {
//       isCompleted = prefs.getBool(widget.activity.title) ?? false;
//     });
//   }
// 
//   Future<void> _guardarEstado(bool value) async {
//     final prefs = await SharedPreferences.getInstance();
// 
//     await prefs.setBool(widget.activity.title, value); 
//   }
// 
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: isCompleted ? Colors.green.shade100 : Colors.white,
//       elevation: 5.0,
//       child: ListTile(
//         leading: Icon(widget.activity.icon, color: widget.activity.iconColor),
//         title: Text(widget.activity.title),
//         subtitle: Text(
//           widget.activity.subtitle + (isCompleted ? " Hecho" : ""),
//         ),
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => DatailScreen(activity: widget.activity),
//             ),
//           );
//         },
//         trailing: IconButton(
//           icon: Icon(
//             isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
//           ),
//           onPressed: () {
//             setState(() {
//               isCompleted = !isCompleted;
//             });
//             _guardarEstado(isCompleted);
//           },
//         ),
//       ),
//     );
//   }
// }
