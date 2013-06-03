-------------------------------------------------------
-- 文件名　：config_new_year.lua
-- 创建者　：lgy
-- 创建时间：2013-1-17 18：00：00
-- 文件描述：德州春节活动配置文件
-------------------------------------------------------

--变量定义,配置信息
if not new_year then
    new_year = _S
    {
			--以下是方法
			
			--以下是变量及配置信息
			user_list = {},
			history_list = {},
			history_final_list = {},
    }    
end
new_year.CFG_START_TIME = "2013-02-06 09:00:00" --活动开始时间
new_year.CFG_END_TIME = "2013-02-24 23:59:59" --活动结束时间
new_year.CFG_RANK_START_TIME = "2013-02-25 01:00:00" --活动结束排行榜结束时间
new_year.CFG_RANK_KEEP_TIME = "2013-02-27 23:59:59" --活动结束排行榜结束时间
new_year.CFG_RANK_PHONE = 3 --活动前三名有实物奖



new_year.CFG_WATER_NUMBER = 15   --泉水加的心愿值数量
new_year.CFG_LOGIN_NUMBER = 8    --登录送心愿值数量
new_year.CFG_BUFF_TIME = 1*60*60 --buff时间（秒）
new_year.CFG_BUFF_COEFFICIENT = 1.25 --buff系数
new_year.CFG_BET_COEFFICIENT = 0.04 --BET系数
new_year.CFG_HISTORY_ME = 5      --保存自己的兑换记录5个
new_year.CFG_HISTORY_ALL = 20    --保存全服的兑换记录20个（有等级）
new_year.CFG_HISTORY_FINAL = 100 --游戏结束后保留的100个人获得大奖
new_year.CFG_CAR_MATCH = {
			[1]	=	15,--普通赛心愿值
			[2]	=	20,--名车赛心愿值
}

new_year.CFG_MATCH_COEFFICIENT = { --比赛场系数设置
			[1] = 0.1,
			[2] = 0.5,
			[3] = 1,
			[4] = 2,
}


--心愿值产出上限
new_year.bet_wishes_up = {
      [1]   = 150,     
      [10]  = 150,      
      [25]  = 150,    
      [50]  = 200,      
      [100] = 200,   
      [200] = 200,   
      [500] = 200,     
}

new_year.bet_wishes_game = {
      [1]   = 1,     
      [10]  = 2,      
      [25]  = 3,    
      [50]  = 4,      
      [100] = 5,   
      [200] = 6,   
      [500] = 7,     
}
new_year.number_min = 5 --牌桌至少5人比赛

--盲注对应心愿值配置
new_year.CFG_WISHES_CONFIG =
{
	[1] = 1.5,
	[10] = 2,
	[25] = 2.5,
	[50] = 3,
	[100] = 3.5,
	[200] = 3.5,
	[500] = 4,
	[1000] = 4.5,
	[2000] = 6,
	[5000] = 8,
	[10000] = 10,
	[20000] = 12,
	[25000] = 15,
	[40000] = 20,
}
--德州春节活动奖励表 1红包2宝石袋3道具箱4卷轴5车钥匙
new_year.BOX_ITEM_GIFT_ID={
		[200009]={
			[1] = {0,5000},
			[2] = {5000,20000}, 
			[3] = {20000,50000},
			[4] = {50000,200000},
			[5] = {200000,1000000},
			[6] = {8888888,8888888},
		},
		[200010]={
			[1] = {5001,2,8}, --蓝宝石
			[2] = {5002,1,4},  --绿宝石
			[3] = {5003,1,3}, -- 黄宝石
			[4] = {5004,1,2}, -- 红宝石
			[5] = {5005,1,2}, -- 黑宝石
			[6] = {5005,8,8}, -- 黑宝石					
		},
		[200011]={
			[1] = {-1,1,10},  --赠票1-10
			[2] = {2,1,4},  --喇叭1-4
			[3] = {1,1,3}, --T卡1-3
			[4] = {200001,1,2}, -- 缤纷道具盒
			[5] = {5020,1,1}, --动感lv包
			[6] = {-1,100,100},  --赠票100
		},
		[200012]={
			[1] = {100107},
			[2] = {100108},
			[3] = {100109},
			[4] = {100110},
			[5] = {100111},
			[6] = {100112},
			[7] = {100113},
			[8] = {100114},
			[9] = {100115},
		},
		[200013]={
			[1] = {5039},
			[2] = {5040},
			[3] = {5041},
			[4] = {5013}, 
			[5] = {5022}, 
			[6] = {5019}, 
			[7] = {5031},
			[8] = {5032},
			[9] = {5034},
			[10] = {5018},
			[11] = {5030},
			[12] = {5051},
			[13] = {5033},
			[14] = {5012},
			[15] = {5047},
			[16] = {5049},
			[17] = {5011},
			[18] = {5021},
			[19] = {5017},
			[20] = {5024},
			[21] = {5025},
			[22] = {5026},
			[23] = {5037},
			[24] = {5027},
			[25] = {5036},
		},
}
--物品价值
new_year.LEVEL_ITEM_GIFT={
		[200009]={
			[1] = 5000,
			[2] = 10000,
			[3] = 35000,
			[4] = 125000,
			[5] = 750000,
			[6] = 8888888,
		},
		[200010]={
			[1] = 50000, --蓝宝石
			[2] = 150000,  --绿宝石
			[3] = 200000, -- 黄宝石
			[4] = 750000, -- 红宝石
			[5] = 1500000, -- 黑宝石
			[6] = 8000000, -- 黑宝石					
		},
		[200011]={
			[1] = 50000,  --赠票1-10
			[2] = 60000,  --喇叭1-4
			[3] = 60000, --T卡1-3
			[4] = 75000, -- 缤纷道具盒
			[5] = 280000, --动感lv包
			[6] = 1000000,  --赠票100
		},
		[200012]={
			[1] = 3888,
			[2] = 28800,
			[3] = 88000,
			[4] = 580000,
			[5] = 880000,
			[6] = 2880000,
			[7] = 5880000,
			[8] = 8880000,
			[9] = 88880000,
		},
}

