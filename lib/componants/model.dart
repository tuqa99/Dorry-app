class Question {
  final String text;
  final List<Option> options;
  bool isLocked;

  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option {
  final String text;
  final bool isCorrect;

  const Option({
    required this.text,
    required this.isCorrect,
  });
}

final questions = [
  Question(text: "Look what i..., a new watch.", options: [
    const Option(text: "get", isCorrect: false),
    const Option(text: "got", isCorrect: false),
    const Option(text: "getting", isCorrect: false),
    const Option(text: "\'ve got", isCorrect: true),
  ]),
  Question(text: "We don't need a car, we'll go ..", options: [
    const Option(text: "by foot", isCorrect: false),
    const Option(text: "on foot", isCorrect: true),
    const Option(text: "with foot", isCorrect: false),
    const Option(text: "walk", isCorrect: false),
  ]),
  Question(text: "Britian exports more than....imports.", options: [
    const Option(text: "she", isCorrect: false),
    const Option(text: "he", isCorrect: false),
    const Option(text: "it", isCorrect: true),
    const Option(text: "walk", isCorrect: false),
  ]),
  Question(text: "He considered....himself to the board", options: [
    const Option(text: "them", isCorrect: false),
    const Option(text: "introducing", isCorrect: true),
    const Option(text: "to be introducing", isCorrect: false),
    const Option(text: "I don't know", isCorrect: false),
  ]),
  Question(
      text: "You.... have been here an hour ago. But you didn't show up",
      options: [
        const Option(text: "should", isCorrect: false),
        const Option(text: "could", isCorrect: true),
        const Option(text: "would", isCorrect: false),
        const Option(text: "I dont know", isCorrect: false),
      ]),
];

final level1questions = [
  Question(text: "Where.... your sister", options: [
    const Option(text: "is", isCorrect: true),
    const Option(text: "does", isCorrect: false),
    const Option(text: "has", isCorrect: false),
    const Option(text: "I don't know", isCorrect: false),
  ]),
  Question(text: "I'm excited....my exam", options: [
    const Option(text: "from", isCorrect: false),
    const Option(text: "about", isCorrect: false),
    const Option(text: "for", isCorrect: true),
    const Option(text: "I don't know", isCorrect: false),
  ]),
  Question(text: "They are....to Japan next month", options: [
    const Option(text: "going to fly", isCorrect: false),
    const Option(text: "flying", isCorrect: true),
    const Option(text: "fly", isCorrect: false),
    const Option(text: "I don't know", isCorrect: false),
  ]),
  Question(text: "The train....at seven o'clock", options: [
    const Option(text: "leaving", isCorrect: false),
    const Option(text: "\'s leaving", isCorrect: true),
    const Option(text: "going to leave", isCorrect: false),
    const Option(text: "I don't know", isCorrect: false),
  ]),
  Question(text: "How....is this cap?\'\$5\'", options: [
    const Option(text: "much", isCorrect: true),
    const Option(text: "many", isCorrect: false),
    const Option(text: "a lot of", isCorrect: false),
    const Option(text: "I dont know", isCorrect: false),
  ]),
];

final level2questions = [
  Question(text: "Choose the correct option", options: [
    const Option(
        text: "Where did you have dinner last night?", isCorrect: true),
    const Option(
        text: "Where have you had dinner last night?", isCorrect: false),
    const Option(
        text: "Where do you have dinner last night?", isCorrect: false),
    const Option(text: "I don't know", isCorrect: false),
  ]),
  Question(text: "I was born .....", options: [
    const Option(text: " before 30 years", isCorrect: false),
    const Option(text: "thirty years ago", isCorrect: true),
    const Option(text: "the last thirty years", isCorrect: false),
    const Option(text: "Idon't know", isCorrect: false),
  ]),
  Question(text: "Choose the correct option", options: [
    const Option(
        text: "He looked tired, because he had travelled all day",
        isCorrect: false),
    const Option(
        text: "He looked tired, because he had been travelling all day",
        isCorrect: true),
    const Option(
        text: "He looked tired, because he had travelling all day",
        isCorrect: false),
    const Option(text: "I don't know", isCorrect: false),
  ]),
  Question(text: "A: Do you mind if I open the window? B:...", options: [
    const Option(text: "Yes, that's fantastic", isCorrect: false),
    const Option(text: "Don't be silly", isCorrect: false),
    const Option(text: "No, not at all", isCorrect: true),
    const Option(text: "I don't know", isCorrect: false),
  ]),
  Question(text: "Choose the correct option", options: [
    const Option(text: "It was been very nice this evening", isCorrect: false),
    const Option(text: "It has been very nice this evening", isCorrect: true),
    const Option(text: "It will been very nice this evening", isCorrect: false),
    const Option(text: "I dont know", isCorrect: false),
  ]),
];

final level3questions = [
  Question(text: "All my life...", options: [
    const Option(text: "I loved going to the movies", isCorrect: false),
    const Option(text: "I have loved to go to the movies", isCorrect: false),
    const Option(text: "I've loved going to the movies", isCorrect: true),
    const Option(text: "I don't know", isCorrect: false),
  ]),
  Question(text: "There you are!", options: [
    const Option(text: "I have waited for ages", isCorrect: false),
    const Option(text: "I have been waiting for ages", isCorrect: true),
    const Option(text: "I waited for ages", isCorrect: false),
    const Option(text: "Idon't know", isCorrect: false),
  ]),
  Question(text: " He's had his car...", options: [
    const Option(text: "when he passed his driving test", isCorrect: false),
    const Option(text: " since he passed his driving test", isCorrect: true),
    const Option(text: " as he passed his driving test", isCorrect: false),
    const Option(text: "I don't know", isCorrect: false),
  ]),
  Question(text: "I don't think Tokyo...", options: [
    const Option(text: "is as dangerous like London", isCorrect: false),
    const Option(text: "is so dangerous as London", isCorrect: false),
    const Option(text: "is as dangerous as London", isCorrect: true),
    const Option(text: "I don't know", isCorrect: false),
  ]),
  Question(text: "Choose the correct option", options: [
    const Option(
        text: "Your birthday's next month, isn't it?", isCorrect: true),
    const Option(
        text: "Your birthday will be next month, won't it?", isCorrect: false),
    const Option(
        text: "Your birthday is going to be next month, isn't it?",
        isCorrect: false),
    const Option(text: "I dont know", isCorrect: false),
  ]),
];

final level4questions = [
  Question(text: "What do you think.... ten years from now?", options: [
    const Option(text: "you'll do", isCorrect: false),
    const Option(text: "you are doing", isCorrect: false),
    const Option(text: " you'll be doing", isCorrect: true),
    const Option(text: "I don't know", isCorrect: false),
  ]),
  Question(text: "Choose the correct option", options: [
    const Option(
        text: "That's a small Victorian round wooden table", isCorrect: true),
    const Option(
        text: "That's a Victorian small round wooden table", isCorrect: false),
    const Option(
        text: "That's a Victorian round wooden small table", isCorrect: false),
    const Option(text: "I don't know", isCorrect: false),
  ]),
  Question(text: ".... what do you think?", options: [
    const Option(
        text: "I've just been done at the hairdressers", isCorrect: false),
    const Option(
        text: "I've just cut my hair at the hairdressers", isCorrect: false),
    const Option(text: "I've just been to the hairdressers", isCorrect: true),
    const Option(text: "I don't know", isCorrect: false),
  ]),
  Question(text: "Choose the correct option", options: [
    const Option(
        text: "The children were looking after by my mother", isCorrect: false),
    const Option(
        text: "The children were being looked after by my mother",
        isCorrect: true),
    const Option(
        text: "The children looked after by my mother", isCorrect: false),
    const Option(text: "I don't know", isCorrect: false),
  ]),
  Question(text: "If I had known you were coming...", options: [
    const Option(text: "I have bought a cake", isCorrect: false),
    const Option(text: "I would have bought a cake", isCorrect: true),
    const Option(text: " I will buy a cake", isCorrect: false),
    const Option(text: "I dont know", isCorrect: false),
  ]),
];
