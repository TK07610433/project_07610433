import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_07610433/main.dart';
import 'calculate.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _pricea = TextEditingController();
  final _sizea = TextEditingController();
  final _priceb = TextEditingController();
  final _sizeb = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black87),
          image: DecorationImage(
            image: AssetImage('assets/images/backg2.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Which Is Worth',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontFamily: 'Open Sans',
                fontSize: 45,
                shadows: [
                  Shadow(offset: Offset(-1.5, -1.5), color: Colors.black),
                ],
              ),
            ),
            Text(
              'เปรียบเทียบความคุ้มค่าของสินค้า',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Open Sans',
                  fontSize: 45,
                  shadows: [
                    Shadow(offset: Offset(-1.5, -1.5), color: Colors.black),
                  ]),
            ),
            Text('  ',
                style: TextStyle(
                    fontSize: 34.0,
                    color: Colors.pink.shade600,
                    fontWeight: FontWeight.bold)),
            Text(
              'เปรียบเทียบความคุ้มค่าของสินค้าชนิดเดียวกันในขนาดและราคาที่ต่างกัน',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.yellow[500],
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Open Sans',
                  fontSize: 33,
                  shadows: [
                    Shadow(offset: Offset(-1.5, -1.5), color: Colors.black),
                  ]),
            ),
            Text('  ',
                style: TextStyle(
                    fontSize: 36.0,
                    color: Colors.pink.shade600,
                    fontWeight: FontWeight.bold)),
            Row(
              children: <Widget>[
                Text('  ',
                    style: TextStyle(
                        fontSize: 36.0,
                        color: Colors.pink.shade600,
                        fontWeight: FontWeight.bold)),
                const Text('สินค้า A',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      shadows: [
                        Shadow(offset: Offset(-1.5, -1.5), color: Colors.white),
                      ],
                    )),
                Text('  ',
                    style: TextStyle(
                        fontSize: 36.0,
                        color: Colors.pink.shade600,
                        fontWeight: FontWeight.bold)),
                Expanded(
                    child: TextField(
                  textAlign: TextAlign.center,
                  controller: _sizea,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(40.0),
                    filled: true,
                    fillColor: Colors.white.withOpacity(1),
                    border: OutlineInputBorder(),
                    hintText: 'โปรดระบุขนาดสินค้า A',
                  ),
                )),
                Container(
                  color: Colors.white.withOpacity(0.0),
                  height: 100,
                  width: 10,
                ),
                Expanded(
                    child: TextField(
                  textAlign: TextAlign.center,
                  controller: _pricea,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(40.0),
                    filled: true,
                    fillColor: Colors.white.withOpacity(1),
                    border: OutlineInputBorder(),
                    hintText: 'โปรดระบุราคาสินค้า A',
                  ),
                )),
                Text('  ',
                    style: TextStyle(
                        fontSize: 36.0,
                        color: Colors.pink.shade600,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Row(
              children: <Widget>[
                Text('  ',
                    style: TextStyle(
                        fontSize: 36.0,
                        color: Colors.pink.shade600,
                        fontWeight: FontWeight.bold)),
                Text('สินค้า B',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      shadows: [
                        Shadow(offset: Offset(-1.5, -1.5), color: Colors.white),
                      ],
                    )),
                Text('  ',
                    style: TextStyle(
                        fontSize: 36.0,
                        color: Colors.pink.shade600,
                        fontWeight: FontWeight.bold)),
                Expanded(
                    child: TextField(
                  textAlign: TextAlign.center,
                  controller: _sizeb,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(40.0),
                    filled: true,
                    fillColor: Colors.white.withOpacity(1),
                    border: OutlineInputBorder(),
                    hintText: 'โปรดระบุขนาดสินค้า B',
                  ),
                )),
                Container(
                  color: Colors.white.withOpacity(0.0),
                  height: 100,
                  width: 10,
                ),
                Expanded(
                    child: TextField(
                  textAlign: TextAlign.center,
                  controller: _priceb,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(40.0),
                    filled: true,
                    fillColor: Colors.white.withOpacity(1),
                    border: OutlineInputBorder(),
                    hintText: 'โปรดระบุราคาสินค้า B',
                  ),
                )),
                Text('  ',
                    style: TextStyle(
                        fontSize: 36.0,
                        color: Colors.pink.shade600,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Text('  ',
                style: TextStyle(
                    fontSize: 36.0,
                    color: Colors.pink.shade600,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                child: Text('คำนวณความคุ้มค่า'),
                onPressed: () {
                  var pricea = _pricea.text;
                  var priceb = _priceb.text;
                  var sizea = _sizea.text;
                  var sizeb = _sizeb.text;
                  var text = cal(pricea, sizea, priceb, sizeb);
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('ผลลัพธ์'),
                        content: Text(text),
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
                },
              ),
            ),
            ElevatedButton(
              child: const Text('กลับสู่หน้าหลัก'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstRoute()),
                );
                // Navigate to second route when tapped.
              },
            ),
          ],
        ),
      ),
    );
  }
}
