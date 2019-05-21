import 'dart:html';
import '../utils/utils.dart';
import 'package:flutter_web/material.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  


@override
  Widget build(BuildContext context) {
    return Container(
                      width: screenWidth(context) < 720
                          ? screenWidth(context) - (32)
                          : screenWidth(context) -
                              (32 + screenWidth(context, dividedBy: 5)),
                      height: screenHeight(context) - 96,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://i.ibb.co/nPtnSWV/background.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 128.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Mobile and Web App Developer",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: screenHeight(context, dividedBy: 12),
                            ),
                            Text(
                              "Flutter | React Native | Android Native(Java) | React.Js | Dart",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            SizedBox(
                              height: screenHeight(context, dividedBy: 36),
                            ),
                            Text(
                              "",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            SizedBox(
                              height: screenHeight(context, dividedBy: 12),
                            ),
                          ],
                        ),
                      )),
                    );
  }

}
