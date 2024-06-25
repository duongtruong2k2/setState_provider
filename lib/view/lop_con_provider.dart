import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setState_provider/main.dart';

class LopConProvider extends StatelessWidget {
  const LopConProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lớp con '),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              context.watch<CounterProvider>().counter.toString(),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('quay lại lớp cha'),
            ),
          ],
        ),
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterProvider>().incrementCounter();
        },
      
        child: Icon(Icons.add),
      )
    );
  }
}
