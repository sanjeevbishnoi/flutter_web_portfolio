import '../../utils/utils.dart';
import 'package:flutter_web/material.dart';

class MenuItem extends StatelessWidget {
  final String title;

  final int index;
  final int currentIndex;
  MenuItem(this.title, this.index, this.currentIndex) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: screenWidth(context, dividedBy: 5),
      decoration: index == currentIndex
          ? BoxDecoration(
              borderRadius: new BorderRadius.circular(25.0),
              border: new Border.all(
                width: 5.0,
                color: Colors.red,
              ),
              color: Colors.red

              // gradient: new LinearGradient(
              //     colors: [
              //       Color.fromRGBO(151, 105, 247, 0.8),
              //       Color.fromRGBO(199, 53, 232, 0.8)
              //     ],
              //     begin: const FractionalOffset(0.0, 0.0),
              //     end: const FractionalOffset(0.5, 0.0),
              //     stops: [0.0, 1.0],
              //     tileMode: TileMode.clamp),
            )
          : null,
      height: 58,
      child: Text(
        this.title,
        style: TextStyle(
            fontSize: 20,
            color: index == currentIndex ? Colors.white : Colors.black),
      ),
    );
  }
}
