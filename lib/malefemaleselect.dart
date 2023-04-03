import 'package:flutter/material.dart';

class PlusBox extends StatefulWidget {
  const PlusBox({Key? key, required this.t}) : super(key: key);
  final String t;
  @override
  State<PlusBox> createState() => _PlusBoxState();
}

class _PlusBoxState extends State<PlusBox> {
  int inum = 0;

  Widget plusMinusButton({required Function()? f, required Widget? i}) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: Colors.red[100], borderRadius: BorderRadius.circular(90)),
      child: TextButton(onPressed: f, child: i!),
    );
  }

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
              Text(widget.t),
              Text(inum.toString()),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    plusMinusButton(
                        i: Icon(Icons.remove),
                        f: () {
                          setState(() {});
                          inum--;
                        }),
                    plusMinusButton(
                        i: Icon(Icons.add),
                        f: () {
                          setState(() {});
                          inum++;
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
