import 'package:flutter/material.dart';

class LopConsetState extends StatefulWidget {
  const LopConsetState({super.key,  required this.onIncrement});
  final Function(int) onIncrement;
  @override
  State<LopConsetState> createState() => _LopConsetStateState();
}

class _LopConsetStateState extends State<LopConsetState> {
  int counterCon = 0;
  void incrementCounter() {
    setState(() {
      counterCon++;
      widget.onIncrement(counterCon);
      print('Lớp con');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Lớp con $counterCon'),
      ),
      body: Center(
        child: Column(
          children: [
             Text('Đây là lớp con $counterCon'),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text('Quay lại lớp cha'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
