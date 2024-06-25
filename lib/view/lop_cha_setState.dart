import 'package:flutter/material.dart';
import 'package:setState_provider/view/lop_con_setState.dart';

class LopChasetState extends StatefulWidget {
  const LopChasetState({super.key});

  @override
  State<LopChasetState> createState() => _LopChasetStateState();
}

class _LopChasetStateState extends State<LopChasetState> {
  int counterCha = 0;
  void incrementCounter() {
    setState(() {
      counterCha++;
      print('Lớp cha $counterCha');
    });
  }

  // updateCounter
  void updateCounter(int counterCon) {
    setState(() {
      counterCha += counterCon;
      print('Lớp cha update $counterCha');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lớp cha '),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Đây là lớp cha $counterCha'),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LopConsetState(
                            onIncrement: updateCounter,
                          )),
                );
              },
              child: const Text('Đến lớp con'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
