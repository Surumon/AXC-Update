##################################
## NPC: Biologist_Clinton 		##
## Zone: Qeynos2  				##
## Created by: Surumon 			##
## Made as Part of a Tutorial   ##
## for AX-Classic Repack 3.0.5	##
##################################

sub EVENT_SAY {
my $jobs = quest::saylink("jobs", 1);
my $science = quest::saylink("science", 1);
my $creatures = quest::saylink("creatures",1);
my $samples = quest::saylink("samples",1);
my $bats = quest::saylink("bats",1);
my $beetles = quest::saylink("beetles",1);
my $gnolls = quest::saylink("gnolls",1);
my $snakes = quest::saylink("snakes",1);
my $rats = quest::saylink("rats",1);
if ($text=~/hail/i) {
$client->Message(14,"Greetings, friend. I represent the Science League of Antonica.  I have some $jobs available if you would like to assist me in furthering our understanding of $science.");
}
if ($text=~/jobs/i) {
$client->Message(14,"I do indeed need assistance.  You see, I have been tasked with studying the biology of the lesser species here in Qeynos and the local area.  I do this by acquiring $samples from a few $creatures.");
}
if ($text=~/science/i) {
$client->Message(14,"Yes, not many people seem to believe in $science.  At it's heart, we're trying to understand the world we live in, without all this Magic or Gods.  I'm not well liked by those who believe in the Arcane Arts or Divine Intervention.  But I also not one to judge.  Believe in what you will!");
}
if ($text=~/creatures/i) {
$client->Message(14, "Yes, I require $samples from the following creatures: $bats, $beetles, $gnolls, $snakes, and $rats.");
}
if ($text=~/samples/i) {
$client->Message(14, "Samples are usually things that come from the creature.  For example, skins, meats, ears, eyes, and so forth.  Most creatures don't give these things willingly.");
}
if ($text=~/bats/i) {
$client->Message(14, "A piece of bat fur and two bat wings would probably be enough for my studies on local Qeynos bats.");
}
if ($text=~/beetles/i) {
$client->Message(14, "Two fire beetle eyes, a leg, and a piece of carapace should be sufficient for these local beetles.");
}
if ($text=~/gnolls/i) {
$client->Message(14, "Ah, these dogs that walk on two legs.  Very curious indeed.  I require a gnoll pup scalp, a gnoll ulna, a gnoll jawbone, and a gnoll backbone.");
}
if ($text=~/snakes/i) {
$client->Message(14, "Snakes, I hate snakes.  Get me a fang, snake scales, and two eggs.");
}
if ($text=~/rats/i) {
$client->Message(14, "Cute, cuddly, and carriers of much disease.  Bring me rat whiskers, rat fur, rat ears, and rat meat.  Do yourself a favor and don't eat the meat.  Trust me and $science on that one.");
}
}
sub EVENT_ITEM {
if (plugin::check_handin(\%itemcount, 13069 => 1, 13068 => 2)) {
$client->Message(14,"Excellent, I will compensate you accordingly.");
quest::ding();
quest::exp(100);
quest::givecash(0,5,0,0);
}
elsif (plugin::check_handin(\%itemcount, 10307 => 2, 13250 => 1, 27391 => 1)) {
$client->Message(14,"$name, I am glad to see you back with these.  I shall preserve them for later study.");
quest::ding();
quest::exp(200);
quest::givecash(0,5,2,0);
}
elsif (plugin::check_handin(\%itemcount, 13789 => 1, 20181 => 1, 27392 => 1, 27405 => 1)) {
$client->Message(14,"I shall store these very carefully.  More study must be done on these creatures.  Perhaps we can do that at a later time.");
quest::ding();
quest::exp(1000);
quest::givecash(7,3,5,0);
}
elsif (plugin::check_handin(\%itemcount, 13067 => 1, 13070 => 1, 13088 => 2)) {
$client->Message(14,"Those snakes have dangerous venom, I forgot to mention that.  Take these for the future, $name, with my apologies as well for the oversight.");
quest::ding();
quest::exp(200);
quest::givecash(8,3,0,0);
quest::summonitem(21779, 3);
}
elsif (plugin::check_handin(\%itemcount, 13064 => 1, 13071 => 1, 13072 => 1, 13408 => 1)) {
$client->Message(14,"Great job on the rat samples, $name.  I would never touch them myself, but I'm glad you weren't afraid to touch their filth for me.");
quest::ding();
quest::exp(300);
quest::givecash(1,4,2,0);
}
else {
plugin::return_items(\%itemcount);
$client->Message(14,"$name, this isn't what I wanted.  I will gain no knowledge from this.");
}
}