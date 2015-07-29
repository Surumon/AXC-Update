sub EVENT_ENTERZONE {
no warnings 'all' ;
if (($Classic2012 < 1) | (!defined $Classic2012)){
 #$client->Message(14,"AXClassic mode.");
 if($ulevel >= 50){
  my @zonex = (1..17,19..31,33..38,40..47,49..63,67..70,73..75,78,82..84,97,98,100,101,104,106,121,156,165,166,189); #Trivial ZoneIDs array
  my $zoney = $zoneid;
  if (grep {$_ eq $zoney} @zonex){
      $client->Message(15,"This zone is trivial to you since you aquired level 50 - you are only allowed in this zone to complete quests and fight some of the higher level mobs.");
    }
  }
## Angelox: I'm gonna put in some random help for new players (new players are our life line :) - feel free to add.).
my $random_result = int(rand(100));
  if ($ulevel <= 3){
    if($random_result<=25){
       $client->Message(14,"AXClassic is much harder and challenging than normal EqEmu, you'll depend heavily on  Bot help for advancement."); 
       $client->Message(14,"Use your \"Find\" button and look for Aediles Thrall for Bot (Mercenary) help.");}
	elsif($random_result<=50){
       $client->Message(14,"There are updated client files posted at AXClassic Forums; http://forums.axclassic.com."); 
       $client->Message(14,"You will not be able to board the ship that sails from Freeport to Butcher and back without these files.");}
	elsif($random_result<=75){
       $client->Message(14,"Petitions are monitored constantly."); 
       $client->Message(14,"You first bot-helper is free (no quest needed), find and talk to Aediles Thrall about it.");}
	elsif($random_result<=100){
       $client->Message(14,"Most travel in AXClassic is done by looted or quested moonstones and quested gates or portals for your Druid or Wizard Mercenary Bot."); 
       $client->Message(14,"Use your \"Find\" button and look for the Anita Thrall for gate or portal quests. ");}
## Angelox: This is for anouncing events
   }
  if ($random_result<=2){
    $client->Message(14,"If you spot a bug while playing, you can send the report to us with the /bug command.");
  }
  elsif ($random_result<=4){
    $client->Message(14,"Don't forget: Rathe server restarts daily at 4:01am eastern time, server will stay down minutes for maintenance, then start again - make sure you're in a safe spot before the restart.");
  }
 # elsif ($random_result<=15){
 #   $client->Message(14,"The new ladder started on New Years 2012, New characters created on or after this date should talk to Champion Darkwater.");
 # }
  elsif (($event1==1)&&($random_result<=70)){ #New Year event
    $client->Message(14,"New Year event is active! Ask Ranger Band about the New [Year]. You must be level 10 or lower for this event.");
  }
  elsif (($event2==1)&&($random_result<=70)){ #Easter event
    $client->Message(14,"Easter event is active! Ask Ranger Band about the [Easter] egg hunt.");
  }
  elsif (($event3==1)&&($random_result<=70)){ #Bloodhunt event
    $client->Message(14,"Bloodhunt event is active! Ask Countess Zellia about the [bloodhunt].");
  }
  elsif (($event4==1)&&($random_result<=70)){ #Bloodhunt event
    $client->Message(14,"Pitch Black event is active! Head on out to Ocean of Tears when it gets dark.");
  }
  elsif (($event5==1)&&($random_result<=70)){ #Random Moonstone event
    $client->Message(14,"Ranger Bands dislike for Orcs event is active! Talk to Ranger Band. You must be level 20 or lower for this event.");
  }
## Angelox: This is for CR Stone in case of death under level 10;
  #if (($ulevel <= 9) && ($zoneid != 165) && (${$name}!=2)) {
  if (($ulevel <= 9) && (!defined(${$name}))) {
   if ($ulevel == 1){
    $client->Message(14,"For game play in Shadeweavers Thicket, Ask Ranger Band about the [Moonstone].");}
   (${$name})=undef;
   quest::delglobal("$name");
   quest::setglobal("$name",0,7,"F");
  }
  elsif (($ulevel <= 9) && ($zoneid == 165) && (${$name}!=2)){
    $client->Message(14,"Ask Ranger Band again about a [Moonstone] for returning.");
    (${$name})=undef;
    quest::delglobal("$name");
    quest::setglobal("$name",2,7,"F");
  }
  elsif (($ulevel >= 10 && $ulevel <= 15) && (${$name}<=2)){
     if (defined (${$name})){
      $client->Message(14,"There are more Moonstone quests available, ask Champion Darkwater about the [Moonstones].");
      quest::delglobal("$name");
      (${$name})=undef;
     }
  }
  elsif ((!plugin::check_hasitem($client, 138)) && (defined ${$name}==2)){
    quest::summonitem(140);
   }
  #elsif (!defined($tswitch)) {
   # quest::setglobal("tswitch",6,5,"F");
   # $taunt_switch = undef;
 # }
 }
elsif ($Classic2012 > 0) {
 #$client->Message(14,"Classic 2011 mode.");
   if (!defined $bot_spell_6){
    quest::setglobal("bot_spell_1",3,5,"F");
    $bot_spell_1 = undef;
    quest::setglobal("bot_spell_5",6,5,"F");
    $bot_spell_5 = undef;
    quest::setglobal("bot_spell_6",2,5,"F");
    $bot_spell_6 = undef;
    quest::setglobal("bot_spell_2",3,5,"F");
    $bot_spell_2=undef;
    quest::setglobal("bot_spell_3",3,5,"F");
    $bot_spell_3=undef;
    quest::setglobal("bard_spell_1",1,5,"F");
    $bard_spell_1 = undef;
    $client->Message(14,"Bot spells scribed, will become available as you level.");
    quest::setglobal("bot_spawn_limit", 1, 5, "F");
    $bot_spawn_limit = undef;
    $client->Message(6,"You receive a character flag!");
    $client->Message(14,"You have one bot available for creation, use the '#bot create' command.");
    }
   elsif (($ulevel >= 10)&&($ulevel <= 19)&&($qglobals{bot_spawn_limit} <= 1)){ 
    quest::setglobal("bot_spawn_limit", 2, 5, "F");
    $bot_spawn_limit = undef;
    $client->Message(6,"You receive a character flag!");
    $client->Message(14,"You have your second bot available for creation, use the '#bot create' command.");
    }
   elsif (($ulevel >= 20)&&($ulevel <= 29)&&($qglobals{bot_spawn_limit} <= 2)){ 
    quest::setglobal("bot_spawn_limit", 3, 5, "F");
    $bot_spawn_limit = undef;
    $client->Message(6,"You receive a character flag!");
    $client->Message(14,"You have your third bot available for creation, use the '#bot create' command.");
    }
   elsif (($ulevel >= 30)&&($ulevel <= 39)&&($qglobals{bot_spawn_limit} <= 3)){ 
    quest::setglobal("bot_spawn_limit", 4, 5, "F");
    $bot_spawn_limit = undef;
    $client->Message(6,"You receive a character flag!");
    $client->Message(14,"You have your fourth bot available for creation, use the '#bot create' command.");
    }
   elsif (($ulevel >= 40)&&($ulevel <= 49)&&($qglobals{bot_spawn_limit} <= 1)){ 
    quest::setglobal("bot_spawn_limit", 5, 5, "F");
    $bot_spawn_limit = undef;
    $client->Message(6,"You receive a character flag!");
    $client->Message(14,"You have your fifth bot available for creation, use the '#bot create' command.");
    }
    ## Angelox: This is for anouncing events
   my $random_result = int(rand(100));
   if ($random_result<=2){
    $client->Message(14,"If you spot a bug while playing, you can send the report to us with the /bug command.");
    $client->Message(14,"Petitions are monitored constantly."); 
    }
   elsif ($random_result<=4){
    $client->Message(14,"This server restarts daily at 4:01am eastern time, server will stay down a few minutes for maintenance, then start again - make sure you're in a safe spot before the restart.");
    }
  }
}
