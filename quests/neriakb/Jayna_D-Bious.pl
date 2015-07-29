######################################
## NPC: Jayna_D`Bious 				##
## Zone: NeriakB 					##
## Magician GM note turnin			##
## Revised by caved for AX-CLASSIC	##
## EQWorld Server 					##
## 		Fixed by Surumon May 5 2015 ##
######################################
sub EVENT_SAY {
if ($text=~/Hail/i){
quest::say("Yes $name, what is it?!  I am busy, and unless you are a Magician, you shall leave me be.");
}
}
sub EVENT_ITEM {
if(plugin::check_handin(\%itemcount, 18754 => 1)){
quest::say("It is about time you arrived!  We have little time and much to do!  Seek out Morgolanth Tal'Raeloen and proof yourself to us.  If you wish to know about [trades], speal to Camia V'Retta about it.");
	quest::summonitem(13583);
	quest::ding();
	quest::exp(1000);
	# The Spurned
	quest::faction(331, 10);
	# The Dead
	quest::faction(322, -15);
}
else {
plugin::return_items(\%itemcount);
quest::say("I don't need these take them back.");
}
}
#END of FILE Zone:neriakb ID:41054 -- Jayna_D`Bious 

