import 'package:flutter/material.dart';
import 'package:lap_08/pages/fristpage.dart';

class thirdpage extends StatefulWidget {
  const thirdpage({super.key, required this.valuefrom2page});
  final String valuefrom2page;
  @override
  State<thirdpage> createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {
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
            const Text("This is thirdpage"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  // MaterialPageRoute(
                  //   builder: (context) => fristpage(),
                  // )
                );
              },
              child: const Text("go to back page 2"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => fristpage(),
                    ));
              },
              child: const Text("back to page one"),
            ),
            Text(widget.valuefrom2page)
          ],
        ),
      ),
    );
  }
}
