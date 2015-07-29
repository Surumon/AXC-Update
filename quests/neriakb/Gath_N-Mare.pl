######################################
## NPC: Gath_N`Mare 				##
## Zone: NeriakB 					##
## Wizard GM note turnin 			##
## Revised by caved for AX-CLASSIC 	##
## EQWorld Server 					##
##		Fixed by Surumon May 5 2015 ##
######################################
sub EVENT_SAY {
if ($text=~/Hail/i){
quest::say("Young, young child.  Do you seek power?  Ultimate power?  A wizard seeks and knows nothing else.");
}
}
sub EVENT_ITEM {
if (plugin::check_handin(\%itemcount, 18755 => 1)){
quest::say("We shall see what greatness comes from you.  For now, see Morgolanth Tal'Raeloen and prove yourself to us.");
# A Stained Red Robe
quest::summonitem(13582);
quest::ding();
quest::exp(1000);
# The Spurned
quest::faction(331, 10);
# The Dead
quest::faction(322, -15);
}
else {
plugin::return_items(\%itemcount);
quest::say("Stop wasting my time, $name.");
}
}
#END of FILE Zone:neriakb ID:41053 -- Gath_N`Mare 

