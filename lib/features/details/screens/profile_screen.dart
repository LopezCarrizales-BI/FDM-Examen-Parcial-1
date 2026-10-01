// import 'package:flutter/material.dart';
// import 'package:movil/features/home/widgets/activity_cad.dart';
// 
// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});
// 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Mi Perfil")),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const Text("Regresar a la pantalla anterior"),
//             const SizedBox(height: 8),
//             ElevatedButton(
//               onPressed: () => Navigator.pop(context),
//               child: const Text("Atrás"),
//             ),
//             const SizedBox(height: 16),
//             const CircleAvatar(
//               radius: 75,
//               child: Icon(Icons.person, size: 100),
//             ),
//             const SizedBox(height: 12),
//             const Text(
//               "Benjamín Iván López",
//               textAlign: TextAlign.center,
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
//             ),
//             const Divider(
//               height: 24,
//               thickness: 2,
//             ),
//             // Row corregido: cada tarjeta tiene ancho acotado con Expanded
//             // para evitar el error de "tamaño infinito" (unbounded width).
//             const Row(
//               children: [
//                 Expanded(
//                   child: ActivityCard(
//                     title: "Pasos diarios",
//                     subtitle: "10,000 pasos",
//                     trailing: "Hecho",
//                     icon: Icons.directions_walk,
//                     iconColor: Colors.green,
//                   ),
//                 ),
//                 SizedBox(width: 8),
//                 Expanded(
//                   child: ActivityCard(
//                     title: "Carrera 5K",
//                     subtitle: "28 min",
//                     trailing: "Pendiente",
//                     icon: Icons.directions_run,
//                     iconColor: Colors.red,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
