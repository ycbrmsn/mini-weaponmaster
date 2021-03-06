-- 地图相关数据
MyMap = {
  BLOCK = {
    
  },
  ITEM = {
    COIN_ID = 4108, -- 铜板ID
    ARROW_ID = 4134, -- 箭矢ID
    SILVER_ID = 4136, -- 银子ID
    COMMON_PROJECTILE_ID = 4138, -- 通用投掷物ID
    GREEN_BOX_ID = 4140, -- 绿品武器匣
    BLUE_BOX_ID = 4141, -- 蓝品武器匣
    PURPLE_BOX_ID = 4139, -- 紫品武器匣
    MUSIC_PLAYER_ID = 4150, -- 音乐播放器
  },
  ACTOR = {
    
  },
  BUFF = {
    
  },
  CUSTOM = {
    PROJECTILE_HURT = 6, -- 通用投掷物固定伤害
  }
}

-- 模板
MyTemplate = {
  GAIN_EXP_MSG = '你获得{exp}点经验', -- exp（获得经验）
  GAIN_DEFEATED_EXP_MSG = '历经生死，你获得{exp}点经验', -- exp（获得经验）
  UPGRADE_MSG = '你升级了', -- exp（获得经验）、level（玩家等级）
  -- UNUPGRADE_MSG = '当前为{level}级。还差{needExp}点经验升级' -- level（玩家等级）、needExp（升级还需要的经验）
  TEAM_MSG = '当前红队有{1}人，蓝队有{2}人，准备玩家有{0}人', -- 0（无队伍人数）、1（红队人数）、2（蓝队人数）
}

-- 武器属性
MyWeaponAttr = {
  -- 剑
  woodSword = { -- 木剑
    attack = 10,
    defense = 5,
    addAttPerLevel = 1,
    addDefPerLevel = 2
  },
  bronzeSword = { -- 青铜剑
    attack = 22,
    defense = 5,
    addAttPerLevel = 3,
    addDefPerLevel = 2
  },
  stabTigerSword = { -- 刺虎剑
    attack = 35,
    defense = 10,
    addAttPerLevel = 4,
    addDefPerLevel = 4
  },
  drinkBloodSword = { -- 饮血剑
    attack = 14,
    defense = 5,
    hp = 5,
    addAttPerLevel = 3,
    addDefPerLevel = 2,
    addHpPerLevel = 2
  },
  strongAttackSword = { -- 闪袭剑
    attack = 20,
    defense = 3,
    distance = 1,
    multiple = 2,
    cd = 15,
    cdReason = '闪袭技能冷却中',
    skillname = '闪袭',
    addAttPerLevel = 4,
    addDefPerLevel = 4,
    addDistancePerLevel = 2,
    addMultiplePerLevel = 1
  },
  chaseWindSword = { -- 追风剑
    attack = 30,
    defense = 10,
    flyTime = 2,
    damage = 5,
    cd = 15,
    cdReason = '追风技能冷却中',
    skillname = '追风',
    addAttPerLevel = 8,
    addDefPerLevel = 8,
    addFlyTimePerLevel = 1,
    addDamagePerLevel = 1
  },

  -- 刀
  woodKnife = { -- 木刀
    attack = 13,
    defense = 2,
    addAttPerLevel = 2,
    addDefPerLevel = 1
  },
  bronzeKnife = { -- 青铜刀
    attack = 27,
    defense = 2,
    addAttPerLevel = 4,
    addDefPerLevel = 1
  },
  cutDeerKnife = { -- 割鹿刀
    attack = 41,
    defense = 5,
    addAttPerLevel = 6,
    addDefPerLevel = 2
  },
  congealFrostKnife = { -- 凝霜刀
    attack = 17,
    defense = 2,
    addAttPerLevel = 4,
    addDefPerLevel = 1
  },
  rejuvenationKnife = { -- 回春刀
    attack = 25,
    defense = 5,
    skillTime = 5,
    cd = 15,
    cdReason = '回春技能冷却中',
    skillname = '回春',
    addAttPerLevel = 6,
    addDefPerLevel = 2,
    addSkillTimePerLevel = 2
  },
  sealDemonKnife = { -- 封魔刀
    attack = 35,
    defense = 5,
    skillRange = 3,
    skillTime = 5,
    cd = 15,
    cdReason = '封魔技能冷却中',
    skillname = '封魔',
    addAttPerLevel = 10,
    addDefPerLevel = 6,
    addSkillRangePerLevel = 1,
    addSkillTimePerLevel = 2
  },

  -- 枪
  woodSpear = { -- 木枪
    attack = 17,
    defense = 0,
    strength = 30,
    addAttPerLevel = 3,
    addDefPerLevel = 0
  },
  bronzeSpear = { -- 青铜枪
    attack = 33,
    defense = 0,
    strength = 40,
    addAttPerLevel = 5,
    addDefPerLevel = 0
  },
  controlDragonSpear = { -- 御龙枪
    attack = 51,
    defense = 0,
    strength = 50,
    addAttPerLevel = 8,
    addDefPerLevel = 0
  },
  fireTipSpear = { -- 火尖枪
    attack = 19,
    defense = 0,
    strength = 40,
    addAttPerLevel = 5,
    addDefPerLevel = 0
  },
  overlordSpear = { -- 霸王枪
    attack = 36,
    defense = 0,
    strength = 50,
    coverHp = 0.2,
    skillRange = 3,
    cd = 15,
    cdReason = '霸王技能冷却中',
    skillname = '霸王',
    addAttPerLevel = 8,
    addDefPerLevel = 0,
    addCoverHpPerLevel = 0.1,
    addSkillRangePerLevel = 1
  },
  shockSoulSpear = { -- 慑魂枪
    attack = 55,
    defense = 0,
    strength = 100,
    skillRange = 2,
    skillTime = 1,
    cd = 15,
    cdReason = '慑魂技能冷却中',
    skillname = '慑魂',
    addAttPerLevel = 16,
    addDefPerLevel = 0,
    addSkillRangePerLevel = 1,
    addSkillTimePerLevel = 1
  },

  -- 弓
  woodBow = { -- 木弓
    attack = 15,
    defense = 0,
    addAttPerLevel = 3,
    addDefPerLevel = 0
  },
  bronzeBow = { -- 青铜弓
    attack = 32,
    defense = 0,
    addAttPerLevel = 5,
    addDefPerLevel = 0
  },
  shootEagleBow = { -- 射雕弓
    attack = 47,
    defense = 0,
    addAttPerLevel = 8,
    addDefPerLevel = 0
  },
  swallowSoulBow = { -- 噬魂弓
    attack = 17,
    defense = 0,
    addAttPerLevel = 5,
    addDefPerLevel = 0
  },
  fallStarBow = { -- 坠星弓
    attack = 35,
    defense = 0,
    skillRange = 8,
    cd = 15,
    cdReason = '坠星技能冷却中',
    skillname = '坠星',
    addAttPerLevel = 8,
    addDefPerLevel = 0,
    addSkillRangePerLevel = 1
  },
  oneByOneBow = { -- 连珠弓
    attack = 47,
    defense = 0,
    arrowNum = 3,
    cd = 15,
    cdReason = '连珠技能冷却中',
    skillname = '连珠',
    addAttPerLevel = 16,
    addDefPerLevel = 0,
    addArrowNumPerLevel = 2
  }
}

