import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setState_provider/view/lop_cha_provider.dart';
import 'package:setState_provider/view/lop_cha_setState.dart';

void main() {
  runApp(
   ChangeNotifierProvider.value(
  value: CounterProvider(),
  child: MyApp(),
)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LopChaProvider(),
    );
  }
}

class CounterProvider extends ChangeNotifier {
  int counter = 1;
  void incrementCounter() {
    counter++;
    notifyListeners();
  }
}
