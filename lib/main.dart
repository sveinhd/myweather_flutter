import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Weather',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: const Text('My Weather'),
          ),
          body: Center(
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text('Bergen',
                            style: new TextStyle(color: Colors.white)),
                        Text('Sunny',
                            style: new TextStyle(
                                color: Colors.white, fontSize: 32.0)),
                        Text('12°C', style: new TextStyle(color: Colors.white)),
                        Image.network(
                            'https://openweathermap.org/img/w/01d.png'),
                        Text('Jun 28, 2018',
                            style: new TextStyle(color: Colors.white)),
                        Text('18:30',
                            style: new TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: new Icon(Icons.refresh),
                      tooltip: 'Refresh',
                      onPressed: () => null,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200.0,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('New York',
                                      style:
                                          new TextStyle(color: Colors.black)),
                                  Text('Rain',
                                      style: new TextStyle(
                                          color: Colors.black, fontSize: 24.0)),
                                  Text('72°F',
                                      style:
                                          new TextStyle(color: Colors.black)),
                                  Image.network(
                                      'https://openweathermap.org/img/w/01d.png'),
                                  Text('Jun 28, 2018',
                                      style:
                                          new TextStyle(color: Colors.black)),
                                  Text('18:30',
                                      style:
                                          new TextStyle(color: Colors.black)),
                                ],
                              ),
                            ),
                          )),
                ),
              ),
            )
          ]))),
    );
  }
}
