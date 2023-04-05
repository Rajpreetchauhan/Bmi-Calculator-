import 'package:flutter/material.dart';

import 'constants.dart';
import 'malefemaleselect.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int? Genderselect;

  double Slidervalue = 180;
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
                      colorchangetap: () {
                        setState(() {
                          Genderselect = 1;
                        });
                      },
                      colorchange:
                          Genderselect == 1 ? Colors.red : Colors.red.shade300,
                    ),
                    Malefemaleselect(
                      i: Icon(Icons.female),
                      t: "Female",
                      colorchangetap: () {
                        setState(() {
                          Genderselect = 2;
                        });
                      },
                      colorchange:
                          Genderselect == 2 ? Colors.red : Colors.red.shade300,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(Slidervalue.round().toString(),
                                style: boldfontstyle),
                            Text("cm"),
                          ],
                        ),
                        SliderTheme(
                          data: SliderThemeData(
                              activeTickMarkColor: Colors.yellowAccent,
                              activeTrackColor: Colors.yellow),
                          child: Slider(
                              value: Slidervalue,
                              min: 120,
                              max: 180,
                              onChanged: (double sliderpassvalue) {
                                setState(() {
                                  Slidervalue = sliderpassvalue;
                                });
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    PlusContainers(Categoryame: "Age"),
                    PlusContainers(
                      Categoryame: "Weight",
                    )
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

class PlusContainers extends StatefulWidget {
  PlusContainers({Key? key, required this.Categoryame}) : super(key: key);
  String Categoryame;
  @override
  State<PlusContainers> createState() => _PlusContainersState();
}

class _PlusContainersState extends State<PlusContainers> {
  Plusminusbutton({required iconbutton, required Icontapfunction}) {
    return GestureDetector(
      onTap: Icontapfunction,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.red.shade100),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: iconbutton,
        ),
      ),
    );
  }

  int Agenumber = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(5)),
          child: Column(
            children: [
              Text(widget.Categoryame),
              Text(
                Agenumber.toString(),
                style: boldfontstyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Plusminusbutton(
                      iconbutton: Icon(Icons.remove),
                      Icontapfunction: () {
                        setState(() {
                          Agenumber--;
                        });
                      }),
                  SizedBox(width: 30),
                  Plusminusbutton(
                      iconbutton: Icon(Icons.add),
                      Icontapfunction: () {
                        setState(() {
                          Agenumber++;
                        });
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
