#spawn Vallon Zek

sub EVENT_DEATH {
        quest::signalwith(214123, 214056, 0);
}

sub EVENT_SIGNAL {
        quest::depop();
}


sub EVENT_SPAWN {
    $trigger_up = $entity_list->GetMobByNpcTypeID(214123); 
	
	if (!$trigger_up) {
		quest::depop();
	}
}

# End of File  Zone: PoTactics  ID: 214056 -- Decorin_Berik