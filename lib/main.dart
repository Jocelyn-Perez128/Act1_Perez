import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
} //funcion principal

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Aprendiendo GridView',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: MyHomePage());
  }
} //widgets sin estado

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
} //widget con estado

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "assets/images/imag1.jpg",
    "assets/images/imag2.jpg",
    "assets/images/imag3.jpg",
    "assets/images/imag4.jpg",
    "assets/images/imag5.jpg",
    "assets/images/imag6.jpg",
    "assets/images/imag6.jpg",
    "assets/images/imag5.jpg",
    "assets/images/imag4.jpg",
    "assets/images/imag3.jpg",
    "assets/images/imag2.jpg",
    "assets/images/imag1.jpg",
    "assets/images/imag1.jpg",
    "assets/images/imag2.jpg",
    "assets/images/imag3.jpg",
    "assets/images/imag4.jpg",
    "assets/images/imag5.jpg",
    "assets/images/imag6.jpg",
    "assets/images/imag6.jpg",
    "assets/images/imag5.jpg",
    "assets/images/imag4.jpg",
    "assets/images/imag3.jpg",
    "assets/images/imag2.jpg",
    "assets/images/imag1.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView"),
        ),
        body: GridView.builder(
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(images[index], fit: BoxFit.cover);
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
