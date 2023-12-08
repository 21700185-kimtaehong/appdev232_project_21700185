import 'constant_code.dart';

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
    case ROCKGNOME:
      return '바위 노움';
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

String raceDesc(int raceType) {
  switch (raceType) {
    case HIGHELF:
      return '신비로운 페이와일드의 후예인 하이 엘프는 모든 종류의 마법을 중요히 여기며, 주문학을 배우지 않은 이들도 위브를 다룰 줄 압니다.';
    case WOODELF:
      return '이 엘프들은 페이룬의 숲 속에 은둔해 살아갑니다. 이들이 수십 년간 익힌 궁술과 위장술은 초인적인 기민성으로 더욱 강화되었습니다.';
    case ASMODEUSTIF:
      return '지옥의 가장 깊은 층, 네수스에 종속된 이 티플링들은 아크데블 아스모데우스의 지옥 혈통으로서 불과 어둠을 다루는 능력을 물려받았습니다.';
    case MEPHISTOPHELESTIF:
      return '아크데블 메피스토펠레스의 후손인 이 티플링들은 비전 마법에 대해 특별한 친화성을 타고났습니다.';
    case ZARIELTIF:
      return '자리엘의 혈통인 이 티플링들은 무력을 타고나며, 타오르는 불꽃을 쏟아내 적을 징벌할 수 있습니다.';
    case SELDARINEDROW:
      return '드로우는 아주 먼 옛날 엘프 신 코렐론 라레시안과 롤쓰 사이에서 벌어진 분열의 결과입니다. 롤쓰의 배반은 드로우를 언더다크로 몰아내었으며 그곳에서 드로우는 여러 세력으로 나뉘어 전쟁을 벌였습니다. 셀다린 드로우는 페이룬 전역에서 동맹을 구하여 무슨 수를 써서라도 롤쓰와의 분쟁을, 그리고 다른 드로우들과의 분쟁을 끝내고자 합니다.';
    case LOLTHDROW:
      return '멘조베란잔의 롤쓰 교단에서 길러진 이 드로우들은 타락하고 무자비한 여신의 미덕을 찬양합니다. 롤쓰는 그녀의 추종자들에게 선명한 붉은 빛의 눈을 주어 온 언더다크가 드로우를 보는 것만으로도 두려움에 떨게 만듭니다.';
    case HUMAN:
      return '페이룬에서 가장 흔한 종인 인간은 끈기, 창의력, 그리고 끝없는 성장 가능성을 지닌 것으로 유명합니다.';
    case GITHYANKI:
      return '마인드 플레이어의 노예 시절 무자비한 성정이 형성된 기스양키는, 레드 드래곤에 올라 타 아스트랄계를 누비고 다니며, 일리시드의 그 어떤 위협도 놓치지 않고 은검과 사이오닉 능력으로 맞서 싸웁니다.';
    case GOLDDWARF:
      return '이 드워프들은 자신감 있고 직감이 예리한 것으로 유명합니다. 이들의 지하 왕국은 가족, 의례, 그리고 우수한 장인 정신을 중시하는 문화를 지녔습니다.';
    case SHIELDDWARF:
      return '고블린과 오크와 치른 고대 전쟁에서 막대한 손실을 입은 이 드워프들은 냉소적인 사고방식을 갖게 되었지만, 조상의 고향을 되찾기 위해서라면 그 무엇이든 감수할 이들입니다.';
    case DUERGA:
      return '한때 무시무시한 마인드 플레이어의 노예 신세였던 듀에르가는 무자비한 실용주의로 자유에 적응했습니다. 냉혹한 품행과 타고난 은밀성으로 언더다크 전역에서 명성이 자자합니다.';
    case HIGHHALF:
      return '이 하프 엘프들의 혈통에는 페이와일드의 흔적이 남아 있어, 따로 훈련을 하지 않은 이조차도 약간의 와일드 매직을 부릴 줄 압니다.';
    case WOODHALF:
      return '자신들의 근원인 우드 엘프들처럼, 이 하프 엘프들도 재빠른 발놀림과 뛰어난 은신 능력을 지니고 있습니다. 다만 이들 중 상당수는 페이룬의 숲 속 은둔 생활 대신 대륙을 탐험하는 삶을 살죠.';
    case DROWHALF:
      return '대부분의 하프 드로우는 셀다린 드로우와 지상인 사이에서 태어납니다. 이들은 어느 정도 마법적인 재능을 타고나며, 언더다크에서 자라는 경우는 별로 없습니다.';
    case LIGHTFOOTHAL:
      return '덩치는 작아도 재주 있는 하플링은 아늑한 집에 머무르는 걸 선호하지만, 타고난 행운과 민첩성으로 꽤 훌륭한 모험가가 되기도 합니다.';
    case STRONGHEARTHAL:
      return '전설에 따르면 스트롱하트들의 강인함은 드워프의 핏줄에서 비롯된 것이라고 합니다. 독에 대한 내성과 넘쳐나는 인내력을 지닌 이 하플링들은 쉽게 꺾이지 않습니다.';
    case ROCKGNOME:
      return '작고 영리하며 기운 넘치는 노움들은 긴 수명을 활용해 페이룬의 가장 밝은 구석과 가장 어두운 심연 곳곳을 탐구하며 지냅니다.';
    case FORESTGNOME:
      return '사촌들보다도 키 작고, 두 배는 더 은둔적인 숲 노움들은 페이룬에서 모습을 보기가 힘듭니다. 이들은 머나먼 목가적인 숲 속에서 지내며 마법과 손재주를 갈고닦습니다.';
    case DEEPGNOME:
      return '지상 쪽 사촌들보다 더 경계심이 강한 딥 노움은 암흑시야와 숙련된 은신술로 언더다크에서 살아남습니다.';
    case BLACKBORN:
    case BLUEBORN:
    case BRASSBORN:
    case BRONZEBORN:
    case COPPERBORN:
    case GOLDBORN:
    case GREENBORN:
    case REDBORN:
    case SILVERBORN:
    case WHITEBORN:
      return '일족과 기량을 최우선시하는 긍지 높은 종족입니다. 한때 드래곤의 노예였던 이들은 신에게조차 종속되려 하지 않는, 자급자족적 삶을 추구합니다.';
    case HALFORC:
      return '희로애락이 격정적인 하프 오크는 심사숙고하기보단 행동부터 하는 경향이 있습니다. 몸을 불사르는 분노에 휘둘려 싸움에 뛰어들거나, 심장에 차오르는 사랑에 이끌려 굉장한 호의를 베푸는 식으로 말이죠.';
    default:
      return '';
  }
}

String raceMovementText(int movementType) {
  switch (movementType) {
    case 1:
      return '느림 (7.5m)';
    case 2:
      return '보통 (9.0m)';
    case 3:
      return '빠름 (10.5m)';

    default:
      return '';
  }
}
