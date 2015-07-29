## Fixed by Surumon May 5 2015 - DE SK Trainer
sub EVENT_SAY {
  if($text=~/hail/i) {
    quest::say("Welcome to the Lodge of the Dead. I am Nezzka Tolax and with my training you will learn to master teh ways of the Shadowknight. Read the note in your inventory and hand it to me when you are ready to begin your training.");
  }
  if ($text=~/trade/i) {
    quest::say("I thought you might be one who was interested in the various different trades, but which one would suit you? Ahh, alas, it would be better to let you decide for yourself, perhaps you would even like to master them all! That would be quite a feat. Well, lets not get ahead of ourselves, here, take this book. When you have finished reading it, ask me for the [second book], and I shall give it to you. Inside them you will find the most basic recipes for each trade. These recipes are typically used as a base for more advanced crafting, for instance, if you wished to be a smith, one would need to find some ore and smelt it into something usable. Good luck!");
    quest::summonitem(51121); 
  }
  if ($text=~/second book/i) {
    quest::say("Here is the second volume of the book you requested, may it serve you well!");
    quest::summonitem(51122); 
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 18757 => 1)){
quest::say("Hmmm, I hope you're tougher than you look. Here, put this on. Go find Ulraz, he'll beat you into shape. There's no turning back now, punk. So, you'd better do well, got it?  Ask me if you need info on [trade] skills.");
#Black Training Tunic
quest::summonitem(13586);
# The Dead
quest::faction(322,10);
# Queen Cristanos Thex
quest::faction(268,10);
# King Naythox Thex
quest::faction(177,-15);
# Keepers of the Art
quest::faction(170,-15);
# Eldritch Collective
quest::faction(91,-15);
# Primordial Malice
quest::faction(260,-15);
quest::ding();
quest::exp(1000);
}
  else {
    #do all other handins first with plugin, then let it do disciplines
    plugin::try_tome_handins(\%itemcount, $class, 'Shadowknight');
    plugin::return_items(\%itemcount);
  }
}
#END of FILE Zone:neriakc  ID:42069 -- Nezzka_Tolax 
