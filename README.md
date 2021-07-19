# pseudo-enchantments
[![Datapacks](https://img.shields.io/badge/See_more-datapacks-C7A978.svg)](https://github.com/itsschwer?tab=repositories&q=&type=&language=mcfunction&sort=)

A datapack implementing pseudo-enchantments that take effect either when equipped or in the inventory.

## Intention

This datapack aims to add some quality-of-life 'enchantments' to vanilla surival gameplay.

These pseudo-enchantments are obtained in the form of Enchanted Scrolls (as opposed to Enchanted Books) and take effect when in the inventory — even without being applied to an item.

However, as using a pseudo-enchantment in its Enchanted Scroll form would occupy an inventory slot, players can also apply pseudo-enchantments onto certain other items *(e.g. armor)* through the ***[kitsune](https://github.com/itsschwer/kitsune)*** datapack.

## Guide
*This datapack was developed in 1.17 (`"pack_format": 7`) but should be compatible with versions using an equivalent or greater `pack_format`, barring major changes to commands/datapacks.*

1. Download:
    - [Repository as a `.zip`](https://github.com/itsschwer/pseudo-enchantments/archive/refs/heads/master.zip) *(Code > Download ZIP)*
    - [Release](https://github.com/itsschwer/pseudo-enchantments/releases) *(will need to unzip before installing into a save)*
2. Install into a save like any other datapack.
3. Open the advancement menu to the *Schwer* tab to view the intended hints.

# Extinguish

*Isn't fire tick damage annoying? Especially when your armor effectively nullifies it (when at full hunger)? <u>Especially</u> after swimming in lava?*

*Extinguish* grants Fire Resistance while on fire outside of a fire source.

## Technical

TBA

## Functions
*Split between 'Available' (i.e. fine to call using `/function`) and 'Internal' (not intended to be called by `/function`).*

*Ordered alphabetically.*

### Available

#### `clear`
Removes the presence of this datapack by clearing the scheduled `tick` function.

#### `give_enchantment`
Gives the target entity *(only succeeds for players)* an Enchanted Scroll with *Extinguish*.

Used by the advancement `fire_kill` to give the recipient an *Extinguish* scroll as a reward.

### Internal

#### `apply_fire_resistance`
Gives the target 1 second of Fire Resistance.

#### `kitsune_enchant_check`
Integration with ***[kitsune](https://github.com/itsschwer/kitsune)***.

Calls `kitsune_enchant` when the following conditions are met:
- Kitsune is holding an item that can be 'blessed' with *Extinguish*
- The blessing material is an *Extinguish* scroll

Called through `#kitsune:try_enchant`.

#### `kitsune_enchant`
Integration with ***[kitsune](https://github.com/itsschwer/kitsune)***.

Applies *Extinguish* to the target Kitsune's held item. Also grants the advancement `kitsune:enchant`.

Called from `kitsune_enchant_check`.

#### `load`
Sets up this datapack by starting the `tick` loop.

Called through Minecraft's *`load.json`*.

#### `revoke_fire_kill_extra`
Revokes the advancement `fire_kill_extra`.

Used by the advancement `fire_kill_extra` to reward the recipient with an *Extinguish* scroll 10% of the time the player fulfills the advancment.

#### `tick`
The main update loop. Handles the *Extinguish* effect. Refer to *[Technical](#technical)*.

Initialises from `load`.

# References
*(Roughly in personal use order)*
- [Minecraft Wiki](https://minecraft.fandom.com/wiki/Minecraft_Wiki)
- [Misode's Data Pack Generators](https://misode.github.io/)
- [MCStacker](https://mcstacker.net/)
- [kitsune](https://github.com/itsschwer/kitsune)
    - *Integration — this datapack was originally contained within **kitsune***
