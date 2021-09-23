import 'package:flutter/material.dart';

class SelectedPoint extends StatelessWidget {
  final Color color;
  final int selectedItemIndex;
  final int myIndex;
  final press;

  const SelectedPoint(
      {Key? key,
      required this.color,
      this.press,
      required this.selectedItemIndex,
      required this.myIndex})
      : super(key: key);

  // const SelectedPoint({Key? key, required this.color, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        width: 22,
        height: 22,
        padding: EdgeInsets.all(1),
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: color,
            width: 3,
          ),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: myIndex == selectedItemIndex ? color : Colors.transparent,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
