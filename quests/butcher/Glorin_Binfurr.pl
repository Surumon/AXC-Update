######################################
## NPC: Glorin_Binfurr 				##
## Zone: ButcherBlock Docks 		##
## Revised by caved for AX-CLASSIC 	##
## EQWorld Server 					##
##		Fixed by Surumon May 8 2015 ##
######################################

sub EVENT_SAY {

if($text=~/Hail/i){
quest::say("Pleasure to meet you. Keep your eye out for the [ship]. You don't want to miss it.");
}
if($text=~/ship/i){
quest::say("Aye, the Siren's Bane.  Good ship she is, no finer ship that I have ever known!  She will take you to Freeport if you can stomach the trip.");
}
if($text=~/mudtoes/i){
quest::say("Mudtoes!! I have heard tales of that foul clan of ogres. A few of the passengers aboard the ships have claimed to have seen one of them, off and on, amongst pirates in the Ocean of Tears!!");
}
}
#END of FILE Zone:butcher ID:68064 -- Glorin_Binfurr