import 'package:flutter/material.dart';

class Malefemaleselect extends StatefulWidget {
  Icon? i;
  String? t;
  Color? colorchange;
  Function()? colorchangetap;
  Malefemaleselect(
      {Key? key,
      required this.i,
      required this.t,
      required this.colorchangetap,
      required this.colorchange})
      : super(key: key);

  @override
  State<Malefemaleselect> createState() => _MalefemaleselectState();
}

class _MalefemaleselectState extends State<Malefemaleselect> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: widget.colorchangetap,
          child: Container(
            decoration: BoxDecoration(
                color: widget.colorchange,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [widget.i!, Text(widget.t!)],
            ),
          ),
        ),
      ),
    );
  }
}
