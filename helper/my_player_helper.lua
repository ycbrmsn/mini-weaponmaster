-- 我的玩家工具类
MyPlayerHelper = {}

function MyPlayerHelper.teleportHome (objid)
  local teamid = PlayerHelper:getTeam(objid)
  if teamid == 1 then -- 红队
    Player:setPosition(objid, -17, 7, -5)
  elseif teamid == 2 then -- 蓝队
    Player:setPosition(objid, -17, 7, 20)
  elseif teamid == 3 then -- 绿队
    Player:setPosition(objid, -17, 7, 45)
  elseif teamid == 4 then -- 黄队
    Player:setPosition(objid, -46, 7, -5)
  elseif teamid == 5 then -- 橙队
    Player:setPosition(objid, -46, 7, 20)
  elseif teamid == 6 then -- 紫队
    Player:setPosition(objid, -46, 7, 45)
  end
end

-- 事件

-- 玩家进入游戏
function MyPlayerHelper:playerEnterGame (objid)
  local isEntered = PlayerHelper:playerEnterGame(objid)
  MyStoryHelper:playerEnterGame(objid)
  -- body
  local maxLevel = 1
  for i, v in ipairs(PlayerHelper:getActivePlayers()) do
    local level = v:getLevel()
    if (level > maxLevel) then
      maxLevel = level
    end
  end
  local player = PlayerHelper:getPlayer(objid)
  if (maxLevel > 1) then
    ChatHelper:sendMsg(objid, '当前房间内玩家最高等级为', maxLevel, '，因此你初始为', maxLevel - 1, '级')
    player:setLevel(maxLevel - 1)
    player:upgrade(maxLevel - 1)
  end
  -- TimeHelper:callFnFastRuns(function ()
  MyPlayerHelper.teleportHome(objid)
  --   LogHelper:debug('cs')
  -- end, 3)
  MusicHelper:startBGM(objid, 1, true)
end

-- 玩家离开游戏
function MyPlayerHelper:playerLeaveGame (objid)
  PlayerHelper:playerLeaveGame(objid)
  MyStoryHelper:playerLeaveGame(objid)
  MusicHelper:stopBGM(objid)
end

-- 玩家进入区域
function MyPlayerHelper:playerEnterArea (objid, areaid)
  PlayerHelper:playerEnterArea(objid, areaid)
  MyStoryHelper:playerEnterArea(objid, areaid)
  -- body
end

-- 玩家离开区域
function MyPlayerHelper:playerLeaveArea (objid, areaid)
  PlayerHelper:playerLeaveArea(objid, areaid)
  MyStoryHelper:playerLeaveArea(objid, areaid)
end

-- 玩家点击方块
function MyPlayerHelper:playerClickBlock (objid, blockid, x, y, z)
  PlayerHelper:playerClickBlock(objid, blockid, x, y, z)
  MyStoryHelper:playerClickBlock(objid, blockid, x, y, z)
  -- body
end

-- 玩家点击生物
function MyPlayerHelper:playerClickActor (objid, toobjid)
  PlayerHelper:playerClickActor(objid, toobjid)
  MyStoryHelper:playerClickActor(objid, toobjid)
  -- body
  local actorid = CreatureHelper:getActorID(toobjid)
  if (actorid == 5) then -- 村长给奖励
    local player = PlayerHelper:getPlayer(objid)
    local level = player:getLevel()
    if (level >= 5 and not(player.presents1)) then -- 5级礼包
      player.presents1 = true
      Backpack:addItem(objid, MyMap.ITEM.GREEN_BOX_ID, 1)
      ChatHelper:sendSystemMsg('林千树：#W不错，你达到了5级，这个给你。等你到10级后再来找我。', objid)
    elseif (level >= 10 and not(player.presents2)) then -- 10级礼包
      player.presents2 = true
      Backpack:addItem(objid, MyMap.ITEM.BLUE_BOX_ID, 1)
      ChatHelper:sendSystemMsg('林千树：#W不错，你达到了10级，这个给你。等你到15级后再来找我。', objid)
    elseif (level >= 15 and not(player.presents3)) then -- 15级礼包
      player.presents3 = true
      Backpack:addItem(objid, MyMap.ITEM.PURPLE_BOX_ID, 1)
      ChatHelper:sendSystemMsg('林千树：#W不错，你达到了15级，这个给你。好了，我这里已经没有好东西了。', objid)
    end
  elseif (actorid == 6) then -- 大牛送回村
    TimeHelper:callFnFastRuns(function ()
      MyPlayerHelper.teleportHome(objid)
    end, 2)
  elseif (actorid == 7) then -- 二牛带出村
    TimeHelper:callFnFastRuns(function ()
      local pos = AreaHelper:getRandomAirPositionInArea(MyAreaHelper.outVillageArea)
      local player = PlayerHelper:getPlayer(objid)
      player:setMyPosition(pos)
    end, 2)
  end
