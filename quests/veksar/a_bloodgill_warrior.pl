# Angelox

sub EVENT_DEATH{
 my $random_result = int(rand(100));
 my $a = 109093;
 my $x = $npc->GetX();
 my $y = $npc->GetY();
 my $z = $npc->GetZ(); 
 my $h = $npc->GetHeading();
 if (($random_result<=5) && ($rage3==2)){
  quest::emote ("frantically calls for help!");
  quest::spawn2($a,0,0,$x,$y,$z,$h);
  quest::delglobal("rage3");
  quest::setglobal("rage3",3,3,"F");
  $rage3=undef;
  }else{
  #do nothing
 }
}

# EOF zone: veksar NPCs: spawn a_raging_bloodgill_goblin (109093)