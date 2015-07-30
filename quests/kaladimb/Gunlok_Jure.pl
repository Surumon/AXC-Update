#Fixed by Surumon July 30 2015
sub EVENT_SAY {
# Bone Chips (Kaladim) (START)
  if($text=~/hail/i) {
    quest::say("Hail, $name!  Bow before the greatness of the Clerics of Underfoot!  It is good to be a paladin in such an order as ours - to fight the good fight and defend Kaladim from the evil and undead.  If you be a paladin, then I pray you find the [courage to battle the undead].");
  }
  if($text=~/courage/i) {
    quest::say("Yes!!  To battle the undead is our greatest call.  There has been a rise in the number of dwarven skeletons seen in the Butcherblocks.  If you are a true member of this order, I shall reward you for the return of four bone chips.  We shall defend our land from evil!");
  }
  if($text=~/remains of Cromil/i) {
  quest::say("My brother Cromil ventured to the Plains of Karana on the continent of Antonica. He never returned. Rumor has it that his undead skeleton is now part of an undead army in the plains. To end this curse, I ask all good paladins of this temple to return his bones to me. Nothing less than a spell is my reward for such a deed.");
  }
# Bone Chips (Kaladim) (END)
}

sub EVENT_ITEM {
# Bone Chips (Kaladim) (START)
  if(plugin::check_handin(\%itemcount, 13073 => 4)) {
    quest::say("You have done well. We thank you for your deed with this humble reward. The power behind the raising of our dead shall soon be found. You will earn more respect with more bone chips. I only wish you could assist in the return of the [remains of Cromil].");
    quest::summonitem(quest::ChooseRandom(2116,2122,5013,5014,5016,5023,6011,13002,13003));
    quest::exp(2000);
    quest::givecash(7,10,0,0);
	# Clerics of Underfoot
    quest::faction(44,10);
	# Kazon Stormhammer
    quest::faction(169,10);
	# Miners Guild 249
    quest::faction(219,10);
	# Paladins of Underfoot
    quest::faction(246,10);
# Bone Chips (Kaladim) (END)
  } 
  elsif (plugin::check_handin(\%itemcount, 13332 => 1)) {
	quest::say("Many thanks, my friend. Now my brother can rest in peace. Please take this spell. May it serve you well.");
    quest::summonitem(15223);
    quest::exp(50000);
    quest::givecash(0,0,5,0);
	# Clerics of Underfoot
    quest::faction(44,20);
	# Kazon Stormhammer
    quest::faction(169,20);
	# Miners Guild 249
    quest::faction(219,20);
	# Paladins of Underfoot
    quest::faction(246,20);
	# Qeynos Guards
    quest::faction(135,20);
	# Priests of Life
    quest::faction(257,20);
	# Bloodsabers
    quest::faction(21,-10);
	# Corrupt Qeynos Guards
    quest::faction(53,-10);
	# Opal Dark Briar
    quest::faction(235,-10);
  }
  else {
  #do all other handins first with plugin, then let it do disciplines
  plugin::try_tome_handins(\%itemcount, $class, 'Paladin');
  plugin::return_items(\%itemcount);
 }
}

