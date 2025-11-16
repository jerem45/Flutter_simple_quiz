class QuestionModel {
  const QuestionModel(this.text, this.answers);
  final String text;
  final List<String> answers;

  // crée une copy de la liste, ne jamais modifier la liste orifginal
  List<String> get shuffledAnswer {
    final copyList = List.of(answers);
    copyList.shuffle();
    return copyList;
  }
}
