#Fixed by Surumon April 30 2015
sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail, young adventurer!  I'm the chief overseer o' the Shamans o' Justice. We serve the will o' the Tribunal. Justice is our way. Within Halas. there are none who are above the scales o' justice. There are still some who have defied our laws. We wish to [apprehend the fugitives].");
}
if($text=~/i will apprehend the fugitives/i){
quest::say("Maybe so. However, there are some who may be too much fer ye to handle. I'll need to know if ye're a [young shaman] or a [standin' member of the court].");
}
if($text=~/i am a young shaman/i){
quest::say("We seek a former member who dared to curse the righteousness of the Tribunal. We'll have his head for that remark. His name is Granin O'Gill and he has run to the wastelands of Everfrost seeking safe haven. Find him. Return his head to me. Do so, and earn the ninth circle spell. Spirit o' the Bear. Go at once!");
}
if($text=~/I am a standing member of the court/i){
quest::say("At the moment. I've no word o' heretics about for ye to hunt down. I pray that there will be no more, too!"); }
}

sub EVENT_ITEM { 
 if	(plugin::check_handin(\%itemcount, 18761 => 1)){
	quest::say("I welcome ye to the ranks of the Shamen 'o Justice.  I pray ye do not insult our names.");
	quest::summonitem(13512);
	quest::ding();
	quest::faction(294, 5);
	quest::faction(213, 5);
	quest::faction(33, -3); 
	quest::faction(48, -3);
	quest::faction(90, -3);
	quest::exp(1000);
 }
 elsif	(plugin::check_handin(\%itemcount, 13729 => 1)){
	quest::say("We can now rest assured that justice has been served. Ye'll be a valuable asset to our court. Take and remember this spell, Spirit o' the Bear. I hope ye've attained the necessary skills to scribe it. If not, I'm sure ye soon will. Go now, and serve justice.");
	quest::summonitem(15279);
	quest::ding();
	quest::faction(294, 10); 
	quest::faction(213, 10); 
	quest::faction(33, -10); 
	quest::faction(48, -10); 
	quest::faction(90, -10); 
	quest::exp(5000);
	quest::givecash(0,0,4,0);
 }
 else {
  #do all other handins first with plugin, then let it do disciplines
  plugin::try_tome_handins(\%itemcount, $class, 'Shaman');
  plugin::return_items(\%itemcount);
  quest::say("I have no need for this.");
 }
}
#END of FILE Zone:halas  ID:29059 -- Margyn_McCann 

