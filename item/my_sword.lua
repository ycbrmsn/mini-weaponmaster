-- 剑
-- 木剑
WoodSword = MyWeapon:new(MyWeaponAttr.woodSword)

-- 青铜剑
BronzeSword = MyWeapon:new(MyWeaponAttr.bronzeSword)

-- 刺虎剑
StabTigerSword = MyWeapon:new(MyWeaponAttr.stabTigerSword)

-- 饮血剑
DrinkBloodSword = MyWeapon:new(MyWeaponAttr.drinkBloodSword)

-- 攻击命中恢复血量
function DrinkBloodSword:attackHit (objid, toobjid)
  local hp = self.hp + math.floor(self.addHpPerLevel * self.level)
  local toHp
  if (ActorHelper:isPlayer(toobjid)) then -- 命中玩家
    toHp = PlayerHelper:getHp(toobjid)
  else -- 命中生物
    toHp = CreatureHelper:getHp(toobjid)
  end
  if (toHp < hp) then
    hp = toHp
  end
  local player = MyPlayerHelper:getPlayer(objid)
  player:recoverHp(hp)
  MyActorHelper:playAndStopBodyEffectById(objid, MyConstant.BODY_EFFECT.LIGHT3)
end

-- 闪袭剑
StrongAttackSword = MyWeapon:new(MyWeaponAttr.strongAttackSword)

function StrongAttackSword:useItem (objid)
  local player = MyPlayerHelper:getPlayer(objid)
  if (not(player:ableUseSkill('闪袭'))) then
    return false
  end
  local ableUseSkill = MyItemHelper:ableUseSkill(objid, self.id, self.cd)
  if (not(ableUseSkill)) then
    MyPlayerHelper:showToast(objid, '闪袭技能冷却中')
    return
  end
  local playerPos = player:getMyPosition()
  -- 循环以距离玩家正面1米递增的间隔点开始，作为中心点，扩大1格，查找生物
  for i = 1, self.level + 1 do
    local pos = MathHelper:getDistancePosition(player:getMyPosition(), player:getFaceYaw(), i)
    local areaid = AreaHelper:createNineCubicArea(pos)
    local objids = MyActorHelper:getAllOtherTeamActorsInAreaId(objid, areaid)
    AreaHelper:destroyArea(areaid)
    if (#objids > 0) then
      MyItemHelper:recordUseSkill(objid, self.id, self.cd)
      local tempDistance, targetObjid
      for ii, vv in ipairs(objids) do
        local distance = WorldHelper:calcDistance(playerPos, MyActorHelper:getMyPosition(vv))
        if (not(tempDistance) or distance < tempDistance) then
          tempDistance = distance
          targetObjid = vv
        end
      end
      if (targetObjid) then -- 发现目标
        WorldHelper:playAndStopBodyEffectById(playerPos, MyConstant.BODY_EFFECT.SMOG1)
        player:setDistancePosition(targetObjid, -1)
        player:lookAt(targetObjid)
        -- 击退效果
        MyActorHelper:appendSpeed(targetObjid, 2, player:getMyPosition())
        -- 伤害
        player:damageActor(targetObjid, self.attack * 2)
        break
      end
    else
      ChatHelper:sendSystemMsg('闪袭技能有效范围内未发现目标', objid)
    end
  end
end

-- 追风剑
ChaseWindSword = MyWeapon:new(MyWeaponAttr.chaseWindSword)

function ChaseWindSword:useItem (objid)
  local player = MyPlayerHelper:getPlayer(objid)
  if (not(player:ableUseSkill('追风'))) then
    return false
  end
  local ableUseSkill = MyItemHelper:ableUseSkill(objid, self.id, self.cd)
  if (not(ableUseSkill)) then
    MyPlayerHelper:showToast(objid, '追风技能冷却中')
    return
  end
  MyItemHelper:recordUseSkill(objid, self.id, self.cd)
  local gridid = BackpackHelper:getCurShotcutGrid(objid)
  local curDur = BackpackHelper:getGridDurability(objid, gridid) -- 耐久度
  local playerPos = player:getMyPosition()
  -- local srcPos = MyPosition:new(playerPos.x, playerPos.y + 1, playerPos.z)
  local srcPos = MyPosition:new(ActorHelper:getEyePosition(objid))
  local aimPos = player:getAimPos() -- 准星位置
  -- 移除手持的追风剑
  BackpackHelper:removeGridItem(objid, gridid)
  -- 生成飞行的追风剑（投掷物）
  local projectileid = WorldHelper:spawnProjectileByPos(objid, self.projectileid, srcPos, aimPos)
  local weaponType = objid .. '-' .. self.id
  MyTimeHelper:callFnFastRuns (function ()
    local pos = MyActorHelper:getMyPosition(projectileid)
    if (pos.x) then
      WorldHelper:despawnActor(projectileid) -- 移除投掷物
      self:moveAndRecoverWeapon(player, objid, playerPos, pos, self, curDur)
    else
      self:recoverWeapon(objid, self, curDur)
    end
  end, self.level + 2, weaponType)
  MyItemHelper:recordProjectile(projectileid, objid, self, { pos = playerPos, curDur = curDur, weaponType = weaponType })
end

-- 投掷物命中
function ChaseWindSword:projectileHit (projectileInfo, toobjid, blockid, pos)
  MyTimeHelper:delFnFastRuns(projectileInfo.weaponType)
  local objid = projectileInfo.objid
  local item = projectileInfo.item
  local player = MyPlayerHelper:getPlayer(objid)
  local playerPos = projectileInfo.pos
  local curDur = projectileInfo.curDur -- 耐久度
  if (toobjid > 0) then -- 命中生物（似乎命中同队生物不会进入这里）
    self:moveAndRecoverWeapon(player, objid, playerPos, pos, item, curDur)
    MyActorHelper:appendSpeed(toobjid, 2, player:getMyPosition()) -- 冲击
    -- 判断是否是敌对生物
    if (not(MyActorHelper:isTheSameTeamActor(objid, toobjid))) then -- 敌对生物，则造成伤害
      local toPos = MyActorHelper:getMyPosition(toobjid)
      local distance = WorldHelper:calcDistance(playerPos, toPos)
      player:damageActor(toobjid, math.floor(item.attack + distance * 5))
    end
  elseif (blockid > 0) then -- 命中方块
    self:moveAndRecoverWeapon(player, objid, playerPos, pos, item, curDur)
  end
end

-- 移动并收回武器
function ChaseWindSword:moveAndRecoverWeapon (player, playerid, playerPos, pos, item, curDur)
  WorldHelper:playAndStopBodyEffectById(playerPos, MyConstant.BODY_EFFECT.SMOG1)
  local dstPos = MathHelper:getPos2PosInLineDistancePosition(playerPos, pos, 1)
  player:setMyPosition(dstPos)
  self:recoverWeapon(playerid, item, curDur)
end

-- 收回追风剑
function ChaseWindSword:recoverWeapon (playerid, item, curDur)
  local itemid = PlayerHelper:getCurToolID(playerid)
  if (itemid) then -- 手上拿了别的东西
    item:newItem(playerid, 1)
    local num, backpacks = BackpackHelper:getItemNum(playerid, item.id)
    BackpackHelper:setGridItem(playerid, backpacks[1], item.id, 1, curDur)
  else -- 空手
    local gridid = BackpackHelper:getCurShotcutGrid(objid)
    BackpackHelper:setGridItem(playerid, gridid, item.id, 1, curDur)
  end
end