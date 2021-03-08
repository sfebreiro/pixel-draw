import 'package:animated_floatactionbuttons/animated_floatactionbuttons.dart';
import 'package:flutter/material.dart';
import 'package:pixel_draw/cell.dart';
import 'package:pixel_draw/provider/cell_style.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var color = Provider.of<CellStyle>(context);

    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 2.0,
                top: 28.0,
                right: 2.0,
              ),
              child: GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 16,
                ),
                itemCount: 368,
                itemBuilder: (context, index) {
                  return Cell();
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: AnimatedFloatingActionButton(
          fabButtons: <Widget>[
            Container(
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {},
                child: IconButton(
                  icon: Icon(Icons.circle, color: Colors.black),
                  onPressed: () {
                    color.cellColor = Colors.black;
                  },
                ),
              ),
            ),
            Container(
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {},
                child: IconButton(
                  icon: Icon(Icons.circle, color: Colors.red),
                  onPressed: () {
                    color.cellColor = Colors.red;
                  },
                ),
              ),
            ),
            Container(
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {},
                child: IconButton(
                  icon: Icon(Icons.circle, color: Colors.green),
                  onPressed: () {
                    color.cellColor = Colors.green;
                  },
                ),
              ),
            ),
            Container(
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {},
                child: IconButton(
                  icon: Icon(Icons.circle, color: Colors.yellow),
                  onPressed: () {
                    color.cellColor = Colors.yellow;
                  },
                ),
              ),
            ),
          ],
          colorStartAnimation: Colors.blue,
          colorEndAnimation: Colors.black38,
          animatedIconData: AnimatedIcons.menu_close),
    );
  }
}
