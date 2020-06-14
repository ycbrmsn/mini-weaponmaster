-- 常量
MyConstant = {
  PROJECTILE_HURT = 0, -- 通用投掷物固定伤害

  -- 道具ID
  ITEM = {
    COIN_ID = 4108, -- 铜板ID
    SILVER_ID = 4136, -- 银子ID
    GREEN_BOX_ID = 4140, -- 绿品武器匣
    BLUE_BOX_ID = 4141, -- 蓝品武器匣
    PURPLE_BOX_ID = 4139 -- 紫品武器匣
  },
  WEAPON = {
    ARROW_ID = 4134, -- 箭矢ID
    COMMON_PROJECTILE_ID = 4138 -- 通用投掷物ID
  },
  BODY_EFFECT = {
    SMOG1 = 1226, -- 一团小烟雾随即消失

    BOOM1 = 1186, -- 黄色的小爆炸脚下一个圈

    LIGHT3 = 1008, -- 一颗心加血特效
    LIGHT4 = 1023, -- 三格大小四散旋转的黄光
    LIGHT9 = 1150, -- 一堆心加血特效
    LIGHT10 = 1185, -- 两格大小的两个气旋不停旋转
    LIGHT19 = 1223, -- 一格大小的淡蓝色方框气流圈住流动
    LIGHT22 = 1227, -- 一圈紫色光幕围住并盘旋着锁链
    LIGHT24 = 1231, -- 黄色的无敌盾保护圈
    LIGHT26 = 1235, -- 红十字加血特效
    LIGHT47 = 1337, -- 接近一格大小的一团蓝色光雾周围一些小蓝点

    PARTICLE24 = 1341 -- 两格大小的一个黄色小光源
  },
  SOUND_EFFECT = {
    SKILL9 = 10086 -- 一阵风的声音
  }
}

