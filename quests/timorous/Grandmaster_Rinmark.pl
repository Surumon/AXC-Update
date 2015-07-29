#Grandmaster Rinmark is spawned from an iksar master in this zone and is part of the Test of Patience. Please see the iksar master's quest file for details.

sub EVENT_SPAWN {
  quest::settimer("Depop1",90);
}

sub EVENT_TIMER {
 if ($timer eq "Depop1") {
  my $x = $npc->GetX();
  my $y = $npc->GetY();
  my $z = $npc->GetZ();
  my $h = $npc->GetHeading();
  quest::emote("seems to lose a small amount of concentration.");
  quest::spawn2(96326,0,0,$x,$y,$z,$h);
  quest::stoptimer("Depop1");
  quest::depop();
 }
}

#Submitted by: Jim Mills
