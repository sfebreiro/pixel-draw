import 'package:flutter/material.dart';
import 'package:pixel_draw/provider/cell_style.dart';
import 'package:provider/provider.dart';
import 'package:pixel_draw/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CellStyle(),
      child: MaterialApp(
        title: 'Pixel Draw',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
