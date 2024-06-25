import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setState_provider/main.dart';
import 'package:setState_provider/view/lop_con_provider.dart';

class LopChaProvider extends StatelessWidget {
  const LopChaProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lớp cha '),
      ),
      body: Center(
        child: Column(
          children: [
            Text(context.watch<CounterProvider>().counter.toString()),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LopConProvider(),
                  ),
                );
              },
              child: Text('đến lớp con'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterProvider>().incrementCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
