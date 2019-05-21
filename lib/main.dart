import 'dart:html';
import 'package:myportfolio/pages/homepage.dart';

import './utils/utils.dart';
import './pages/components/menuitem.dart';
import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio  ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(title: 'My Portfolio'),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List<String> titles = ["Home", "Contact Us", "About Us"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  changeIndex(int index) {
    
    this.setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: screenWidth(context),
          height: screenHeight(context),
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  Color.fromRGBO(230, 22, 223, 1),
                  Color.fromRGBO(170, 85, 242, 1)
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.5, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: Container(
            color: Colors.white,
            margin: EdgeInsets.only(
                left: 16.0, right: 16.0, top: 48.0, bottom: 48.0),
            width: 96,
            height: 45,
            child: Row(
              children: <Widget>[
                screenWidth(context) < 720
                    ? SizedBox()
                    : Container(
                        color: Color.fromRGBO(235, 239, 255, 1),
                        width: screenWidth(context, dividedBy: 5),
                        child: Padding(
                            padding: const EdgeInsets.all(4.00),
                            child: ListView.builder(
                              itemCount: titles.length,
                              itemBuilder: (BuildContext ctx, int index) {
                                return InkWell(
                                    onTap: () {
                                      this.changeIndex(index);
                                    },
                                    child: MenuItem(
                                        titles[index], index, currentIndex));
                              },
                            )),
                      ),
                MyHomePage()
              ],
            ),
          )),
    );
  }
}
