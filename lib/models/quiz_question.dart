class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> get shuffledAnswers {
    final copyList = List.of(answers);
    copyList.shuffle();
    return copyList;
  }
}
