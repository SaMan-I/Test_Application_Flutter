class Questions {
  final String text;
  final bool response;

  Questions({
    required this.text,
    required this.response,
  });
}

final quest1 = Questions(
  text: 'Кыргызстанда 7 область барбы?',
  response: true,
);

final quest2 = Questions(
  text: '"Бишкек" Кыргызстандын борборубу?',
  response: true,
);

final quest3 = Questions(
  text: 'Кыргызстандын гербиндеги канаттуу бүркүтбү?',
  response: true,
);

final quest4 = Questions(
  text: '"Сом" Кыргызстандын валютасыбы?',
  response: true,
);

final quest5 = Questions(
  text: 'Кыргызстандын мамлекеттик тили "Орхон" тилиби?',
  response: false,
);

final quest6 = Questions(
  text: 'Кыргызстан 5 мамлекет менен чектешеби?',
  response: false,
);

final quest7 = Questions(
  text: 'Кыргызстандын желегинде сары түс барбы?',
  response: true,
);

final quest8 = Questions(
  text: 'Ысык-Көлдүн ортосунда эмне бар? @?',
  response: false,
);

final quest9 = Questions(
  text: 'Баатыр элден чыгат, алтын Кыргызстандан чыгат?',
  response: false,
);

final quest10 = Questions(
  text: 'Өзүңчө эле акылдуу болуп жооп берип салдың анан.',
  response: true,
);