--德州春节活动奖励表 1红包2宝石袋3道具箱4卷轴5车钥匙
new_year.BOX_PORBABILITY_LIST={
		[200009]={
			[1] = 7500, 
			[2] = 1500,  
			[3] = 750,
			[4] = 165,  
			[5] = 70,
			[6] = 15,
		},
		[200010]={
			[1] = 7500, --蓝宝石
			[2] = 1500,  --绿宝石
			[3] = 750, -- 黄宝石
			[4] = 165, -- 红宝石
			[5] = 70, -- 黑宝石
			[6] = 15, -- 黑宝石					
		},
		[200011]={
			[1] = 7500, --蓝宝石
			[2] = 1500,  --绿宝石
			[3] = 750, -- 黄宝石
			[4] = 165, -- 红宝石
			[5] = 70, -- 黑宝石
			[6] = 15, -- 黑宝石			
		},
		[200012]={
			[1] = 4500,
			[2] = 3400,
			[3] = 1300,
			[4] = 375,
			[5] = 215,
			[6] = 120,
			[7] = 55,
			[8] = 25,
			[9] = 10,
		},
		[200013]={
			[1] = 333,
			[2] = 333,
			[3] = 333,
			[4] = 1600, 
			[5] = 1300, 
			[6] = 1100, 
			[7] = 900,
			[8] = 750,
			[9] = 650,
			[10] = 550,
			[11] = 451,
			[12] = 333,
			[13] = 250,
			[14] = 225,
			[15] = 200,
			[16] = 150,
			[17] = 125,
			[18] = 100,
			[19] = 100,
			[20] = 110,
			[21] = 40,
			[22] = 45,
			[23] = 10,
			[24] = 9,
			[25] = 3,
		},
}
--花概率
new_year.FLOWER_PORBABILITY_LIST={
		4000, 
		1500,   
		3000,  
		500,  
		1000,  
}
new_year.FLOWER_ITEM = {
				[1] = 200009, --新年红包
				[2] = 200010, --新年宝石袋
				[3] = 200011, --新年道具箱
				[4] = 200012, --新年卷轴
				[5] = 200013, --新年车钥匙
}


new_year.BOX_ITEM_GIFT_NAME = {
		[200010]={
			[1] = "蓝宝石",
			[2] = "绿宝石",
			[3] = "黄宝石",
			[4] = "红宝石",
			[5] = "黑宝石",
			[6] = "黑宝石",
		},
		[200011]={
			[1] = "赠票",
			[2] = "喇叭",
			[3] = "T卡",
			[4] = "缤纷道具盒",
			[5] = "动感lv包",
			[6] = "赠票",
		},	                
		[200012]={
			[1] = "奥拓图纸",
			[2] = "雪铁龙图纸 ",
			[3] = "甲壳虫图纸 ",
			[4] = "玛莎拉蒂图纸 ",
			[5] = "法拉利图纸",
			[6] = "兰博基尼图纸",
			[7] = "布加迪威龙图纸",
			[8] = "布加迪威龙（黄金版）",
			[9] = "神秘车图纸",
		},
}

new_year.CAR_VALUE_3 = {
  [5039] =  1888000,
  [5040] =  1888000,
  [5041] =  1888000,
}