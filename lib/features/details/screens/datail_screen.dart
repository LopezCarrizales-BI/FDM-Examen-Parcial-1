// import 'package:flutter/material.dart';
// import 'package:movil/features/home/models/activity.dart';
// 
// class DatailScreen extends StatelessWidget {
//   final Activity activity;
// 
//   const DatailScreen({super.key, required this.activity});
// 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(activity.title)),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(24.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Icon(activity.icon, size: 80, color: activity.iconColor),
//               const SizedBox(height: 16),
//               Text(
//                 activity.title,
//                 style: const TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 8),
//               Text(
//                 activity.subtitle,
//                 style: const TextStyle(fontSize: 16),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 24),
//               ElevatedButton(
//                 onPressed: () => Navigator.pop(context),
//                 child: const Text("Atrás"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:movil/features/home/models/activity.dart';
class DatailScreen extends StatelessWidget {
  final Item item;
  const DatailScreen({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.titulo)),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  item.completado ? Icons.check_circle : Icons.radio_button_unchecked,
                  size: 48,
                  color: item.completado ? Colors.green : Colors.grey,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    item.titulo,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(item.categoria, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text(
              item.completado ? "Completado" : "Pendiente",
              style: TextStyle(
                fontSize: 16,
                color: item.completado ? Colors.green : Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Atrás"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