-- 武器id
MyWeaponAttr.woodSword.levelIds = { -4112, 4112 } -- 木剑
MyWeaponAttr.bronzeSword.levelIds = { -4116, 4116 } -- 青铜剑
MyWeaponAttr.stabTigerSword.levelIds = { -4120, 4120 } -- 刺虎剑
MyWeaponAttr.drinkBloodSword.levelIds = { -4123, 4123 } -- 饮血剑
MyWeaponAttr.strongAttackSword.levelIds = { -4127, 4127 } -- 闪袭剑
MyWeaponAttr.chaseWindSword.levelIds = { -4130, 4130 } -- 追风剑
MyWeaponAttr.chaseWindSword.projectileid = 4131 -- 飞行的追风剑
MyWeaponAttr.woodKnife.levelIds = { -4110, 4110 } -- 木刀
MyWeaponAttr.bronzeKnife.levelIds = { -4113, 4113 } -- 青铜刀
MyWeaponAttr.cutDeerKnife.levelIds = { -4119, 4119 } -- 割鹿刀
MyWeaponAttr.congealFrostKnife.levelIds = { -4124, 4124 } -- 凝霜刀
MyWeaponAttr.rejuvenationKnife.levelIds = { -4128, 4128 } -- 回春刀
MyWeaponAttr.sealDemonKnife.levelIds = { -4133, 4133 } -- 封魔刀
MyWeaponAttr.woodSpear.levelIds = { -4111, 4111 } -- 木枪
MyWeaponAttr.bronzeSpear.levelIds = { -4114, 4114 } -- 青铜枪
MyWeaponAttr.controlDragonSpear.levelIds = { -4118, 4118 } -- 御龙枪
MyWeaponAttr.fireTipSpear.levelIds = { -4122, 4122 } -- 火尖枪
MyWeaponAttr.overlordSpear.levelIds = { -4125, 4125 } -- 霸王枪
MyWeaponAttr.shockSoulSpear.levelIds = { -4129, 4129 } -- 慑魂枪
MyWeaponAttr.woodBow.levelIds = { -4109, 4109 } -- 木弓
MyWeaponAttr.bronzeBow.levelIds = { -4115, 4115 } -- 青铜弓
MyWeaponAttr.shootEagleBow.levelIds = { -4117, 4117 } -- 射雕弓
MyWeaponAttr.swallowSoulBow.levelIds = { -4121, 4121 } -- 噬魂弓
MyWeaponAttr.fallStarBow.levelIds = { -4126, 4126 } -- 坠星弓
MyWeaponAttr.oneByOneBow.levelIds = { -4132, 4132 } -- 连珠弓
