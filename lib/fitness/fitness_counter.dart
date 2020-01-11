import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usarak_information/fitness/counter_bloc.dart';
import 'package:usarak_information/fitness/counter_event.dart';

void main() => runApp(FitnessCounter());

class FitnessCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Fitness Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _bloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: StreamBuilder(
          stream: _bloc.counter,
          initialData: 0,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            return Container(
              color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Number of repetitions done:',
                    textScaleFactor: 2.0,
                  ),
                  Text(
                    '${snapshot.data}',
                    style: Theme.of(context).textTheme.display1,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FloatingActionButton(
                          onPressed: () =>
                              _bloc.counterEventSink.add(DecementEvent()),
                          tooltip: 'Decrement',
                          child: Icon(Icons.remove),
                        ),
                        FloatingActionButton(
                          onPressed: () =>
                              _bloc.counterEventSink.add(IncrementEvent()),
                          tooltip: 'Increment',
                          child: Icon(Icons.add),
                        ),
                      ]),
                  Text(
                    'Number of set done:',
                    textScaleFactor: 2.0,
                  ),
                  Text(
                    '${snapshot.data}',
                    style: Theme.of(context).textTheme.display1,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FloatingActionButton(
                          onPressed: () =>
                              _bloc.counterEventSink.add(DecementEvent()),
                          tooltip: 'Decrement',
                          child: Icon(Icons.remove),
                        ),
                        FloatingActionButton(
                          onPressed: () =>
                              _bloc.counterEventSink.add(IncrementEvent()),
                          tooltip: 'Increment',
                          child: Icon(Icons.add),
                        ),
                      ]),
                  Text(
                    'Breaks taken:',
                    textScaleFactor: 2.0,
                  ),
                  Text(
                    '${snapshot.data}',
                    style: Theme.of(context).textTheme.display1,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FloatingActionButton(
                          onPressed: () =>
                              _bloc.counterEventSink.add(DecementEvent()),
                          tooltip: 'Decrement',
                          child: Icon(Icons.remove),
                        ),
                        FloatingActionButton(
                          onPressed: () =>
                              _bloc.counterEventSink.add(IncrementEvent()),
                          tooltip: 'Increment',
                          child: Icon(Icons.add),
                        ),
                      ]),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.dispose();
  }
}
