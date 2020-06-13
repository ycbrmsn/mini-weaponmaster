-- 怪物类

-- 小鸡
Chick = MyActor:new(8)

function Chick:new ()
  local o = {
    objid = self.actorid,
    expData = {
      level = 3,
      exp = 20
    },
    fallOff = {
      { MyConstant.ITEM.COIN_ID, 1, 20 } -- 铜板
    }
  }
  setmetatable(o, self)
  self.__index = self
  return o
end

-- 小猪
Pig = MyActor:new(9)

function Pig:new ()
  local o = {
    objid = self.actorid,
    expData = {
      level = 6,
      exp = 20
    },
    fallOff = {
      { MyConstant.ITEM.COIN_ID, 1, 20 } -- 铜板
    }
  }
  setmetatable(o, self)
  self.__index = self
  return o
end

-- 小牛
Ox = MyActor:new(10)

function Ox:new ()
  local o = {
    objid = self.actorid,
    expData = {
      level = 10,
      exp = 20
    },
    fallOff = {
      { MyConstant.ITEM.COIN_ID, 1, 20 } -- 铜板
    }
  }
  setmetatable(o, self)
  self.__index = self
  return o
end

-- 小狼
Wolf = MyActor:new(11)

function Wolf:new ()
  local o = {
    objid = self.actorid,
    expData = {
      level = 13,
      exp = 20
    },
    fallOff = {
      { MyConstant.ITEM.COIN_ID, 1, 20 } -- 铜板
    }
  }
  setmetatable(o, self)
  self.__index = self
  return o
end

-- 小熊
Bear = MyActor:new(12)

function Bear:new ()
  local o = {
    objid = self.actorid,
    expData = {
      level = 17,
      exp = 20
    },
    fallOff = {
      { MyConstant.ITEM.COIN_ID, 2, 20 } -- 铜板
    }
  }
  setmetatable(o, self)
  self.__index = self
  return o
end

-- 小龙
Dragon = MyActor:new(13)

function Dragon:new ()
  local o = {
    objid = self.actorid,
    expData = {
      level = 20,
      exp = 20
    },
    fallOff = {
      { MyConstant.ITEM.COIN_ID, 3, 20 } -- 铜板
    }
  }
  setmetatable(o, self)
  self.__index = self
  return o
end

-- 大龙
BigDragon = MyActor:new(14)

function BigDragon:new ()
  local o = {
    objid = self.actorid,
    expData = {
      level = 25,
      exp = 20
    },
    fallOff = {
      { MyConstant.ITEM.COIN_ID, 5, 20 } -- 铜板
    }
  }
  setmetatable(o, self)
  self.__index = self
  return o
end