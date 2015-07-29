# Fixed by Surumon May 9 2015 - Used file from caved to replace old script and update it.

sub EVENT_SPAWN {
  $x = $npc->GetX();
  $y = $npc->GetY();
  quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}

sub EVENT_ENTER {
  if (($ulevel == 1) && ($class eq "Paladin")) { 
		$client->Message(0,"Datur Nightseer glances your way. 'Ah a new recruit! Welcome, young one! Read the note in your inventory and then hand it to me when you wish to begin your training!'");
  }
}

sub EVENT_SAY {
if($text=~/hail/i){
quest::say("Welcome to our temple. We are the paladins of the Church of the Underfoot. I am lord of our holy order. I call upon you to assist us in the defense of Kaladim. Speak with the master paladins or priests and find ways to prove your allegiance to brell.");
}

sub EVENT_ITEM {
   if (plugin::check_handin(\%itemcount, 18768 => 1)) {
	quest::say("Welcome, we are the Paladins of the Underfoot. I am Datur, and I will help teach you the word and will of the Duke of Below, Brell Serilis. Here is our guild tunic. Let's get started, shall we?");
    # Dusty Tunic*
	quest::summonitem(13514);
	# Clerics of Underfoot
    quest::faction(44,10);
	# Kazon Stormhammer
    quest::faction(169,10);
	# Miners Guild 249
    quest::faction(219,10);
	quest::exp(1000);
	quest::ding();
   }
elsif (($faction <= 4) && (plugin::check_handin(\%itemcount, 12274 => 1))) {
      quest::say("The chalice is returned!! Praise be to Brell!! You have proven yourself to our church and have earned our respect. Let me welcome you into our brotherhood with the Cape of Underfoot. Wear it with pride as all of our finest paladins do.");
      # Clerics of Underfoot
	  quest::faction(44, 25);
	  # Kazon Stormhammer
      quest::faction(169, 25);
	  # Miners Guild 249
      quest::faction(219, 25);
	  quest::ding();
      quest::exp(100000);
      quest::givecash(0, 0, 0, 3);
	  # Cape of the Underfoot
      quest::summonitem(12281);
   }
   else {
   #do all other handins first with plugin, then let it do disciplines
   plugin::try_tome_handins(\%itemcount, $class, 'Paladin');
   plugin::return_items(\%itemcount);
   }
}

#END of FILE Zone:kaladimb  ID:67029 -- Datur_Nightseer