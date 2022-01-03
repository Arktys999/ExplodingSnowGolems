# All the right to this code go to Arktys

# If I see anyone use this code code or idea without credit I will be sad and do something about it

# Please Dont steal my ideas. Thank you 

execute at @s run summon snow_golem ~ ~ ~ {Tags:["sss_snowman","sss_inAir","sss_spawned"]}

data modify entity @e[tag=sss_snowman,limit=1,sort=nearest] Motion set from entity @s Motion

tag @e[tag=sss_snowman,limit=1,sort=nearest] remove sss_snowman

execute as @e[type=snow_golem] unless block ~ ~ ~ air run tag @s remove sss_inAir

execute as @e[type=snow_golem,tag=sss_inAir,tag=sss_spawned] at @s if entity @e[type=!snow_golem,type=!player,type=!snowball,type=!item,type=!experience_bottle,type=!experience_orb,type=!falling_block,type=!armor_stand,type=!item_frame,type=!minecart,type=!spectral_arrow,type=!arrow,type=!firework_rocket,distance=..2,nbt={IsBaby:0b}] run summon zombie ~ ~ ~ {IsBaby:1b}
execute as @e[type=snow_golem,tag=sss_inAir,tag=sss_spawned] at @s if entity @e[type=!snow_golem,type=!player,type=!snowball,type=!item,type=!experience_bottle,type=!experience_orb,type=!falling_block,type=!armor_stand,type=!item_frame,type=!minecart,type=!spectral_arrow,type=!arrow,type=!firework_rocket,distance=..2,nbt={IsBaby:0b}] run summon zombie ~ ~ ~ {IsBaby:1b}

execute as @e[type=snow_golem,tag=sss_inAir,tag=sss_spawned] at @s if entity @e[type=!snow_golem,type=!player,type=!snowball,type=!item,type=!experience_bottle,type=!experience_orb,type=!falling_block,type=!armor_stand,type=!item_frame,type=!minecart,type=!spectral_arrow,type=!arrow,type=!firework_rocket,distance=..2,nbt={IsBaby:1b}] run effect give @e[type=zombie,limit=2,sort=nearest,nbt={IsBaby:1b}] resistance 2 255 true
execute as @e[type=snow_golem,tag=sss_inAir,tag=sss_spawned] at @s if entity @e[type=!snow_golem,type=!player,type=!snowball,type=!item,type=!experience_bottle,type=!experience_orb,type=!falling_block,type=!armor_stand,type=!item_frame,type=!minecart,type=!spectral_arrow,type=!arrow,type=!firework_rocket,distance=..2,nbt={IsBaby:1b}] run effect give @e[type=zombie,limit=2,sort=nearest,nbt={IsBaby:1b}] slow_falling 15 255 true

execute as @e[type=snow_golem,tag=sss_inAir,tag=sss_spawned] at @s if entity @e[type=!snow_golem,type=!player,type=!snowball,type=!item,type=!experience_bottle,type=!experience_orb,type=!falling_block,type=!armor_stand,type=!item_frame,type=!minecart,type=!spectral_arrow,type=!arrow,type=!firework_rocket,distance=..2] run summon creeper ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"0",NoAI:1b,ExplosionRadius:2b,Fuse:0,ignited:1b}

kill @s
