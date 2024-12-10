import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:mobxx/counter.dart';
import 'package:flutter_mobx/flutter_mobx.dart';


class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  final Counter counter = Counter();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.refresh),onPressed: (){
            counter.reset();
          },)
        ],
        title: Text(
          'Mobx',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Center(
          child: Observer(
            builder:(context)=> Text(
                    counter.count.toString(),
                    style: TextStyle(fontSize: 300.0),
                  ),
          )
          ),
      floatingActionButton: FloatingActionButton(
          tooltip: 'Increament',
          child: Icon(Icons.add),
          onPressed: ()=>counter.increment(),
          ),
    );
  }
}