end

-- 玩家获得道具
function MyPlayerHelper:playerAddItem (objid, itemid, itemnum)
  PlayerHelper:playerAddItem(objid, itemid, itemnum)
  MyStoryHelper:playerAddItem(objid, itemid, itemnum)
  -- body
end

-- 玩家使用道具
function MyPlayerHelper:playerUseItem (objid, itemid)
  PlayerHelper:playerUseItem(objid, itemid)
  MyStoryHelper:playerUseItem(objid, itemid)
  -- body
  if (itemid == MyMap.ITEM.MUSIC_PLAYER_ID) then -- 音乐播放器
    local index = PlayerHelper:getCurShotcut(objid)
    if (index == 3) then -- 加速
      MusicHelper:changeSpeed (objid, 1)
    elseif (index == 4) then -- 减速
      MusicHelper:changeSpeed (objid, -1)
    elseif (index == 5) then -- 调大声音
      MusicHelper:modulateVolume(objid, 1)
    elseif (index == 6) then -- 调小声音
      MusicHelper:modulateVolume(objid, -1)
    elseif (index == 7) then -- 重置音乐选项
      MusicHelper:changeBGM(objid, 1, true, true)
      ChatHelper:sendMsg(objid, '音乐、音量及播放速度重置完成')
    else
      ChatHelper:sendMsg(objid, '当前处于快捷栏第', index + 1, '格，暂无对应功能')
    end
  end
end

-- 玩家攻击命中
function MyPlayerHelper:playerAttackHit (objid, toobjid)
  PlayerHelper:playerAttackHit(objid, toobjid)
  MyStoryHelper:playerAttackHit(objid, toobjid)
end

-- 玩家造成伤害
function MyPlayerHelper:playerDamageActor (objid, toobjid)
  PlayerHelper:playerDamageActor(objid, toobjid)
  MyStoryHelper:playerDamageActor(objid, toobjid)
end

-- 玩家击败目标
function MyPlayerHelper:playerDefeatActor (objid, toobjid)
  PlayerHelper:playerDefeatActor(objid, toobjid)
  MyStoryHelper:playerDefeatActor(objid, toobjid)
  -- body
end

-- 玩家受到伤害
function MyPlayerHelper:playerBeHurt (objid, toobjid)
  PlayerHelper:playerBeHurt(objid, toobjid)
  MyStoryHelper:playerBeHurt(objid, toobjid)
end

-- 玩家死亡
function MyPlayerHelper:playerDie (objid, toobjid)
  PlayerHelper:playerDie(objid, toobjid)
  MyStoryHelper:playerDie(objid, toobjid)
  -- body
end

-- 玩家复活
function MyPlayerHelper:playerRevive (objid, toobjid)
  PlayerHelper:playerRevive(objid, toobjid)
  MyStoryHelper:playerRevive(objid, toobjid)
  -- body
end

-- 玩家选择快捷栏
function MyPlayerHelper:playerSelectShortcut (objid)
  PlayerHelper:playerSelectShortcut(objid)
  MyStoryHelper:playerSelectShortcut(objid)
end

-- 玩家快捷栏变化
function MyPlayerHelper:playerShortcutChange (objid)
  PlayerHelper:playerShortcutChange(objid)
  MyStoryHelper:playerShortcutChange(objid)
end

-- 玩家运动状态改变
function MyPlayerHelper:playerMotionStateChange (objid, playermotion)
  PlayerHelper:playerMotionStateChange(objid, playermotion)
  MyStoryHelper:playerMotionStateChange(objid, playermotion)
  -- body
end

-- 玩家移动一格
function MyPlayerHelper:playerMoveOneBlockSize (objid)
  PlayerHelper:playerMoveOneBlockSize(objid)
  MyStoryHelper:playerMoveOneBlockSize(objid)
  -- body
end

-- 玩家骑乘
function MyPlayerHelper:playerMountActor (objid, toobjid)
  PlayerHelper:playerMountActor(objid, toobjid)
  MyStoryHelper:playerMountActor(objid, toobjid)
end

-- 玩家取消骑乘
function MyPlayerHelper:playerDismountActor (objid, toobjid)
  PlayerHelper:playerDismountActor(objid, toobjid)
  MyStoryHelper:playerDismountActor(objid, toobjid)
end

-- 聊天输出界面变化
function MyPlayerHelper:playerInputContent(objid, content)
  PlayerHelper:playerInputContent(objid, content)
  MyStoryHelper:playerInputContent(objid, content)
end

-- 输入字符串
function MyPlayerHelper:playerNewInputContent(objid, content)
  PlayerHelper:playerNewInputContent(objid, content)
  MyStoryHelper:playerNewInputContent(objid, content)
end