List<String> profNames = [
  "운동", //0
  "곡예", //1
  "손재주", //2
  "은신", //3
  "비전", //4
  "역사", //5
  "조사", //6
  "자연", //7
  "종교", //8
  "동물조련", //9
  "통찰", //10
  "의학", //11
  "지각", //12
  "생존", //13
  "공연", //14
  "기만", //15
  "위협", //16
  "설득", //17
  "모든 기술", //18
];

List<String> abilityNames = ['근력', '민첩', '건강', '지능', '지혜', '매력'];

List<String> classNames = [
  '바드',
  '바바리안',
  '클레릭',
  '드루이드',
  '파이터',
  '몽크',
  '팔라딘',
  '레인저',
  '로그',
  '소서러',
  '워락',
  '위저드'
];

String armorProfText(List<bool> characterArmorState) {
  if (characterArmorState[3]) {
    return '중갑, 평갑, 경갑';
  } else if (characterArmorState[2]) {
    return '평갑, 경갑';
  } else if (characterArmorState[1]) {
    return '경갑';
  } else {
    return '없음';
  }
}

List<String> armorNames = ['없음', '경갑', '평갑', '중갑'];
