import 'package:flutter/material.dart';
import 'package:pixel_draw/provider/cell_style.dart';
import 'package:provider/provider.dart';

class Cell extends StatefulWidget {
  @override
  _CellState createState() => _CellState();
}

class _CellState extends State<Cell> {
  Color initialColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    var color = Provider.of<CellStyle>(context);

    return GestureDetector(
      onTap: () {
        setState(() {
          initialColor = color.cellColor;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(0.5),
        child: Container(
          decoration: BoxDecoration(
            color: initialColor,
            border: Border.all(
              color: Colors.white,
              width: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
