class Question {
  final String questionText;
  final List<Answer> answerList;

  Question(this.questionText, this.answerList);
}

class Answer {
  final String answerText;
  final bool inCorrect;

  Answer(this.answerText, this.inCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];

  list.add(Question("Question 1", [
    Answer("Answer 1", false),
    Answer("Answer 2", false),
    Answer("Answer 3", true),
    Answer("Answer 4", false),
  ]));

  list.add(Question("Question 2", [
    Answer("Answer 1", true),
    Answer("Answer 2", false),
    Answer("Answer 3", false),
    Answer("Answer 4", false),
  ]));

  list.add(Question("Question 3", [
    Answer("Answer 1", false),
    Answer("Answer 2", true),
    Answer("Answer 3", false),
    Answer("Answer 4", false),
  ]));

  list.add(Question("Question 4", [
    Answer("Answer 1", false),
    Answer("Answer 2", false),
    Answer("Answer 3", false),
    Answer("Answer 4", true),
  ]));

  list.add(Question("Question 5", [
    Answer("Answer 1", false),
    Answer("Answer 2", false),
    Answer("Answer 3", true),
    Answer("Answer 4", false),
  ]));

  list.add(Question("Question 6", [
    Answer("Answer 1", true),
    Answer("Answer 2", false),
    Answer("Answer 3", false),
    Answer("Answer 4", false),
  ]));

  return list;
}
