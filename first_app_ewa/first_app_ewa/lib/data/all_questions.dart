List historyQuestions = [
  {'quesName': 'History quiz'},
  {'backgroundImage': 'assets/images/background_history.jpg'},
  {
    'ques': 'Who was the first President of the United States?',
    'answers': [
      {'numbering': 'A.', 'option': 'George Washington', 'isCorrect': true},
      {'numbering': 'B.', 'option': 'Thomas Jefferson', 'isCorrect': false},
      {'numbering': 'C.', 'option': 'Abraham Lincoln', 'isCorrect': false},
      {'numbering': 'D.', 'option': 'John Adams', 'isCorrect': false},
    ],
  },
  {
    'ques': 'When did World War II end?',
    'answers': [
      {'numbering': 'A.', 'option': '1945', 'isCorrect': true},
      {'numbering': 'B.', 'option': '1939', 'isCorrect': false},
      {'numbering': 'C.', 'option': '1941', 'isCorrect': false},
      {'numbering': 'D.', 'option': '1944', 'isCorrect': false},
    ],
  },
  {
    'ques': 'Which ancient civilization built the pyramids?',
    'answers': [
      {'numbering': 'A.', 'option': 'Egyptians', 'isCorrect': true},
      {'numbering': 'B.', 'option': 'Greeks', 'isCorrect': false},
      {'numbering': 'C.', 'option': 'Romans', 'isCorrect': false},
      {'numbering': 'D.', 'option': 'Mayans', 'isCorrect': false},
    ],
  },
  {
    'ques': 'Who wrote "The Communist Manifesto"?',
    'answers': [
      {
        'numbering': 'A.',
        'option': 'Karl Marx and Friedrich Engels',
        'isCorrect': true
      },
      {'numbering': 'B.', 'option': 'Vladimir Lenin', 'isCorrect': false},
      {'numbering': 'C.', 'option': 'Joseph Stalin', 'isCorrect': false},
      {'numbering': 'D.', 'option': 'Leon Trotsky', 'isCorrect': false},
    ],
  },
];

List sportQuestions = [
  {'quesName': 'Sport quiz'},

  {'backgroundImage': 'assets/images/background_sport.jpg'},
  //3 question
  {
    'ques': 'What’s the diameter of a basketball hoop in inches?',
    'answers': [
      {'numbering': 'A.', 'option': '18 inches', 'isCorrect': true},
      {'numbering': 'B.', 'option': '12 inches', 'isCorrect': false},
      {'numbering': 'C.', 'option': '20 inches', 'isCorrect': false},
      {'numbering': 'D.', 'option': '11 inches', 'isCorrect': false}
    ]
  }, //18
  {
    'ques': 'What sport is best known as the ‘king of sports’?',
    'answers': [
      {'numbering': 'A.', 'option': 'Football', 'isCorrect': false},
      {'numbering': 'B.', 'option': 'Soccer', 'isCorrect': true},
      {'numbering': 'C.', 'option': 'Cricket', 'isCorrect': false},
      {'numbering': 'D.', 'option': 'Golf', 'isCorrect': false},
    ]
  }, //Soccer
  {
    'ques': 'The Olympics are held every how many years?',
    'answers': [
      {'numbering': 'A.', 'option': '2 years', 'isCorrect': false},
      {'numbering': 'B.', 'option': '5 years', 'isCorrect': false},
      {'numbering': 'C.', 'option': '3 years', 'isCorrect': false},
      {'numbering': 'D.', 'option': '4 years', 'isCorrect': true},
    ]
  } //4
];

List programmingQuestions = [
  {'quesName': 'Programming quiz'},

  {'backgroundImage': 'assets/images/background_programming.jpg'},
  {
    'ques': 'Which of the following is not a valid C variable name?',
    'answers': [
      {'numbering': 'A.', 'option': 'int number;', 'isCorrect': false},
      {'numbering': 'B.', 'option': 'float rate;', 'isCorrect': false},
      {'numbering': 'C.', 'option': 'int variable_count;', 'isCorrect': false},
      {'numbering': 'D.', 'option': 'int \$main;', 'isCorrect': true},
    ] //int \$main;
  },
  {
    'ques': 'What is Flutter?',
    'answers': [
      {'numbering': 'A.', 'option': 'It is a DBMS toolkit', 'isCorrect': false},
      {
        'numbering': 'B.',
        'option': 'It is an Open-source UI toolkit',
        'isCorrect': true
      },
      {
        'numbering': 'C.',
        'option': 'It is an Open-source web development framework',
        'isCorrect': false
      },
      {'numbering': 'D.', 'option': 'None of the above', 'isCorrect': false},
    ] //It is an Open-source UI toolkit
  },
  {
    'ques':
        'Which of the following is the correct syntax for defining a variable in Dart?',
    'answers': [
      {'numbering': 'A.', 'option': 'var x = 5', 'isCorrect': true},
      {'numbering': 'B.', 'option': 'x = 5;', 'isCorrect': false},
      {'numbering': 'C.', 'option': 'int x = 5;', 'isCorrect': false},
      {'numbering': 'D.', 'option': 'variable x = 5;', 'isCorrect': false},
    ]
  }, //var x = 5;
  {
    'ques': 'What is the purpose of the “final” keyword in Dart?',
    'answers': [
      {
        'numbering': 'A.',
        'option': 'To define a constant variable',
        'isCorrect': false
      },
      {
        'numbering': 'B.',
        'option':
            'To define a variable that cannot be changed after its initial assignment',
        'isCorrect': true
      },
      {
        'numbering': 'C.',
        'option':
            'To define a variable that can only be accessed within its scope',
        'isCorrect': false
      },
      {
        'numbering': 'D.',
        'option': 'To define a variable that can be accessed from any scope',
        'isCorrect': false
      },
    ]
  }, //To define a variable that cannot be changed after its initial assignment
  {
    'ques':
        'Which of the following is the correct syntax for a for loop in Dart?',
    'answers': [
      {
        'numbering': 'A.',
        'option': 'for (var i = 0; i < 10; i++) {}',
        'isCorrect': true
      },
      {
        'numbering': 'B.',
        'option': 'for (i = 0; i < 10; i++) {}',
        'isCorrect': false
      },
      {
        'numbering': 'C.',
        'option': 'for (var i; i < 10; i++) {}',
        'isCorrect': false
      },
      {'numbering': 'D.', 'option': 'for (i = 0; i < 10)', 'isCorrect': false},
    ] //for (var i = 0; i < 10; i++) {}
  }
];//5 question