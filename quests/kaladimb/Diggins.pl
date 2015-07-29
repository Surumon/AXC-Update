# Fixed by Surumon May 8 2015

sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("How is life treating you, bud?  What are you doing around the mines?  Either you are a [member of 628] or you are lost.  If you are lost, I can't help you.  I ain't no guide.");
}
if($text=~/i am a member of 628/i){
quest::say("It's my duty to assign [guild tasks] to all new members of Mining Guild 628.");
}
if($text=~/what guild tasks/i){
quest::say("I see you are interested in helping out. Good! For starters, go into the surrounding territory of Kaladim and destroy all the goblins. We hear they sometimes carry necklaces of ornate design. 628 wants these Runnyeye warbeads. You bring me no fewer than four and I will pay you and maybe, just maybe, I may have an extra piercing weapon lying around which has your name on it.");
}
if($text=~/parrying pick/i){
quest::say("So you want to earn a parrying pick? Consider it an honor that I am even speaking of this with you. The guild had these picks made just for us. It is a magic item used to fend off attacks. Before you can have one, you will have to do me a [great favor].");
}
if($text=~/great favor/i){
quest::say("Mater has asked me to exterminate the dwarven family of Dunfire. They were once members of our guild. They left and now use their talents to aid the Butcherblock bandits. We will not allow them to speak of the skills we taught them. Go and rip out their tongues. Return the tongues of Crytil, Rondo, Keldyn and Barma Dunfire and the parrying pick is yours.");
}
}

sub EVENT_ITEM {
if(plugin::check_handin(\%itemcount, 13931 => 4)){
		# Runnyeye Warbeads
		quest::say("Good work. We shall add these to the stash. Here is your reward, as promised. Be happy with it and continue your work. Maybe soon you shall be able to [earn a parrying pick].");
		# Rusty Shortened Spear
		quest::summonitem(7010);
		quest::ding();
		# Deeppockets
		quest::faction(77,10);
		# Miners Guild 628
		quest::faction(220,10);
		# Circle of Unseen Hands
		quest::faction(33,-5);
		# Butcherblock Bandits
		quest::faction(29,-5);
		# Ebon Mask
		quest::faction(90,-5);
		quest::givecash(0, 4, 0, 0);
		quest::exp(2000);
	}
elsif(plugin::check_handin(\%itemcount, 12170 => 1, 12172 => 1, 12174 => 1, 12178 => 1, )){
		# Parrying Pick
		quest::say("Excellent work! You are quite an asset to this mining guild. Please accept this Parrying Pick 628 for your great service. If you truly wish to serve our guild. Go and speak with Mater. Tell him you are [ready to earn Mining Pick 628].");
		# Parrying Pick 628
		quest::summonitem(12166);
		quest::ding();
		# Deeppockets
		quest::faction(77,20);
		# Miners Guild 628
		quest::faction(220,20);
		# Circle of Unseen Hands
		quest::faction(33,-10);
		# Butcherblock Bandits
		quest::faction(29,-10);
		# Ebon Mask
		quest::faction(90,-10);
		quest::exp(15000);
	}
  else {
  #do all other handins first with plugin, then let it do disciplines
  plugin::try_tome_handins(\%itemcount, $class, 'Paladin');
  plugin::return_items(\%itemcount); 
  }
}
#END of FILE Zone:kaladimb  ID:67017 -- Diggins 
