-- 我的区域工具类
MyAreaHelper = {
  monsterPositions = {
    MyPosition:new(-87, 7, -23), -- 小鸡
    MyPosition:new(-86, 7, -41),
    MyPosition:new(-85, 7, -66),
    MyPosition:new(12, 7, -26),
    MyPosition:new(10, 7, -46),
    MyPosition:new(11, 7, -63),
    MyPosition:new(-37, 7, -65), -- 大龙
  },
  monsterAreas = {},
  outVillagePos = MyPosition:new(-36, 7, -27),
  maxRandomTimes = 10,
  showToastAreas = {} -- { areaid1 = { areaid2, name }, ... }
}

function MyAreaHelper:removeToArea (myActor)
  if (myActor and myActor.wants) then
    local want = myActor.wants[1]
    if (want.toAreaId) then
      AreaHelper:destroyArea(want.toAreaId)
    end
  end
end

function MyAreaHelper:isAirArea (pos)
  return BlockHelper:isAirBlock(pos.x, pos.y, pos.z) and BlockHelper:isAirBlock(pos.x, pos.y + 1, pos.z)
end

function MyAreaHelper:getRandomAirPositionInArea (areaid)
  local pos = AreaHelper:getRandomPos(areaid)
  local times = 1
  while (not(self:isAirArea(pos)) and times < self.maxRandomTimes) do
    pos = AreaHelper:getRandomPos(areaid)
    times = times + 1
  end
  return pos
end

function MyAreaHelper:initAreas ()
  for i, v in ipairs(self.monsterPositions) do
    table.insert(self.monsterAreas, AreaHelper:getAreaByPos(v))
  end
  self.outVillageArea = AreaHelper:getAreaByPos(self.outVillagePos)
end

function MyAreaHelper:initShowToastAreas ()
  local arr = { wolf, qiangdaoLouluo }
  for i, v in ipairs(arr) do
    self.showToastAreas[v.areaids[2]] = { v.areaids[1], v.areaName }
  end
  for i, v in ipairs(guard.initAreas) do
    if (i >= 5) then
      break
    end
    self.showToastAreas[guard.initAreas2[i]] = { v.areaid, '风颖城' }
  end
end

function MyAreaHelper:showToastArea (objid, areaid)
  for k, v in pairs(self.showToastAreas) do
    if (k == areaid) then
      local player = MyPlayerHelper:getPlayer(objid)
      if (player.prevAreaId and player.prevAreaId == v[1]) then
        MyPlayerHelper:showToast(objid, v[2])
      end
      break
    end
  end
end

function MyAreaHelper:playerEnterArea (objid, areaid)
  -- MyStoryHelper:playerEnterArea(objid, areaid)
  local myPlayer = MyPlayerHelper:getPlayer(objid)
  if (areaid == myPlayer.toAreaId) then -- 玩家自动前往地点
    AreaHelper:destroyArea(areaid)
    myPlayer.action:runAction()
  end
  myPlayer.prevAreaId = areaid
end

function MyAreaHelper:playerLeaveArea (objid, areaid)
  -- MyStoryHelper:playerLeaveArea(objid, areaid)
end

function MyAreaHelper:creatureEnterArea (objid)
  
end