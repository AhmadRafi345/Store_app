import 'package:flutter/material.dart';

class SizeSelector extends StatelessWidget {
  final List<double> sizes = [4.5, 5.5, 6.5];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: sizes.map((size) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ElevatedButton(
            onPressed: () {},
            child: Text('$size Y'),
            style: ElevatedButton.styleFrom(
              backgroundColor: size == 5.5
                  ? Colors.black
                  : Colors.grey[300], // Gunakan backgroundColor
              foregroundColor: size == 5.5
                  ? Colors.white
                  : Colors.black, // Gunakan foregroundColor
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
