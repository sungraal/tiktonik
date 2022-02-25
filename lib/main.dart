import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            color: Colors.deepOrangeAccent,
          ),
          Container(
            color: Colors.blueAccent,
          ),
          Container(
            padding: const EdgeInsets.only(right: 10.0),
            color: Colors.amberAccent,
            child: Positioned(
              width: MediaQuery.of(context).size.width,
              top: MediaQuery.of(context).size.height * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 55.0,
                  ),
                  Text(
                    "2M",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(
          top: 10.0
        ),
        color: Colors.black87,
        height: 80.0,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(
              Icons.home,
              color: Colors.white,
              size: 35.0,
            ),
            Icon(
              Icons.color_lens,
              color: Colors.white,
              size: 35.0,
            ),
            Icon(
              Icons.add,
              color: Colors.white,
              size: 35.0,
            ),
            Icon(
              Icons.message,
              color: Colors.white,
              size: 35.0,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
              size: 35.0,
            ),
          ],
        ),
      ),
    );
  }
}