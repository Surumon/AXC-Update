#Fixed by Surumon April 30 2015
#Revised by Surumon May 2 2015
sub EVENT_SAY { 
if ($text=~/Hail/i){
quest::say("Hail to ye self."); 
}
}
sub EVENT_ITEM { 
 if (plugin::check_handin(\%itemcount,18762 => 1){
	quest::say("Ah... ye wish to be a member o' the White Rose, then, eh? Well, let's train ye fer a bit and see if ye've got what it takes.");
	quest::summonitem(13513);
	quest::faction(275, 5);
	quest::ding();
	quest::exp(1000);
 } else {
  #do all other handins first with plugin, then let it do disciplines
  plugin::try_tome_handins(\%itemcount, $class, 'Rogue');
  plugin::return_items(\%itemcount);
  quest::say("I have no need for this.");
 }
}
#END of FILE Zone:halas  ID:29069 -- Dun_McDowell 