MyWeaponAttr = {
  -- 剑
  woodSword = { -- 木剑
    levelIds = { -4112, 4112 },
    attack = 10,
    defense = 5,
    addAttPerLevel = 1,
    addDefPerLevel = 2
  },
  bronzeSword = { -- 青铜剑
    levelIds = { -4116, 4116 },
    attack = 22,
    defense = 5,
    addAttPerLevel = 3,
    addDefPerLevel = 2
  },
  stabTigerSword = { -- 刺虎剑
    levelIds = { -4120, 4120 },
    attack = 35,
    defense = 10,
    addAttPerLevel = 4,
    addDefPerLevel = 4
  },
  drinkBloodSword = { -- 饮血剑
    levelIds = { -4123, 4123 },
    attack = 14,
    defense = 5,
    hp = 5,
    addAttPerLevel = 3,
    addDefPerLevel = 2,
    addHpPerLevel = 2
  },
  strongAttackSword = { -- 闪袭剑
    levelIds = { -4127, 4127 },
    attack = 20,
    defense = 3,
    distance = 1,
    cd = 15,
    addAttPerLevel = 4,
    addDefPerLevel = 4,
    addDistancePerLevel = 2
  },
  chaseWindSword = { -- 追风剑
    levelIds = { -4130, 4130 },
    projectileid = 4131,
    attack = 30,
    defense = 10,
    flyTime = 2,
    cd = 15,
    addAttPerLevel = 8,
    addDefPerLevel = 8,
    addFlyTimePerLevel = 1
  },

  -- 刀
  woodKnife = { -- 木刀
    levelIds = { -4110, 4110 },
    attack = 13,
    defense = 2,
    addAttPerLevel = 2,
    addDefPerLevel = 1
  },
  bronzeKnife = { -- 青铜刀
    levelIds = { -4113, 4113 },
    attack = 27,
    defense = 2,
    addAttPerLevel = 4,
    addDefPerLevel = 1
  },
  cutDeerKnife = { -- 割鹿刀
    levelIds = { -4119, 4119 },
    attack = 41,
    defense = 5,
    addAttPerLevel = 6,
    addDefPerLevel = 2
  },
  congealFrostKnife = { -- 凝霜刀
    levelIds = { -4124, 4124 },
    attack = 17,
    defense = 2,
    addAttPerLevel = 4,
    addDefPerLevel = 1
  },
  rejuvenationKnife = { -- 回春刀
    levelIds = { -4128, 4128 },
    attack = 25,
    defense = 5,
    cd = 15,
    addAttPerLevel = 6,
    addDefPerLevel = 2
  },
  sealDemonKnife = { -- 封魔刀
    levelIds = { -4133, 4133 },
    attack = 35,
    defense = 5,
    skillRange = 3,
    skillTime = 5,
    cd = 15,
    addAttPerLevel = 10,
    addDefPerLevel = 6,
    addSkillRangePerLevel = 1,
    addSkillTimePerLevel = 2
  },

  -- 枪
  woodSpear = { -- 木枪
    levelIds = { -4111, 4111 },
    attack = 17,
    defense = 0,
    strength = 30,
    addAttPerLevel = 3,
    addDefPerLevel = 0
  },
  bronzeSpear = { -- 青铜枪
    levelIds = { -4114, 4114 },
    attack = 33,
    defense = 0,
    strength = 40,
    addAttPerLevel = 5,
    addDefPerLevel = 0
  },
  controlDragonSpear = { -- 御龙枪
    levelIds = { -4118, 4118 },
    attack = 51,
    defense = 0,
    strength = 50,
    addAttPerLevel = 8,
    addDefPerLevel = 0
  },
  fireTipSpear = { -- 火尖枪
    levelIds = { -4122, 4122 },
    attack = 19,
    defense = 0,
    strength = 40,
    addAttPerLevel = 5,
    addDefPerLevel = 0
  },
  overlordSpear = { -- 霸王枪
    levelIds = { -4125, 4125 },
    attack = 36,
    defense = 0,
    strength = 50,
    coverHp = 0.2,
    skillRange = 3,
    cd = 15,
    addAttPerLevel = 8,
    addDefPerLevel = 0,
    addCoverHpPerLevel = 0.1,
    addSkillRangePerLevel = 1
  },
  shockSoulSpear = { -- 慑魂枪
    levelIds = { -4129, 4129 },
    attack = 55,
    defense = 0,
    strength = 100,
    skillRange = 2,
    skillTime = 1,
    cd = 15,
    addAttPerLevel = 16,
    addDefPerLevel = 0,
    addSkillRangePerLevel = 1,
    addSkillTimePerLevel = 1
  },

  -- 弓
  woodBow = { -- 木弓
    levelIds = { -4109, 4109 },
    attack = 15,
    defense = 0,
    addAttPerLevel = 3,
    addDefPerLevel = 0
  },
  bronzeBow = { -- 青铜弓
    levelIds = { -4115, 4115 },
    attack = 32,
    defense = 0,
    addAttPerLevel = 5,
    addDefPerLevel = 0
  },
  shootEagleBow = { -- 射雕弓
    levelIds = { -4117, 4117 },
    attack = 47,
    defense = 0,
    addAttPerLevel = 8,
    addDefPerLevel = 0
  },
  swallowSoulBow = { -- 噬魂弓
    levelIds = { -4121, 4121 },
    attack = 17,
    defense = 0,
    addAttPerLevel = 5,
    addDefPerLevel = 0
  },
  fallStarBow = { -- 坠星弓
    levelIds = { -4126, 4126 },
    attack = 35,
    defense = 0,
    skillRange = 8,
    cd = 15,
    addAttPerLevel = 8,
    addDefPerLevel = 0,
    addSkillRangePerLevel = 1
  },
  oneByOneBow = { -- 连珠弓
    levelIds = { -4132, 4132 },
    attack = 47,
    defense = 0,
    arrowNum = 3,
    cd = 15,
    addAttPerLevel = 16,
    addDefPerLevel = 0,
    addArrowNumPerLevel = 2
  }
}