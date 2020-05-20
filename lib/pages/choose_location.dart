import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData(int a, int b) async {
    //simulate network request for a username
    String username = await Future.delayed(Duration(seconds: a), () {
      return ('imnithish');
    });

    //simulate network request for username bio
    String bio = await Future.delayed(Duration(seconds: b), () {
      return ('professional procastinator!');
    });

    print('$username and $bio');
  }

  //stateful widget life cycles
  @override
  void initState() {
    super.initState();
    print('initState fn ran');
    getData(3, 2);
  }

  @override
  Widget build(BuildContext context) {
    print('build fn ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
          child: RaisedButton(
        onPressed: () {
          setState(() {
            setState(() {
              counter += 1;
            });
          });
        },
        child: Text('$counter'),
      )),
    );
  }
}
