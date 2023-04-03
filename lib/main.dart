import 'package:flutter/material.dart';

import 'malefemaleselect.dart';

void main() {
  runApp(const MyApp());
}

//i am checking
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PlusBox plusBox1 = PlusBox(t: "Male");
  PlusBox plusBox2 = PlusBox(t: "female");

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Bmi Calculator")),
          ),
          body: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Malefemaleselect(
                      i: Icon(Icons.male),
                      t: "Male",
                    ),
                    Malefemaleselect(
                      i: Icon(Icons.female),
                      t: "Female",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Height"),
                        Text("177 cm"),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [plusBox1, plusBox2],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5)),
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Calculate"),
                    ),
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

class Malefemaleselect extends StatefulWidget {
  Icon? i;
  String? t;
  Malefemaleselect({
    Key? key,
    required Icon? i,
    required String? t,
  }) : super(key: key);

  @override
  State<Malefemaleselect> createState() => _MalefemaleselectState();
}

class _MalefemaleselectState extends State<Malefemaleselect> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [widget.i!, Text(widget.t!)],
        ),
      ),
    );
  }
}
