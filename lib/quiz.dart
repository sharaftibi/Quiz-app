import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final myQuestions;
  final int myQuestionIndex;
  final Function myAnswerQuestion;
  Quiz(this.myQuestions, this.myQuestionIndex, this.myAnswerQuestion);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          myQuestions[myQuestionIndex]['questionText'],
        ),
        ...((myQuestions[myQuestionIndex]['answers']
                as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => myAnswerQuestion(answer['score']), answer['text']);
        }).toList())
      ],
    ); //egpdfjimpo
  }
}
