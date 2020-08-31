-- 刀
-- 木刀
WoodKnife = MyWeapon:new(MyWeaponAttr.woodKnife)

-- 青铜刀
BronzeKnife = MyWeapon:new(MyWeaponAttr.bronzeKnife)

-- 割鹿刀
CutDeerKnife = MyWeapon:new(MyWeaponAttr.cutDeerKnife)

-- 凝霜刀
CongealFrostKnife = MyWeapon:new(MyWeaponAttr.congealFrostKnife)

-- 攻击命中冰冻
function CongealFrostKnife:attackHit (objid, toobjid)
  local bufflv = self.level + 1
  local customticks = 5 * 20 -- 每秒20帧
  ActorHelper:addBuff(toobjid, 45, bufflv, customticks)
end

-- 回春刀
RejuvenationKnife = MyWeapon:new(MyWeaponAttr.rejuvenationKnife)

function RejuvenationKnife:useItem1 (objid)
  local player = PlayerHelper:getPlayer(objid)
  ItemHelper:recordUseSkill(objid, self.id, self.cd)
  local bufflv = self.level + 1
  local customticks = (self.skillTime + self.level * self.addSkillTimePerLevel) * 20 -- 每秒20帧
  ActorHelper:addBuff(objid, 50, bufflv, customticks) -- 快速生命恢复
end

-- 封魔刀
SealDemonKnife = MyWeapon:new(MyWeaponAttr.sealDemonKnife)

function SealDemonKnife:useItem1 (objid)
  local player = PlayerHelper:getPlayer(objid)
  local playerPos = player:getMyPosition()
  local skillRange = self.skillRange + self.level * self.addSkillRangePerLevel
  local areaid = AreaHelper:createAreaRect(playerPos, { x = skillRange, y = skillRange, z = skillRange })
  local objids = ActorHelper:getAllOtherTeamActorsInAreaId(objid, areaid)
  AreaHelper:destroyArea(areaid)
  if (#objids > 0) then
    ItemHelper:recordUseSkill(objid, self.id, self.cd)
    for i, v in ipairs(objids) do
      SkillHelper:sealActor(v)
    end
    TimeHelper:callFnFastRuns (function ()
      for i, v in ipairs(objids) do
        SkillHelper:cancelSealActor(v)
      end
    end, self.skillTime + self.level * self.addSkillTimePerLevel)
  else
    ChatHelper:sendSystemMsg('封魔技能有效范围内未发现目标', objid)
  end
end