import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

//MyApp is class name which is taking reference from material.dart package(inherintence)
// build is method which builds the whole app this method requires context as argument
//MaterialApp is class
//{'key1':'value',
//'key2':'value'} is map fucntion you can also include list of value like ['value1', 'value2']

var question = [
  {
    'questionText': 'What would you like today?',
    'answer': ['Biryani', 'Fried', 'Swarma', 'Burger']
  },
  {
    'questionText': 'How would you like to have?',
    'answer': ['Full', 'Half', 'by Kilo']
  },
  {
    'questionText': 'What is your favourite meal?',
    'answer': ['Chicken', 'Fish', 'Veg', 'Mix']
  },
  {
    'questionText': 'Your drink Sir/Madam',
    'answer': ['Pepsi', 'Fanta', 'Coco-cola', 'bannaa']
  }
];

// use _ for private property of class and methods
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              //use . for accessing element
              //buidling a custom widget from text to question
              Question(
                question[_questionIndex]['questionText'],
              ),
              //question is list of map of values(answer) -> answer widget (answer.dart)
              //1.adding .map() function and inside the .map( we need funtion here )
              //2.sending argument as answer and use []() for accessing key elements
              //3.converting list as nested list see lecture 47
              ...(question[_questionIndex]['answer'] as List<String>).map((answer){
                return Answer(_answerQuestion,answer);
              }).toList(),
            ],
          )),
    );
  }
}
