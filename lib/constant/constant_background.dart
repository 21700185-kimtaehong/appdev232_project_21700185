import 'constant_code.dart';

List<String> backgroundDesc = [
  '평생을 신전에서 봉사하며 신성한 의식을 배우고, 숭배하는 신에게 제물을 바치며 살았습니다. 신을 섬기고 그들의 신성한 위업을 발견하면 위대한 운명이 기다리고 있을 겁니다.',
  '허풍으로 잇속을 챙기는 속임수의 대가입니다. 진실을 왜곡하고 서로를 이간질하다 보면 앞으로 크게 성공할 수 있을 것입니다.',
  '법을 어기고 불법적인 인맥을 활용해 생존한 전력이 있습니다. 범죄조직에서 이익을 추구하다 보면 앞으로 더 큰 기회가 찾아올 것입니다.',
  '신분을 막론하고 관객의 마음을 사로잡기 위해 살아갑니다. 예술을 보존하고 불우하고 핍박받는 이들에게 기쁨을 주면 매력이 더욱 빛을 발할 것입니다.',
  '폭군과 괴물에 맞서 힘없는 자들을 지키는 민중의 용사입니다. 절체절명의 위기에 처한 죄 없는 이들을 구하면 명성이 높아질 것입니다.',
  '특정 공예 기술을 습득하면 상인 길드에 가입해 길드원으로서 특권과 보호를 받으며 공예에 참여할 수 있습니다. 희귀한 공예품을 찾거나 수리하면 새로운 영감을 얻을 수 있습니다.',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
];

String backgroundText(int backgroundType) {
  switch (backgroundType) {
    case ACOLYTE:
      return '복사';
    case CHARLATAN:
      return '사기꾼';
    case CRIMINAL:
      return '범죄자';
    case ENTERTAINER:
      return '연예인';
    case FOLKHERO:
      return '민중 영웅';
    case GUILDARTISAN:
      return '길드장인';
    case NOBLE:
      return '귀족';
    case OUTLANDER:
      return '이방인';
    case SAGE:
      return '학자';
    case SOLDIER:
      return '군인';
    case URCHIN:
      return '부랑아';
    case HAUNTED:
      return '사로잡힌 자';
    default:
      return '';
  }
}

List<String> backgroundSkillText = [
  '통찰, 종교',
  '기만, 손재주',
  '기만, 은신',
  '곡예, 공연',
  '동물 조련, 생존',
  '통찰, 설득',
  '역사, 설득',
  '운동, 생존',
  '비전, 역사',
  '운동, 협박',
  '손재주, 은신'
];
