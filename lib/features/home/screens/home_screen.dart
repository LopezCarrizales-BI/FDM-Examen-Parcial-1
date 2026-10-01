// import 'package:flutter/material.dart';
// import 'package:movil/features/home/models/activity.dart';
// import 'package:movil/features/home/widgets/interactive_activity_card.dart';
// import 'package:movil/features/details/screens/profile_screen.dart';
// import 'package:movil/features/home/widgets/step_counter_card.dart';
// 
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
// 
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// 
// class _MyHomePageState extends State<MyHomePage> {
//   List<Activity> activities = [
//     Activity(
//       title: "Pasos diarios",
//       subtitle: "Meta: 10,000 pasos",
//       icon: Icons.directions_walk,
//       iconColor: Colors.green,
//     ),
//     Activity(
//       title: "Carrera matutina",
//       subtitle: "5 km • 28 min",
//       icon: Icons.directions_run,
//       iconColor: Colors.red,
//     ),
//     Activity(
//       title: "Ciclismo",
//       subtitle: "20 km • 1 h 10 min",
//       icon: Icons.directions_bike,
//       iconColor: Colors.blue,
//     ),
//     Activity(
//       title: "Natación",
//       subtitle: "1 km • 30 min en piscina",
//       icon: Icons.pool,
//       iconColor: Colors.lightBlue,
//     ),
//     Activity(
//       title: "Senderismo",
//       subtitle: "12 km • Cerro de San Pedro",
//       icon: Icons.hiking,
//       iconColor: Colors.brown,
//     ),
//     Activity(
//       title: "Entrenamiento de fuerza",
//       subtitle: "45 min • Tren superior",
//       icon: Icons.fitness_center,
//       iconColor: Colors.deepPurple,
//     ),
//     Activity(
//       title: "Yoga y movilidad",
//       subtitle: "30 min • Flexibilidad",
//       icon: Icons.self_improvement,
//       iconColor: Colors.teal,
//     ),
//     Activity(
//       title: "Fútbol",
//       subtitle: "60 min • Partido amistoso",
//       icon: Icons.sports_soccer,
//       iconColor: Colors.greenAccent,
//     ),
//     Activity(
//       title: "Básquetbol",
//       subtitle: "40 min • 3 vs 3",
//       icon: Icons.sports_basketball,
//       iconColor: Colors.orange,
//     ),
//     Activity(
//       title: "Tenis",
//       subtitle: "1 h • Cancha dura",
//       icon: Icons.sports_tennis,
//       iconColor: Colors.lime,
//     ),
//   ];
// 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         foregroundColor: Theme.of(context).colorScheme.onInverseSurface,
//         title: Text("Panel de actividad física"),
//         actions: [
//           IconButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => ProfileScreen()),
//               );
//             },
//             icon: Icon(Icons.person),
//             tooltip: 'Perfil',
//           ),
//         ],
//       ),
//       body:
//           // Center(child: Text("Hola mundo", style: TextStyle(fontSize: 18))),
//           Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 StepCounterCard(),
//                 SizedBox(height: 5.0),
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: activities.length,
//                     itemBuilder: (context, index) {
//                       final currentActivity = activities[index];
//                       return InteractiveActivityCard(activity: currentActivity);
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:movil/features/home/models/activity.dart';
import 'package:movil/features/details/screens/datail_screen.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  List<Item> items = [
    Item(titulo: "Zelda Breath of the Wild", categoria: "Consola"),
    Item(titulo: "Elden Ring", categoria: "PC", completado: true),
    Item(titulo: "Cien años de soledad", categoria: "Libro"),
    Item(titulo: "Dune Parte 2", categoria: "Película"),
    Item(titulo: "Hollow Knight Silksong", categoria: "PC"),
    Item(titulo: "Genshin Impact", categoria: "Móvil"),
  ];
  List<String> categorias = ["PC", "Consola", "Móvil", "Videojuego", "Libro", "Película"];
  void _mostrarDialogoAgregar() {
    String titulo = "";
    String categoriaSeleccionada = categorias.first;
    bool completado = false;
    showDialog(
      context: context,
      builder: (dialogContext) {
        return StatefulBuilder(
          builder: (context, setDialogState) {
            return AlertDialog(
              title: const Text("Nuevo elemento"),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      decoration: const InputDecoration(labelText: "Título"),
                      onChanged: (value) => titulo = value,
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const Text("Categoría: "),
                        Expanded(
                          child: DropdownButton<String>(
                            value: categoriaSeleccionada,
                            isExpanded: true,
                            items: categorias.map((c) {
                              return DropdownMenuItem<String>(value: c, child: Text(c));
                            }).toList(),
                            onChanged: (value) {
                              if (value != null) {
                                setDialogState(() => categoriaSeleccionada = value);
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: completado,
                          onChanged: (value) {
                            setDialogState(() => completado = value ?? false);
                          },
                        ),
                        const Text("Completado"),
                      ],
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(dialogContext),
                  child: const Text("Cancelar"),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (titulo.trim().isEmpty) return;
                    setState(() {
                      items.add(Item(titulo: titulo.trim(), categoria: categoriaSeleccionada, completado: completado));
                    });
                    Navigator.pop(dialogContext);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("$titulo agregado correctamente")),
                    );
                  },
                  child: const Text("Agregar"),
                ),
              ],
            );
          },
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Backlog Tracker"),
      ),
      body: items.isEmpty
          ? const Center(child: Text("Sin elementos pendientes"))
          : ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.horizontal,
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 20),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  secondaryBackground: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 20),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  onDismissed: (direction) {
                    final eliminado = items[index];
                    setState(() => items.removeAt(index));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("${eliminado.titulo} eliminado correctamente")),
                    );
                  },
                  child: Card(
                    elevation: 3,
                    child: ListTile(
                      leading: Icon(
                        item.completado ? Icons.check_circle : Icons.radio_button_unchecked,
                        color: item.completado ? Colors.green : Colors.grey,
                      ),
                      title: Text(item.titulo),
                      subtitle: Text(item.categoria),
                      trailing: Checkbox(
                        value: item.completado,
                        onChanged: (value) {
                          setState(() => item.completado = value ?? false);
                        },
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DatailScreen(item: item)),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _mostrarDialogoAgregar,
        child: const Icon(Icons.add),
      ),
    );
  }
}
