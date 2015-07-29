NOTE: This log encapsulates changes for both the database and quest scripts.  You require both to be installed to play AX-Classic Repack with my update!

=============
= 7/22/2015 =
=============
-Fixed database having two entries for Beastlord starting spell Salve* ; Beastlords should only spawn with 1 Salve spell now.

-Adjusted starting item IDs to ensure missing ID was accounted for.

-Froglok note fix, attempt 2; Changed starting notes for Frogloks to be anywhere in world.

-Reset Minor Healing for Paladins back to level 6 for the time being.

=============
= 7/20/2015 =
=============
-Fixed database rule_values : Food consumption 100.

-Fixed database peq_admin : The default PHP editor password is now "password" ; For the love of all that is holy, change this if you actually want a secure login.  See the tutorial in the AXPoP-Database repository.

============
= 5/9/2015 =
============
-Updated quest for Bone Chips handed out by Gunlok Jure (quests\kaladimb\Gunlok_Jure.pl). Changed this quest to also reward faction for Paladins of Underfoot so people can grind out faction as there is no other way to earn this faction.

-Updated missing quest dialogue for Haldorak Foamymugs for "Brells Blessed Platemail Help." (quests\kaladimb\Haldorak_Foamymugs.pl).

-Fixed Dwarf Paladin trainer note hand in reward, XP, and appropriate faction hits.

-Fixed missing dialogue and attempted to repair associated quest for Dwarf Paladins ("Chalice of Conquest"). THIS QUEST MAY NEED FURTHER WORK – REVISIT IT LATER AS IT'S A BIG, BIG QUEST. (quests\kaladimb\Datur_Nightseer.pl).

-Changed Datur off a random spawn to a static spawn for new players so they can find him immediately instead of having to luck into his spawn.  He is now located in KaladimB at location 130.6, 1328.6, 36.5, 128.9 (X,Y,Z,Heading).

-Fixed Dwarf Cleric trainer note hand in reward, XP, and appropriate faction hits.

-Fixed syntax and updated "Soil of Underfoot" quest rewards (quests\kaladimb\Priestess_Ghalea.pl).

============
= 5/8/2015 =
============
-Fixed Dwarf Warrior trainer note hand in reward, XP, and appropriate faction hits. Fixed missing dialogue for quest hand in, tradeskill books, and updated syntax. Ensured quest, "The Mudtoes" is functioning as intended and gives proper rewards – also adjusted XP for quest difficulty (quests\kaladima\Furtog_Ogrebane.pl).

-Fixed script and dialogue for "Mudtoe" NPC in Butcherblock (quests\butcher\Glorin_Binfurr.pl).

-Fixed script, dialogue, and missing quest for Diggins (quests\kaladimb\Diggins.pl).

-Fixed Dwarf Rogue trainer note hand in reward, XP, and appropriate faction hits.  

-Fixed missing dialogue and updated syntax. Fixed missing quest for Miner Pick 628, added faction hits, adjusted XP reward as well (quests\kaladimb\Mater.pl).

============
= 5/5/2015 =
============
-Fixed Dark Elf Rogue trainer note hand in reward, XP, and appropriate faction hits. Fixed missing dialogue for both quest hand in and tradeskill books (quests\neriakc\Eolorn_J-Axx.pl).

-Fixed Dark Elf Cleric trainer note hand in reward, XP, and appropriate faction hits. Updated syntax for NPC (quests\neriakc\Perrir_Zexus.pl).

-Fixed Dark Elf Enchanter trainer note hand in reward, XP, and appropriate faction hits. Updated syntax for NPC (quests\neriakb\Camia_V-Retta.pl).

-Fixed Dark Elf Magician trainer note hand in reward, XP, and appropriate faction hits. Updated syntax for NPC (quests\neriakb\Jayna_D-Bious.pl).

-Fixed Dark Elf Necromancer trainer note hand in reward, XP, and appropriate faction hits. Updated syntax for NPC (quests\neriakc\Xon_Quexill.pl).

-Fixed Dark Elf Shadowknight trainer note hand in reward, XP, and appropriate faction hits. Updated syntax and added text so the NPC actually has something to say (quests\neriakc\Nezzka_Tolax.pl).

-Fixed Dark Elf Warrior trainer note hand in reward, XP, and appropriate faction hits. Updated dialogue for missing quests (quests\neriakb\Seloxia_Punox.pl).

-Dark Elf Warrior quest "Yegek's Test" needs revision, see appended script location for more info (quests\neriakb\Yegek_B-Larin.pl).

-Fixed Dark Elf Wizard trainer note hand in reward, XP, and appropriate faction hits. Updated dialogue to protect fourth wall (quests\neriakb\Gath_N-Mare.pl).

============
= 5/4/2015 =
============
-Revised and fixed Halas quest for Lysbith McNaff (quests\halas\Lysbith_McNaff.pl). Adjusted quest reward XP to better fit in line with difficulty of quest as well as adjusted syntax to match other quest syntax.

