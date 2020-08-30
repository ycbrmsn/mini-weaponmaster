-- 我的玩家类
MyPlayer = BasePlayer:new()

function MyPlayer:new (objid)
  local o = {
    objid = objid,
    present1 = false, -- 五级礼包
    present2 = false, -- 十级礼包
    present3 = false -- 十五级礼包
  }
  o.action = BasePlayerAction:new(o)
  o.attr = BasePlayerAttr:new(o)
  o.attr.expData = { exp = 100 }
  o.attr.defeatedExp = 0
  setmetatable(o, self)
  self.__index = self
  return o
end
