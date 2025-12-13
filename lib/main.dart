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

        appBar: AppBar(
          backgroundColor: Color(0xFF00f15e),
          title: Center(
            child: Text(" New App", style: TextStyle(color: Colors.white)),
          ),
        ),

        body:
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "*",
                    style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            )
            // Padding(
            //   padding: EdgeInsets.zero,
            //   child:
            //   Text(
            //     "what is ur name? ",
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 25,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            // for (int i in List.generate(5, (index) => index + 1))
            //   ElevatedButton(onPressed: () {}, child: Text("Answer $i")),


      ),
    );
  }
}
