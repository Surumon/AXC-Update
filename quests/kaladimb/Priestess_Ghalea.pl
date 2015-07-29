##############################################
#  NPC:  Priestess Ghalea					##
#  Zone: North Kaladim						##
#  Quests: Multiple --> Soil of Underfoot	##
#  Author:  Unknown							##
#  Updated:  Andrew80k						##
# 			Fixed by Surumon May 9 2015		##
##############################################

sub EVENT_SAY { 
   if($text=~/Hail/i){
      quest::say("Welcome to the Church of Underfoot.  Please open your soul to the greatness of Brell Serilis.  May he guide you in all your future endeavors. And may your soles long for the [Soil of Underfoot].");
   }
   if($text=~/soil of underfoot/i) {
	  if ($faction >= 4 ) {
         quest::say("The Clerics of Underfoot have yet to see your faith directed towards our wills.  Perhaps you should assist Master Gunlok Jure in the crusade against the undead.");
      }
	  else {
         quest::say("I can trust you with the soil of Underfoot, but first you must obtain four portions of fairy dust.  Return them to me and I shall mix it and pray over it. Then I shall give you a pouch of soil of Underfoot.");
      }
   }
}
sub EVENT_ITEM {
    if (plugin::check_handin(\%itemcount, 12106 => 4)) {
	  if ($faction >= 4 ) {
	  quest::say("May the mighty power of Brell saturate this soil with his divinity.  Here you are, my noble friend.  You may have a pouch of the soil of Underfoot.");
	  quest::summonitem(12282);
	  quest::ding();
	  # Clerics of Underfoot
	  quest::faction(44,2);
	  # Khazon Stormhammer
	  quest::faction(169,2);
	  # Miners Guild 249
	  quest::faction(219,2);
	  quest::givecash(0,0,4,1);
	  quest::exp(15000);
	  }
	  else {
	  quest::say("Alas, even though you know what I require, I cannot trust you with this just yet.  Return when you have improved yourself in our view.");
	  quest::summonitem(12106, 4);
	  }
   }  
   elsif (plugin::check_handin(\%itemcount, 18765 => 1)) {
      quest::say("Welcome to the Underfoot Cathedral. I am High Priestess Ghalea. Here is your guild tunic. Now. let's get you started helping us spread the will of Brell.");
	  # Dusty Tunic*
	  quest::summonitem(13514);
	  quest::ding();
      # Clerics of Underfoot
	  quest::faction(44,10);
      # Khazon Stormhammer
	  quest::faction(169,10);
      # Miners Guild 249
	  quest::faction(219,10);
	  quest::exp(1000);
   }
   else {
    quest::say("I do not need this, friend.");
    plugin::return_items(\%itemcount);
   }
}
#END of FILE Zone:kaladimb  ID:67024 -- Priestess_Ghalea

