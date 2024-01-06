import 'package:flutter/material.dart';
import 'package:lap_08/pages/SecondPage.dart';

class fristpage extends StatefulWidget {
  const fristpage({super.key});

  @override
  State<fristpage> createState() => _fristpageState();
}

class _fristpageState extends State<fristpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lap_08  Navigation"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
            Text("fristpage"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Secondpage(),
                    ));
              },
              child: const Text("go to Next page 2"),
            )
          ],
        ),
      ),
    );
  }
}