-Added missing quest dialogue for "what langseax" text to direct player to appropriate NPC.

-Revised and fixed Everfrost Peak quest for Megan OReilly (quests\everfrost\Megan_OReilly.pl). Adjusted quest reward XP to bring it more in line with the difficulty. Fixed syntax to ensure quest gives proper faction hits.

-Revised Halas NPCs adjusted on 4/30/2015 (see previous patch notes for exact script locations). Reverted syntax to fit with original EQ NPCs dialogue (use quest::say for future syntax for EQ NPCs).

-Revised Savage Armorer in Kerra Ridge to fit in with the classic NPCs and use normal quest text (i.e. - Savage Armorer says, "..."). This NPC is still using custom written dialogue.

-Removed purple links in quest text and reverted to the [brackets] for dialogue key words to fit in line with classic dialogue.

=============
= 4/30/2015 =
=============
-Added 9 Savageclaw Recipes for Gorget (because of Bone Chips having 9 separate variants).

-Added the Savageclaw Material and Mold recipes for Forges.

-Added Savage_Armorer to Kerra Island and accompanying script (quests\kerraridge\Savage_Armorer.pl).

-Savage Armorer will now give newbie Vah Shir Berserk Armor (Savageclaw Armor) quests, craft kit, and molds.

-Removed "Finding Bat Wings" book from newbie start equipment since the item is depreciated and not used for starting bot quest.

-Fixed and updated code for Barbarian Beastlord, Rogue, Shaman, and Warrior initial newbie note quest turn ins.

-Adjusted XP reward up to match server difficulty/XP curve, ensured newbie hand-ins also give newbie faction hits (quests\halas ... #Field_Priest_Kevin.pl...Dun_McDowell.pl...Kylan_O-Danos.pl...Margyn_McCann.pl).

-Added loot drop for Granin O'Gill and fixed Shaman quest, adjust XP from quest reward to be worth it. Added associated faction hits to quest as well.

-Added spawn for Granin O'Gill for Shaman quest (static for the time being). Set to 15 minutes per repop.

-Fixed Granin O'Gill damage output to be more in-line with listed quest.

-Added script checks for Tome skill hand-ins for Barbarian Shaman and Beastlord.

-In the event somebody is crazy enough to try to kill the Barbarian Beastlord, Rogue, Shaman, and Warrior guild masters, they'll take the appropriate faction hits now.

-All Berserkers now start with their level 1 throwing axe tomes.

=============
= 4/29/2015 =
=============
-Added Inner Fire* to all Shaman start spells.

-Added Spike of Disease* to all Shadowknight start spells.

-Added Salve* to all Beastlord starting spells.

-Added missing * for Salve and Spike of Disease.

-All newbie spells are all now correctly "No Trade / No Drop".

-Newbie Items : Bread Cakes*, Skin of Milk*, Mosquito Rations*, Backpack*, Dagger*, Short Sword*, Club*, Dull Axe* now correctly "No Trade".

-All Frogloks should start with their appropriate Guild Master note.

-Added second recipe for Arcane Order Cap Material to allow for both Cloth Caps to be used for recipe (IDs 1001 and 10152).

-Added second recipe for Arcane Order Robe Material to allow for both Cloth Shirts to be used for recipe (IDs 1004 and 94000).

-Fixed Arcane Order Bracers to ask for Cloth Wristband (ID 1009) instead of Mithril Boots (ID 1099; level 66 loot).

-Juegile Sohgohm (Arcane Order Quest Giver) now tells player correctly that they need a Matted Greater Cat Pelt for the Trousers (quests/qeynos/Juegile_Sohgohm.pl).

-Added Savageclaw Material recipes (Boots, Leggings, Bracer, Tunic, 9 Gloves, and 9 Coifs – 9 variants for 9 different database loot entries for "Bone Chips"--Still need to add 9 Gorget Material recipes and Savageclaw Armor Forge--recipes.

=============
= 4/28/2015 =
=============
-Altered Berserker starting weapon to be equipped in Primary Weapon slot on character creation.

=============
= 4/27/2015 =
=============
-Newbie spawn food and drink now each set to 10 per stack.

-Newbie Spawn spells reset to traditional * versions.

-Necromancers now start with Lifetap* and Minor Shielding*.

-Enchanters now start with Shallow Breath* and Minor Shielding*.

-Fixed the missing No Drop asterisk on Bread Cakes*.

-Tested spell level change on Minor Healing for Paladins – Minor Healing for Paladins reset to original level requirement of 9; this fix worked, but did not adjust the displayed level requirements in the spell description, spell lists will need to be provided for the players!

-Changed Database Ruleset : Food consumption 100, bot mana regen 85, dynamic zones 15 ; Database table changes: spells_new, rule_values, launcher, peq_admin