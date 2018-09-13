import 'package:flutter/material.dart';
import 'login.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<Map> _choiceData = [
    {
      "question": "好きな動物は何ですか",
      "answer1": "犬",
      "answer1count": 10,
      "answer1percent1": 33,
      "answer2": "猫",
      "answercount2": 20,
      "answer1percent2": 66,
      "total": 30,
    },
  ];

  void _gotologinpage() {
    // print("jhk");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Loginpage(title: 'Flutter')),
    );
  }

  Widget _buildListItem(context, choiceItem) {
    print(choiceItem);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(choiceItem["question"]),
          Container(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                child: Text(choiceItem["answer1"]),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(choiceItem["answer2"]),
              ),
            ],
          ),
          Container(
            color: Colors.blue,
            child: Text(choiceItem["answer1count"].toString()),
            width: (MediaQuery.of(context).size.width - 16.0) * choiceItem["answer1percent1"]/100,
          ),
          Container(
            color: Colors.amber,
            child: Text(
              choiceItem["answercount2"].toString()),
            width: (MediaQuery.of(context).size.width - 16.0) * choiceItem["answer1percent2"]/100,
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
          children: List<Widget>.generate(_choiceData.length, (index) {
        return _buildListItem(context, _choiceData[index]);
      })),
      floatingActionButton: FloatingActionButton(
        onPressed: _gotologinpage,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
