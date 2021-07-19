# Add lore imitating enchantment text
data modify entity @s HandItems[0].tag.display.Lore append value '{"text":"Extinguish","color":"#7373DD","italic":false}'
# Add enchantment glint
execute unless data entity @s HandItems[0].tag.Enchantments run data modify entity @s HandItems[0].tag.Enchantments append value {}

# Grant `kitsune:enchant` advancement
data modify storage schwer:sks_store Thrower set from entity @e[type=item,nbt={OnGround:1b},nbt={Item:{id:"minecraft:flower_banner_pattern"}},limit=1,sort=nearest,distance=..1.425,nbt={Item:{tag:{display:{Lore:['{"text":"Extinguish","color":"#7373DD","italic":false}']}}}}] Thrower
execute as @a run function kitsune:grant_advancement
data remove storage schwer:sks_store Thrower
# Play sound
function kitsune:kitsune_bless

# Consume enchantment material
kill @e[type=item,nbt={OnGround:1b},nbt={Item:{id:"minecraft:flower_banner_pattern"}},limit=1,sort=nearest,distance=..1.425,nbt={Item:{tag:{display:{Lore:['{"text":"Extinguish","color":"#7373DD","italic":false}']}}}}]
# Play sound
