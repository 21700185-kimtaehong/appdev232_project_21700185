import 'constant_code.dart';

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

String raceText(int raceType) {
  switch (raceType) {
    case HIGHELF:
      return '하이엘프';
    case WOODELF:
      return '우드엘프';
    case ASMODEUSTIF:
      return '아스모데우스 티플링';
    case MEPHISTOPHELESTIF:
      return '메피스토펠레스 티플링';
    case ZARIELTIF:
      return '자리엘 티플링';
    case SELDARINEDROW:
      return '셀다린 드로우';
    case LOLTHDROW:
      return '롤스 드로우';
    case HUMAN:
      return '인간';
    case GITHYANKI:
      return '기스양키';
    case GOLDDWARF:
      return '골드 드워프';
    case SHIELDDWARF:
      return '쉴드 드워프';
    case DUERGA:
      return '듀에르가';
    case HIGHHALF:
      return '하이 하프엘프';
    case WOODHALF:
      return '우드 하프엘프';
    case DROWHALF:
      return '드로우 하프엘프';
    case LIGHTFOOTHAL:
      return '라이트풋 하플링';
    case STRONGHEARTHAL:
      return '스트롱하트 하플링';
    case FORESTGNOME:
      return '포레스트 노움';
    case DEEPGNOME:
      return '딥 노움';
    case BLACKBORN:
      return '블랙 드래곤본';
    case BLUEBORN:
      return '블루 드래곤본';
    case BRASSBORN:
      return '브레스 드래곤본';
    case BRONZEBORN:
      return '브론즈 드래곤본';
    case COPPERBORN:
      return '코퍼 드래곤본';
    case GOLDBORN:
      return '골드 드래곤본';
    case GREENBORN:
      return '그린 드래곤본';
    case REDBORN:
      return '레드 드래곤본';
    case SILVERBORN:
      return '실버 드래곤본';
    case WHITEBORN:
      return '화이트 드래곤본';
    case HALFORC:
      return '하프 오크';
    default:
      return '';
  }
}
