-- 怪物类

-- 小鸡
Chick = BaseActor:new(8)

function Chick:new ()
  local o = {
    objid = self.actorid,
    expData = {
      level = 3,
      exp = 20
    },
    fallOff = {
      { MyMap.ITEM.COIN_ID, 1, 1, 20 } -- 铜板
    }
  }
  setmetatable(o, self)
  self.__index = self
  return o
end

-- 小猪
Pig = BaseActor:new(9)

function Pig:new ()
  local o = {
    objid = self.actorid,
    expData = {
      level = 6,
      exp = 20
    },
    fallOff = {
      { MyMap.ITEM.COIN_ID, 1, 2, 20 } -- 铜板
    }
  }
  setmetatable(o, self)
  self.__index = self
  return o
end

-- 小牛
Ox = BaseActor:new(10)

function Ox:new ()
  local o = {
    objid = self.actorid,
    expData = {
      level = 10,
      exp = 20
    },
    fallOff = {
      { MyMap.ITEM.COIN_ID, 1, 3, 20 } -- 铜板
    }
  }
  setmetatable(o, self)
  self.__index = self
  return o
end

-- 小狼
Wolf = BaseActor:new(11)

function Wolf:new ()
  local o = {
    objid = self.actorid,
    expData = {
      level = 13,
      exp = 20
    },
    fallOff = {
      { MyMap.ITEM.COIN_ID, 1, 5, 20 } -- 铜板
    }
  }
  setmetatable(o, self)
  self.__index = self
  return o
end

-- 小熊
Bear = BaseActor:new(12)

function Bear:new ()
  local o = {
    objid = self.actorid,
    expData = {
      level = 17,
      exp = 20
    },
    fallOff = {
      { MyMap.ITEM.COIN_ID, 2, 6, 20 } -- 铜板
    }
  }
  setmetatable(o, self)
  self.__index = self
  return o
end

-- 小龙
Dragon = BaseActor:new(13)

function Dragon:new ()
  local o = {
    objid = self.actorid,
    expData = {
      level = 20,
      exp = 20
    },
    fallOff = {
      { MyMap.ITEM.COIN_ID, 3, 8, 20 } -- 铜板
    }
  }
  setmetatable(o, self)
  self.__index = self
  return o
end

-- 大龙
BigDragon = BaseActor:new(14)

function BigDragon:new ()
  local o = {
    objid = self.actorid,
    expData = {
      level = 25,
      exp = 20
    },
    fallOff = {
      { MyMap.ITEM.COIN_ID, 5, 10, 20 } -- 铜板
    }
  }
  setmetatable(o, self)
  self.__index = self
  return o
end