-- 我的怪物工具类
MyMonsterHelper = {
  monsterInfos = { -- actorid, num
    { 8, 7 }, { 9, 7 }, { 10, 7 }, { 11, 5 }, 
    { 12, 5 }, { 13, 5 }, { 14, 1 }
  },
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
}

-- 初始化
function MyMonsterHelper:init ()
  -- chick = Chick:new()
  -- dog = Dog:new()
  -- wolf = Wolf:new()
  -- ox = Ox:new()
  local monsterModels = { Chick:new(), Pig:new(), Ox:new(), Wolf:new(), Bear:new(), Dragon:new(), BigDragon:new() }
  MonsterHelper:init(monsterModels)

  for i, v in ipairs(self.monsterPositions) do
    table.insert(self.monsterAreas, AreaHelper:getAreaByPos(v))
  end
  TimeHelper:repeatUtilSuccess(999, 'generate', function ()
    for i, v in ipairs(self.monsterAreas) do
      local objids = AreaHelper:getAllCreaturesInAreaId(v)
      local num = self.monsterInfos[i][2]
      if (not(objids) or #objids < num) then
        local actorid = self.monsterInfos[i][1]
        for i = 1, num - #objids do
          local pos = AreaHelper:getRandomAirPositionInArea(v)
          WorldHelper:spawnCreature(pos.x, pos.y, pos.z, actorid, 1)
        end
      end
    end
    return false
  end, 60)
end
