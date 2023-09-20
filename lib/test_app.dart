import 'package:flutter/material.dart';
import 'package:test_app/custom_button.dart';
import 'package:test_app/questions_text.dart';
import 'package:test_app/questions.dart';

class TestApp extends StatefulWidget {
  const TestApp({super.key});

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  final questions = [
    quest1,
    quest2,
    quest3,
    quest4,
    quest5,
    quest6,
    quest7,
    quest8,
    quest9,
    quest10
  ];
  List<bool> responses = [];
  int index = 0;

  void incrementIndex(bool response) {
    if (responses.length < 10) {
      final result = response == questions[index].response;
      responses.add(result);
    }
    if (index < 9) {
      index++;
    } else {
      List<bool> trueResponse = [];
      List<bool> falseResponse = [];
      responses.map((e) => e == true ? trueResponse.add(e) : null).toList();
      responses.map((e) => e == false ? falseResponse.add(e) : null).toList();
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: const Color(0xff343434),
          elevation: 8.0,
          title: const Text(
            'Жыйынтыгы:',
            style: TextStyle(color: Colors.white),
          ),
          content: Text(
            'Туура жооп: ${trueResponse.length}, \nТуура эмес жооп: ${falseResponse.length}.',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                'Ok',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(flex: 2),
        QuestionText(text: questions[index].text),
        const Spacer(),
        CustomButton(
          bgColor: const Color(0xff4CB050),
          text: 'Ооба',
          onTap: () {
            incrementIndex(true);
          },
        ),
        const SizedBox(height: 20),
        CustomButton(
          bgColor: const Color(0xffEF443A),
          text: 'Жок',
          onTap: () {
            incrementIndex(false);
          },
        ),
        const Spacer(flex: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: responses
                  .map(
                    (e) => Icon(
                      e ? Icons.check : Icons.close,
                      color: e ? Colors.green : Colors.red,
                    ),
                  )
                  .toList(),
            ),
            IconButton(
              iconSize: 50,
              onPressed: () {
                index = 0;
                responses.clear();
                setState(() {});
              },
              icon: const Icon(
                Icons.replay,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
