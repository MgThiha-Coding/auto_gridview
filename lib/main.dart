import 'package:auto_gridview/auto_gridview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("AutoGridView Demo")),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: AutoGridView(
            itemcount: 20, // Total number of grid items
            crossAxisCount: 3, // Manually set cross axis count (optional)
            childAspectRadio: 1.5, // Adjust width-to-height ratio
            borderRadius: 12.0, // Rounded corners
            borderWidth: 2.0, // Border thickness
            borderColor: Colors.blue, // Border color
            backgroundColor: Colors.grey[200], // Background color
            childItemWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star, color: Colors.amber, size: 30),
                SizedBox(height: 5),
                Text("Star", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
