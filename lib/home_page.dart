import 'package:flutter/material.dart';
import 'package:quizapp/main.dart';
import 'package:quizapp/quiz_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> nambers = [1, 2];

  List<Widget> icons = [
    Icon(
      Icons.check,
      color: Colors.blue,
      size: 50,
    ),
    Icon(
      Icons.cancel_outlined,
      color: Colors.red,
      size: 50,
    )
  ];
  List<QuizModel> qyestionsgoop = [
    QuizModel(qyestions: 'Kyrgyzstanda 7 oblast barby ?', goop: true),
    QuizModel(qyestions: 'Kyrgyzstanda ocean barby ?', goop: false),
    QuizModel(qyestions: 'Kyrgyzstanda metro barby ?', goop: false),
    QuizModel(qyestions: 'Kyrgyzstanda toolor barby?', goop: true),
  ];
  void userChoice(bool userdingoop) {
    final bizdinGoop = qyestionsgoop;
    if (bizdinGoop == userdingoop) {
      icons.add(
        Icon(
          Icons.check,
          color: Colors.blue,
          size: 50,
        ),
      );
    } else if (bizdinGoop == userdingoop) {
      icons.add(
        Icon(
          Icons.cancel_outlined,
          color: Colors.red,
          size: 50,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(221, 43, 43, 43),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: const Text(
            'Тапшырма 7',
            style: TextStyle(fontSize: 23, color: Colors.black),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            qyestionsgoop[1].qyestions!,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'TRUE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'FALSE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Row(children: icons),
        ],
      ),
    );
  }
}
