# Fixed by Surumon May 8 2015

sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Welcome to the mines of Kaladim!"); 
}
if($text=~/earn Mining Pick 628/i){
quest::say("So you have heard of Mining Pick 628 and feel you are ready to wield one? You shall earn one with the return of the ogre head of [Boog Mudtoe] and the 300 gold pieces he still owes me. Don't return unless you have the head and the 300 gold!"); 
}
if($text=~/Boog Mudtoe/i){
quest::say("Boog Mudtoe is one of the last remaining ogres of the Mudtoe clan. We helped him escape the assault of the Stormguard for a small fee. Unfortunately for him, we have come to believe his head to be more valuable than the fee. We hear there is someone near the port of Butcherblock who knows of the Mudtoe's whereabouts."); 
}
if($text=~/trades/i) {
		quest::say("I thought you might be one who was interested in the various different trades, but which one would suit you? Ahh, alas, it would be better to let you decide for yourself, perhaps you would even like to master them all! That would be quite a feat. Well, lets not get ahead of ourselves, here, take this book. When you have finished reading it, ask me for the [second book], and I shall give it to you. Inside them you will find the most basic recipes for each trade. These recipes are typically used as a base for more advanced crafting, for instance, if you wished to be a smith, one would need to find some ore and smelt it into something usable. Good luck!");
		quest::summonitem(51121);
	}
if($text=~/second book/i)	{
		quest::say("Here is the second volume of the book you requested, may it serve you well!");
		quest::summonitem(51122);
	}
}

sub EVENT_ITEM {
my $cash = $copper + $silver * 10 + $gold * 100 + $platinum * 1000;

if(plugin::check_handin(\%itemcount, 18767 => 1)){
		# New Character Note Hand In
		quest::say("Welcome to our ranks.  May you bring us much glory.  Seek out my good friend Diggins.  He could teach you a thing or two, and I might be able to teach you about some [trades].");
		# Ruined Miner's Tunic*
		quest::summonitem(13516);
		quest::ding();
		# Deeppockets
		quest::faction(77,10);
		# Miners Guild 628
		quest::faction(220,10);
		quest::exp(1000);
}
elsif(plugin::check_handin(\%itemcount, 13316 => 1 )){
	if ($cash >= 30000) {
		quest::say("Very good! You found him. His head shall bring us a great reward from the Stormguard. And as for you, here is your Mining Pick 628. Only a member of 628 can wield this fine weapon. We are the only ones who can wield it in such a way as to pierce our foes.");
		# Mining Pick 628
		quest::summonitem(12161);
		quest::ding();
		# Deeppockets
		quest::faction(77,25);
		# Miners Guild 628
		quest::faction(220,25);
		# Green Blood Knights
		quest::faction(128,25);
		# Circle of Unseen Hands
		quest::faction(33,-15);
		# Butcherblock Bandits
		quest::faction(29,-15);
		# Ebon Mask
		quest::faction(90,-15);
		# Kraknek Warriors
		quest::faction(57,-15);
		# Clurg
		quest::faction(46,-15);
		quest::exp(15000);
		}
      else {
		 quest::say("I shall not give you Miner Pick 628 until I have both his head and my 300 gold! Do not try to swindle this Dwarf!");
		 # Lose a little faction with Miner Guild 628 & Deeppockets for trying to cheat the system you bad person you.
		 quest::faction (220, -2);
		 quest::faction (77, -2);
         quest::givecash($copper, $silver, $gold, $platinum);
         # Ogre Head because you tried to cheat him out of money!
		 quest::summonitem(13316);
      }
	}
else {
  #do all other handins first with plugin, then let it do disciplines
  plugin::try_tome_handins(\%itemcount, $class, 'Rogue');
  plugin::return_items(\%itemcount);
}
}
#END of FILE Zone:kaladimb  ID:67019 -- Mater 
