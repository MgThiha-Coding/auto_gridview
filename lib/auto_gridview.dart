import 'package:flutter/material.dart';

/// A customizable **AutoGridView** widget that automatically adjusts
/// the number of columns based on the screen width or a user-defined value.
///
/// This widget creates a grid layout and allows customization of border styles,
/// background color, and aspect ratio.
///
/// **Example Usage:**
/// ```dart
/// AutoGridView(
///   itemcount: 20,
///   crossAxisCount: 3,  // Optional, auto-calculated if not provided
///   borderRadius: 8.0,
///   borderWidth: 2.0,
///   borderColor: Colors.blue,
///   backgroundColor: Colors.grey[200],
///   childAspectRadio: 1.5,
///   childItemWidget: Icon(Icons.star),
/// );
/// ```
class AutoGridView extends StatefulWidget {
  /// The total number of items to display in the grid.
  final int itemcount;

  /// The number of columns in the grid. If not provided, it will be
  /// automatically calculated based on screen width.
  final int? crossAxisCount;

  /// The border radius for each grid item.
  final double? borderRadius;

  /// The border width for each grid item.
  final double? borderWidth;

  /// The border color for each grid item.
  final Color? borderColor;

  /// The background color for each grid item.
  final Color? backgroundColor;

  /// The aspect ratio of each grid item (width / height).
  /// Defaults to `1.0` if not provided.
  final double? childAspectRadio;

  /// The widget to display inside each grid item.
  final Widget childItemWidget;

  /// Creates an **AutoGridView** widget.
  const AutoGridView({
    super.key,
    required this.itemcount,
    this.crossAxisCount,
    this.borderRadius,
    this.borderWidth,
    this.borderColor,
    required this.childItemWidget,
    this.childAspectRadio,
    this.backgroundColor,
  });

  @override
  State<AutoGridView> createState() => _AutoGridviewState();
}

class _AutoGridviewState extends State<AutoGridView> {
  @override
  Widget build(BuildContext context) {
    // Get the screen width using MediaQuery.
    double screenWidth = MediaQuery.of(context).size.width;

    // Calculate the number of columns dynamically based on screen width.
    // Ensures at least 2 columns and at most 6 columns.
    int calculatedAxisCount = (screenWidth / 140).floor().clamp(2, 6);
    int finalAxisCount = widget.crossAxisCount ?? calculatedAxisCount;

    // Define a consistent padding value for spacing.
    double padding = 8.0;

    return Padding(
      padding: EdgeInsets.all(padding),
      child: GridView.builder(
        itemCount: widget.itemcount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: finalAxisCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio:
              widget.childAspectRadio ?? 1.0, // Default aspect ratio
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: widget.backgroundColor ??
                  Colors.transparent, // Default: Transparent
              borderRadius: BorderRadius.circular(
                  widget.borderRadius ?? 10), // Default: 10
              border: Border.all(
                width: widget.borderWidth ?? 1, // Default: 1
                color: widget.borderColor ?? Colors.black, // Default: Black
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(padding),
              child: widget.childItemWidget,
            ),
          );
        },
      ),
    );
  }
}
