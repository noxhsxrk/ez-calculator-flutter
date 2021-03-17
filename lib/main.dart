import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Easy Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String showNum = "";
  String history = "";
  String result = "";
  String num1 = "";
  String num2 = "";
  int numOne = 0;
  int numTwo = 0;
  int stat = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$history",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$showNum",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "$result",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                Text(" "),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("1"),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 50))),
                  onPressed: () {
                    check();
                    setState(() {
                      showNum += "1";
                    });
                  },
                ),
                ElevatedButton(
                  child: Text("2"),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 50))),
                  onPressed: () {
                    check();
                    setState(() {
                      showNum += "2";
                    });
                  },
                ),
                ElevatedButton(
                  child: Text("3"),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 50))),
                  onPressed: () {
                    check();
                    setState(() {
                      showNum += "3";
                    });
                  },
                ),
                Text("                     "),
                ElevatedButton(
                  child: Text("+"),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 50))),
                  onPressed: () {
                    check();
                    num1 = showNum;
                    setState(() {
                      showNum += " + ";
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("4"),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 50))),
                  onPressed: () {
                    check();
                    setState(() {
                      showNum += "4";
                    });
                  },
                ),
                ElevatedButton(
                  child: Text("5"),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 50))),
                  onPressed: () {
                    check();
                    setState(() {
                      showNum += "5";
                    });
                  },
                ),
                ElevatedButton(
                  child: Text("6"),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 50))),
                  onPressed: () {
                    check();
                    setState(() {
                      showNum += "6";
                    });
                  },
                ),
                Text("                     "),
                ElevatedButton(
                  child: Text("-"),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 50))),
                  onPressed: () {
                    check();
                    num1 = showNum;
                    setState(() {
                      showNum += " - ";
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("7"),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 50))),
                  onPressed: () {
                    check();
                    setState(() {
                      showNum += "7";
                    });
                  },
                ),
                ElevatedButton(
                  child: Text("8"),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 50))),
                  onPressed: () {
                    check();
                    setState(() {
                      showNum += "8";
                    });
                  },
                ),
                ElevatedButton(
                  child: Text("9"),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 50))),
                  onPressed: () {
                    check();
                    setState(() {
                      showNum += "9";
                    });
                  },
                ),
                Text("                     "),
                ElevatedButton(
                  child: Text("*"),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(100, 50)),
                  ),
                  onPressed: () {
                    check();
                    num1 = showNum;
                    setState(() {
                      showNum += " * ";
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    child: Text(""),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 50)),
                      // backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: null),
                ElevatedButton(
                  child: Text("0"),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 50))),
                  onPressed: () {
                    check();
                    if (showNum == "") {
                    } else if (findOps(showNum) > 0 &&
                        showNum[findOps(showNum) + 2] == new RegExp('r[0-9]')) {
                    } else {
                      setState(() {
                        showNum += "0";
                      });
                    }
                  },
                ),
                ElevatedButton(
                    child: Text(""),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 50)),
                      // backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: null),
                Text("                     "),
                ElevatedButton(
                  child: Text("/"),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(100, 50))),
                  onPressed: () {
                    check();
                    num1 = showNum;
                    setState(() {
                      showNum += " / ";
                    });
                  },
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                child: Text("="),
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(100, 50))),
                onPressed: () {
                  setState(() {
                    cal();
                  });
                },
              ),
            ])
          ],
        ),
      ),
    );
  }

  int findOps(String str) {
    return str.indexOf(new RegExp(r'[!@#$%^&*(),.?":{}|<>+-/]'));
  }

  cal() {
    check();
    stat = 1;
    num2 = showNum.trim().substring(findOps(showNum) + 1, showNum.length);
    numOne = int.parse(num1);
    numTwo = int.parse(num2);
    if (showNum[1] == new RegExp(r'[!@#$%^&*(),.?":{}|<>+-/]')) {
      showNum = "";
      return;
    }
    if (showNum[findOps(showNum)] == "+") {
      result += "  ${numOne + numTwo}";
    } else if (showNum[findOps(showNum)] == "-") {
      result += "  ${numOne - numTwo}";
    } else if (showNum[findOps(showNum)] == "*") {
      result += "  ${numOne * numTwo}";
    } else if (showNum[findOps(showNum)] == "/") {
      result += "  ${numOne / numTwo}";
    }
    history = showNum;
    showNum = "";
  }

  check() {
    if (stat == 1) {
      showNum = "";
      stat = 0;
    }
  }
}
