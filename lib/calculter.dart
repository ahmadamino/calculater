import 'package:flutter/material.dart';

class Calculater extends StatefulWidget {
  const Calculater({Key? key}) : super(key: key);

  @override
  State<Calculater> createState() => _CalculaterState();
}

class _CalculaterState extends State<Calculater> {
  List number = [
    {'num': 'C'},
    {'num': '()'},
    {'num': '%'},
    {'num': '/'},
    {'num': '7'},
    {'num': '8'},
    {'num': '9'},
    {'num': '*'},
    {'num': '4'},
    {'num': '5'},
    {'num': '6'},
    {'num': '-'},
    {'num': '1'},
    {'num': '2'},
    {'num': '3'},
    {'num': '+'},
    {'num': '+/-'},
    {'num': '0'},
    {'num': '.'},
    {'num': '='},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body:
            // Container(
            //   height: 300,
            //   color: Colors.white,
            // ),
            // Divider(thickness: 3),
            Container(
          margin: EdgeInsets.only(top: 280),
          child: GridView.builder(
              itemCount: number.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 10,
                  childAspectRatio: 9 / 8),
              itemBuilder: (context, i) {
                return FloatingActionButton(
                  backgroundColor: Colors.grey[900],
                  onPressed: () {},
                  child: Text(
                    '${number[i]['num']}',
                    style: TextStyle(fontSize: 35),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
