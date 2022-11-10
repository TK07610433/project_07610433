import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'calculate.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '07610433',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: FirstRoute(),
    );
  }
}

class FirstRoute extends StatelessWidget {
  FirstRoute({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backg.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(),
              child: Container(
                color: Colors.red,
                padding: EdgeInsets.all(80),
                child: Text(
                  'Which Is Worth 𓍝',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Open Sans',
                    fontSize: 75,
                    shadows: [
                      Shadow(offset: Offset(-1.5, -1.5), color: Colors.black),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    child: const Text(
                      'เข้าสู่โปรแกรมคำนวณ',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                      // Navigate to second route when tapped.
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    child: const Text('เกี่ยวกับ',
                        style: TextStyle(fontSize: 25.0)),
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Which Is Worth'),
                            content: Text(
                                'เปรียบเทียบความคุ้มค่าของสินค้าชนิดเดียวกันในขนาดหรือราคาที่ต่างกัน'
                                ' เช่นต้องการดูว่าแชมพูชนิดเดียวกัน เมื่อซื้อขวดใหญ่เทียบกับราคาแล้วจะคุ้มค่ากว่าขวดเล็กหรือไม่ และคุ้มค่ากี่ %'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('ตกลง'),
                              ),
                            ],
                          );
                        },
                      );
                      // Navigate to second route when tapped.
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
