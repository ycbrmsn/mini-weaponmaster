-- 音乐数据
BGM = {
  { -- 超级玛丽
    notes = {
      -- 一行
      '3,3', '3,3', '0,3', '3,3', '0,3', '1,3', '3,3', '0,3', '5,3', '0,3', '0,18',
      '1,6', '0,3', '5,3,-', '0,6', '3,6,-', '0,3', '6,6,-', '7,3,-', '0,3', '-7,3,-', '6,6,-',
      '5,3,-', '3,3', '5,3', '6,3', '0,3', '4,3', '5,6', '3,6', '1,3', '2,3', '7,6,-', '0,6',
      -- 二行
      '1,6', '0,3', '5,3,-', '0,6', '3,6,-', '0,3', '6,6,-', '7,3,-', '0,3', '-7,3,-', '6,6,-',
      '5,3,-', '3,3', '5,3', '6,3', '0,3', '4,3', '5,6', '3,6', '1,3', '2,3', '7,6,-', '0,6',
      '0,6', '5,3', '-5,3', '4,3', '3,3', '0,3', '3,3', '0,3', '-6,3,-', '6,3,-', '1,3', '0,3', '6,3,-', '1,3', '2,3',
      -- 三行
      '0,6', '5,3', '-5,3', '4,3', '3,3', '0,3', '3,3', '0,3', '1,3,+', '0,3', '1,3,+', '1,3,+', '0,9',
      '0,6', '5,3', '-5,3', '4,3', '3,3', '0,3', '3,3', '0,3', '-6,3,-', '6,3,-', '1,3', '0,3', '6,3,-', '1,3', '2,3',
      '0,6', '-3,3', '0,3', '0,3', '2,3', '0,6', '1,6', '0,18',
      -- 重复
      '0,6', '5,3', '-5,3', '4,3', '3,3', '0,3', '3,3', '0,3', '-6,3,-', '6,3,-', '1,3', '0,3', '6,3,-', '1,3', '2,3',
      '0,6', '5,3', '-5,3', '4,3', '3,3', '0,3', '3,3', '0,3', '1,3,+', '0,3', '1,3,+', '1,3,+', '0,9',
      '0,6', '5,3', '-5,3', '4,3', '3,3', '0,3', '3,3', '0,3', '-6,3,-', '6,3,-', '1,3', '0,3', '6,3,-', '1,3', '2,3',
      '0,6', '-3,3', '0,3', '0,3', '2,3', '0,6', '1,6', '0,18',
      -- 四行
      '1,3', '1,3', '0,3', '1,3', '0,3', '1,3', '2,3', '0,3', '3,3', '1,3', '0,3', '6,3,-', '5,3,-', '0,9',
      '1,3', '1,3', '0,3', '1,3', '0,3', '1,3', '2,3', '3,3', '0,24',
      '1,3', '1,3', '0,3', '1,3', '0,3', '1,3', '2,3', '0,3', '3,3', '1,3', '0,3', '6,3,-', '5,3,-', '0,9',
      -- 五行
      '3,3', '3,3', '0,3', '3,3', '0,3', '1,3', '3,3', '0,3', '5,3', '0,9', '5,6,-', '0,6',
      '1,6', '0,3', '5,3,-', '0,6', '3,6,-', '0,3', '6,6,-', '7,3,-', '0,3', '-7,3,-', '6,6,-',
      '5,3,-', '3,3', '5,3', '6,3', '0,3', '4,3', '5,6', '3,6', '1,3', '2,3', '7,6,-', '0,6',
      '1,6', '0,3', '5,3,-', '0,6', '3,6,-',
      -- 六行
      '0,3', '6,6,-', '7,3,-', '0,3', '-7,3,-', '6,6,-', '5,3,-', '3,3', '5,3', '6,3', '0,3', '4,3', '5,6',
      '3,6', '1,3', '2,3', '7,6,-', '0,6', '3,3', '1,6', '0,3', '5,3,-', '0,3', '-6,3,-', '0,3',
      '-6,3,-', '4,3', '0,3', '4,3', '6,3,-', '0,9', '7,4,-', '6,4', '6,4', '6,4', '5,4', '4,4',
      -- 七行
      '3,3', '1,3', '0,3', '6,3,-', '5,3,-', '0,9', '3,3', '1,6', '5,3,-', '0,6', '-6,3,-', '0,3',
      '-6,3,-', '4,3', '0,3', '4,3', '6,3,-', '0,9', '7,4,-', '4,4', '4,4', '4,4', '3,4', '2,4',
      '1,3', '3,3,-', '0,3', '3,3,-', '1,3,-', '0,9', '3,3', '1,6', '0,3', '5,3,-', '0,3', '-6,3,-', '0,3',
      -- 八行
      '-6,3,-', '4,3', '0,3', '4,3', '6,3,-', '0,9', '7,4,-', '6,4', '6,4', '6,4', '5,4', '4,4',
      '3,3', '1,3', '0,3', '6,3,-', '5,3,-', '0,9', '3,3', '1,6', '5,3,-', '0,6', '-6,3,-', '0,3',
      '-6,3,-', '4,3', '0,3', '4,3', '6,3,-', '0,9', '7,4,-', '4,4', '4,4', '4,4', '3,4', '2,4',
      -- 九行
      '1,3', '3,3,-', '0,3', '3,3,-', '1,3,-', '0,9', '1,3', '1,3', '0,3', '1,3', '0,3', '1,3', '2,3', '0,3',
      '3,3', '1,3', '0,3', '6,3,-', '5,3,-', '0,9', '1,3', '1,3', '0,3', '1,3', '0,3', '1,3', '2,3', '3,3',
      '0,24', '1,3', '1,3', '0,3', '1,3', '0,3', '1,3', '2,3', '0,3',
      -- 十行
      '3,3', '1,3', '0,3', '6,3,-', '5,3,-', '0,9', '3,3', '3,3', '0,3', '3,3', '0,3', '1,3', '3,3', '0,3',
      '5,3', '0,9', '5,6,-', '0,6', '3,3', '1,6', '5,3,-', '0,6', '-6,3,-', '0,3',
      '-6,3,-', '4,3', '0,3', '4,3', '6,3,-', '0,9', '7,4,-', '6,4', '6,4', '6,4', '5,4', '4,4',
      -- 十一行
      '3,3', '1,3', '0,3', '6,3,-', '5,3,-', '0,9', '3,3', '1,6', '5,3,-', '0,6', '-6,3,-', '0,3',
      '-6,3,-', '4,3', '0,3', '4,3', '6,3,-', '0,9', '7,4,-', '4,4', '4,4', '4,4', '3,4', '2,4',
      '1,3', '3,3,-', '0,3', '3,3,-', '1,3,-', '0,9', 
    },
    delay = 0.05
  },
  {
    notes = {
      -- 十一行尾
      '4,4,-', '4,4', '2,4,-', '2,4', '-3,4,-', '-3,4',
      -- 十二行
      '0,24', '4,4,-', '4,4', '2,4,-', '2,4', '-3,4,-', '-3,4', '0,24',
      '0,4', '-7,4,-', '-7,4', '5,4,-', '5,4', '-6,4,-', '-6,3', '0,21',
      '0,4', '-7,4,-', '-7,4', '5,4,-', '5,4', '-6,4,-', '-6,3', '0,21',
      -- 十三行
      '-6,4', '5,4', '-5,4', '4,6', '-6,6', '5,6', '-2,6', '1,6', '-5,6',
      '4,3', '6,3', '5,3', '4,3', '3,3', '2,3', '-1,3', '6,3,-', '3,4,-', '-3,4,-', '2,4,-', '-2,3,-', '0,9',
      '0,18', '4,3,-', '4,3', '2,4,-', '2,4', '-3,4,-', '-3,3', '0,9',
      -- 十四行
      '0,18', '4,3,-', '4,3', '2,4,-', '2,4', '-3,4,-', '-3,3', '0,9', '0,18', '-7,3,-', '-7,3',
      '5,4,-', '5,4', '-6,4,-', '-6,3', '0,9', '0,18', '-7,3,-', '-7,3',
      '5,4,-', '5,4', '-6,4,-', '6,3', '0,9', '0,12', '-6,4', '5,4', '-5,4',
      -- 十五行
      '4,6', '-6,6', '5,6', '-2,6', '1,6', '-5,6', '4,3', '6,3', '5,3', '4,3',
      '3,3', '2,3', '-1,3', '6,3,-', '3,4,-', '-3,4,-', '2,4,-', '-2,3,-', '0,21',
    },
    delay = 0.05
  },
  {
    notes = {
      -- 十五行尾
      '0,6', '4,3', '0,3', '4,3', '4,3', '2,1.5', '4,1.5', '0,3',
      -- 十六行
      '2,1.5', '4,1.5', '0,3', '2,1.5', '4,1.5', '0,3', '3,3', '0,3', '3,3', '0,3',
      '3,3', '1,1.5', '3,1.5', '0,3', '1,1.5', '3,1.5', '0,1.5', '1,1.5', '3,3', '4,3', '0,3',
      '4,3', '0,3', '4,3', '2,1.5', '4,1.5', '0,1.5', '2,1.5', '4,3', '0,3', '2,1.5', '4,1.5',
      '3,3', '0,3', '3,3', '0,3', '3,3', '1,1.5', '3,1.5', '0,3', '1,1.5', '3,1.5',
    },
    delay = 0.05
  }
}