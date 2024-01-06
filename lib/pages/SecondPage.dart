import 'package:flutter/material.dart';
import 'package:lap_08/pages/fristpage.dart';
import 'package:lap_08/pages/thirdpage.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lap_08  Navigation"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is secondpage"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  // MaterialPageRoute(
                  //   builder: (context) => fristpage(),
                  // )
                );
              },
              child: const Text("go to back page 1"),
            ),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(labelText: "ชื่อ-นามสกุล"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          thirdpage(valuefrom2page: _controller.text),
                    ));
              },
              child: const Text("go to back page 1"),
            ),
          ],
        ),
      ),
    );
  }
}
