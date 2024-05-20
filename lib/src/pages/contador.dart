import 'package:flutter/material.dart';
class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _count=25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child:  Text("Contador: $_count", style: const TextStyle(
          fontSize: 30,
        ),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          
          setState(() {
            _count = _count + 1;
          });
        },	
        child: const Icon(Icons.add),
      )
    );
  }
}