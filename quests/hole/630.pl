############################################
# ZONE: Plane of Sky (airplane)
# LAST EDIT DATE: May 17, 2009
# VERSION: 1.0
# DEVELOPER: Congdar
#
# *** NPC INFORMATION ***
#
# NAME: skel_pet_63_
# ID: 630
# TYPE: Pet
# RACE: 85 (Spectre)
# LEVEL: 60
#
# *** QUESTS INVOLVED IN ***
#
# Plane of Sky Quirkiness
# Necromancer/Shadowknight Pets become a Pink Will-o-Wisp
# 
# *** QUESTS AVAILABLE TO ***
#
# All Necromancer/Shadowknight Pets
#
############################################

sub EVENT_SPAWN
{
    quest::npcrace(69);
    quest::npctexture(1);
    quest::npcsize(4);
}
#END of FILE Zone:airplane  ID:630 -- skel_pet_63_

