# Shaman Epic 1.0
# A Greater Spirit
# Erud's Crossing (erudxing)
# Aramid September 2006

sub EVENT_SAY {
  if($text=~/hail/i) {
   quest::say("You have walked the path of patience and you now know what to expect. We are watchers. Our eyes are everywhere and we must be patient and quiet else we may miss what could be harmful. Can you sit still quietly and wait for just the right moment, then open your eyes with a fury and act with all the energy you have cultivated? Timing is everything, and without patience you cannot be sensitive to timing.");
   quest::say("You have shown your patience here and we believe you are ready to walk the [next path].");
  }
  if($text=~/next path/i) {
   quest::say("You know trust and patience. But before we can allow you to act in our name, we must know that when you do decide to act, you will make the right choices. We must ask that you now walk the path of wisdom. You must walk to the great plains and search out one of us. He is a wanderer, and it is his nature to drift with the winds and weather doing what he can to ensure understanding and longevity to all that respect their home.");
   quest::say("He will not be easy to find, though, and you must remember what you have learned down here to succeed in finding him. When you do, give him this gem and follow his instructions.");
   quest::summonitem(1667);
   quest::signalwith(98046,399);
   quest::signalwith(98051,399);
   quest::signalwith(98050,399);
   quest::depop();
  }
}


# End of File - NPCID 1667 - A_Greater_Spirit