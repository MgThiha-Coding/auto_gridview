# AutoGridView - Flutter Package 🚀

AutoGridView is a Flutter package that provides a flexible and responsive GridView widget. It automatically adjusts the number of columns based on the screen width, ensuring a consistent and accessible user experience across devices. The package also allows customization of grid item appearance, such as borders, background colors, aspect ratios, and more.

---

## ✨ Features

- **Responsive grid layout**: Automatically adjusts the number of columns based on screen width.
- **Highly customizable**: Supports `crossAxisCount`, aspect ratios, border styles, and background colors.
- **Flexible layout control**: Easily manage padding, border radius, and spacing.
- **Easy integration**: Simple widget that works in any Flutter project.

---

## 📥 Installation

To use the **AutoGridView** package, add it as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
   auto_gridview: ^1.1.0
```

---

## 📚 Usage

```dart
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
      home: Scaffold(
        appBar: const AppBar(title: Text("AutoGridView Demo")),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: AutoGridView(
            itemcount: 20,
            crossAxisCount: 3,
            childAspectRadio: 1.5,
            borderRadius: 12.0,
            borderWidth: 2.0,
            borderColor: Colors.blue,
            backgroundColor: Colors.grey,
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
```

---

## 🛠️ Customization Options

- `itemcount`: The number of items to be displayed in the grid (Required).
- `crossAxisCount`: Number of columns in the grid (Optional).
- `childAspectRadio`: Aspect ratio of the child item widget (Optional, default 1.0).
- `borderRadius`: The radius of the border for each grid item (Optional).
- `borderWidth`: The width of the border for each grid item (Optional).
- `borderColor`: The color of the border for each grid item (Optional).
- `backgroundColor`: Background color for each grid item (Optional).
- `childItemWidget`: The widget that will be displayed inside each grid item (Required).
