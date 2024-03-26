import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Contador(),
  ));
}

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int count = 0;

  void decrement() {
    setState(() {
      if (count > 0) count--;
    });
  }

  void increment() {
    setState(() {
      if (count < 30) count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        // appBar: AppBar(title: Text("Contador de pessoas.")),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/restaurant.png"), fit: BoxFit.cover)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "You can enter.\n",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            Text(
              count.toString(),
              style: TextStyle(fontSize: 100, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: decrement,
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: Size(100, 100),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24))),
                    child: Text(
                      "Saiu",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )),
                SizedBox(
                  width: 64,
                ),
                TextButton(
                    onPressed: increment,
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: Size(100, 100),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24))),
                    child: Text(
                      "Entrou",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ))
              ],
            )
          ]),
        ));
  }
}
