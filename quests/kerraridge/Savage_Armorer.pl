##################################
## NPC: Savage_Armorer 			##
## Zone: KerraRidge				##
## Created by: Surumon 			##
## Adds Berserker Newbie Armour	##
##   X     Y     Z  Heading		##
##  179.4 734.5 1.0  100.3		##
## Made as Part of a Tutorial   ##
## for AX-Classic Repack 3.0.5	##
##		Revised May 4 2015		##
##################################

sub EVENT_SAY {
my $armored = quest::saylink("armored", 1);
my $savageclaw = quest::saylink("savageclaw", 1);
my $coif = quest::saylink("coif", 1);
my $gorget = quest::saylink("gorget", 1);
my $bracer = quest::saylink("bracer", 1);
my $gloves = quest::saylink("gloves", 1);
my $boots = quest::saylink("boots", 1);
my $leggings = quest::saylink("leggings", 1);
my $tunic = quest::saylink("tunic", 1);
my $components = quest::saylink("components", 1);
my $mold = quest::saylink("mold", 1);
my $axe = quest::saylink("axe", 1);

if ($text=~/hail/i) {
quest::say("I am a very, very, very, very, very busy cat, $name.  Are you here to get savagely $armored?");
}
if ($text=~/armored/i) {
quest::say("Yes, yes.  I make armor, you see.  It's called [savageclaw] armor.  Only for Vah Shir Berserkers, no less.  I can also make a fine [axe].");
}
if ($text=~/savageclaw/i) {
quest::say("It is a fine, fine, fine, fine, fine, fine armor, and I can assist you in making the [coif], [gorget], [bracer], [gloves], [boots], [leggings], and [tunic].  Ask if you need help about any [mold] I give you or getting the [components] for the armor.  Also, take this crafting kit to make the armor.");
quest::summonitem(55422);
}
if ($text=~/coif/i) {
quest::say("To make the coif, the thing that goes on your head, it will require two small pieces of ore, one low quality rockhopper hide, one bone chip, and one shadeling silk.");
quest::summonitem(55415);
}
if ($text=~/gorget/i) {
quest::say("To create the gorget, you will require one small piece of ore, one medium quality rockhopper hide, two bone chips, and one shadeling silk.  I ensure you that this neck piece will not choke you.  If it does, I suggest getting a shrink spell cast upon only your neck.  What do you mean it doesn't work that way?");
quest::summonitem(55417);
}
if ($text=~/bracer/i) {
quest::say("You'll need one small piece of ore, one shadeling silk, and two sharp bloodling mandibles.  Remember, one bracer does not make two.  You may need to make another.  If you already have two, it is me being blind and not noticing.");
quest::summonitem(55416);
}
if ($text=~/gloves/i) {
quest::say("You shall require one small piece of ore, one bone chip, one shadeling silk, and one needle thin claw.  Were you expecting me to say more than that?");
quest::summonitem(55420);
}
if ($text=~/boots/i) {
quest::say("Two pieces of small ore, one low quality rockhopper hide, and one bloodling carapace.  I would not swim in them.  They will rust, and you might die.  Although, my skill as a blacksmith tells me that the shoes will survive.  Your skill at swimming, however, may be another thing entirely.");
quest::summonitem(55418);
}
if ($text=~/leggings/i) {
quest::say("Two pieces of small ore, one low quality rockhopper hide, and one sharp bloodling mandible.  Wear something under them or your screams of pulled hair will be mistaken for your berserk rage.  Unless that is what you want, then go wild $name!");
quest::summonitem(55412);
}
if ($text=~/tunic/i) {
quest::say("Two small pieces of ore, one low and one medium quality rockhopper hides one bloodling carapace, and one sharp bloodling mandible.  May it protect you better than my first chest piece that got my brother killed.  Why are you looking at me like that?  It is better $name, trust me!");
quest::summonitem(55421);
}
if ($text=~/mold/i) {
quest::say("Yes, yes.  They are used to make the final armor inside a forge.  Place the mold and the armor material in the forge when you are ready to make the armor.  If I do not give you the mold, I would forget later.  I am forgetful like that, you see.");
}
if ($text=~/components/i) {
quest::say("Yes, yes, and more yes.  Some of these come from creatures located in Shadeweaver's Thicket.  You can get there by using the cave in the nearby forest.  If you are looking for ore pieces, I hear the large people in the North have plenty on hand.  Good luck to you, $name.");
}
if ($text=~/axe/i) {
quest::say("Bring me four cracked rhino beetle carapaces and I shall fashion you a fine weapon.");
}
}
sub EVENT_ITEM {
if (plugin::check_handin(\%itemcount, 30660 => 4)) {
quest::say("This is a very good weapon if I do say so myself.  Pay no mind that I only usually work with armor and not weapons.  You may wish to keep an eye on the blades and do not swing it near others...");
quest::ding();
quest::exp(10000);
quest::summonitem(55423);
}
else {
plugin::return_items(\%itemcount);
quest::say("I cannot do anything with this, $name.");
}
}