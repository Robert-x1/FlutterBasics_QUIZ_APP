//Robert
//Romany
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  int counter = 0;

  void addOne() {
    setState(() {
      counter++;
    });

    debugPrint("counter is: $counter");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  "what is ur name? ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold

                  ),
                ),
              ),
              for (var i in List.generate(5, (index) => index + 1))
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: SizedBox(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Answer $i"),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
