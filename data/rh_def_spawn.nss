/*******************************************************************************
Script:     Default NPC OnSpawn script modified for Hour-based Waypoints
Filename:   rh_def_spawn
Modifier:   Thomas J. Hamman (Rhone)

These changes were made from the original nw_c2_default9:

1.  SpawnIn conditions allowing custom user-defined events are all uncommented.

2.  The commented SpawnIn conditions for ambient animations have been replaced
    with commented out commands for setting the nAmbientAnimations local
    variable.  One of these should be uncommented _only_ for NPCs which have no
    waypoints or posts!  For NPCs to use ambient animations at a post, you can
    set nAmbientAnimations for the post in the NPC's OnUserDefined.
*******************************************************************************/

#include "NW_O2_CONINCLUDE"
#include "NW_I0_GENERIC"

void main()
{
// OPTIONAL BEHAVIORS (Comment In or Out to Activate ) ****************************************************************************
     //SetSpawnInCondition(NW_FLAG_SPECIAL_CONVERSATION);
     //SetSpawnInCondition(NW_FLAG_SPECIAL_COMBAT_CONVERSATION);
                // This causes the creature to say a special greeting in their conversation file
                // upon Perceiving the player. Attach the [NW_D2_GenCheck.nss] script to the desired
                // greeting in order to designate it. As the creature is actually saying this to
                // himself, don't attach any player responses to the greeting.

     //SetSpawnInCondition(NW_FLAG_SHOUT_ATTACK_MY_TARGET);
                // This will set the listening pattern on the NPC to attack when allies call
     //SetSpawnInCondition(NW_FLAG_STEALTH);
                // If the NPC has stealth and they are a rogue go into stealth mode
     //SetSpawnInCondition(NW_FLAG_SEARCH);
                // If the NPC has Search go into Search Mode
     //SetSpawnInCondition(NW_FLAG_SET_WARNINGS);
                // This will set the NPC to give a warning to non-enemies before attacking

     //SetSpawnInCondition(NW_FLAG_SLEEP);
                //Creatures that spawn in during the night will be asleep.
     //SetSpawnInCondition(NW_FLAG_DAY_NIGHT_POSTING);
     //SetSpawnInCondition(NW_FLAG_APPEAR_SPAWN_IN_ANIMATION);

         //Here are the new commands for enabling ambient animations (only for NPCs with no waypoints or posts!).
         //Uncomment one, if desired, but not both.
     //SetLocalInt(OBJECT_SELF, "nAmbientAnimations", 1);   //Enable mobile ambient animations for NPC with no waypoints
     //SetLocalInt(OBJECT_SELF, "nAmbientAnimations", 2);   //Enable immobile ambient animations for NPC with no waypoints

    // NOTE: ONLY ONE OF THE FOLLOWING ESCAPE COMMANDS SHOULD EVER BE ACTIVATED AT ANY ONE TIME.
    //SetSpawnInCondition(NW_FLAG_ESCAPE_RETURN);    // OPTIONAL BEHAVIOR (Flee to a way point and return a short time later.)
    //SetSpawnInCondition(NW_FLAG_ESCAPE_LEAVE);     // OPTIONAL BEHAVIOR (Flee to a way point and do not return.)
    //SetSpawnInCondition(NW_FLAG_TELEPORT_LEAVE);   // OPTIONAL BEHAVIOR (Teleport to safety and do not return.)
    //SetSpawnInCondition(NW_FLAG_TELEPORT_RETURN);  // OPTIONAL BEHAVIOR (Teleport to safety and return a short time later.)

// CUSTOM USER DEFINED EVENTS
/*
    The following settings will allow the user to fire one of the blank user defined events in the NW_D2_DefaultD.  Like the
    On Spawn In script this script is meant to be customized by the end user to allow for unique behaviors.  The user defined
    events user 1000 - 1010
*/
    SetSpawnInCondition(NW_FLAG_HEARTBEAT_EVENT);        //OPTIONAL BEHAVIOR - Fire User Defined Event 1001
    SetSpawnInCondition(NW_FLAG_PERCIEVE_EVENT);         //OPTIONAL BEHAVIOR - Fire User Defined Event 1002
    SetSpawnInCondition(NW_FLAG_ATTACK_EVENT);           //OPTIONAL BEHAVIOR - Fire User Defined Event 1005
    SetSpawnInCondition(NW_FLAG_DAMAGED_EVENT);          //OPTIONAL BEHAVIOR - Fire User Defined Event 1006
    SetSpawnInCondition(NW_FLAG_DISTURBED_EVENT);        //OPTIONAL BEHAVIOR - Fire User Defined Event 1008
    SetSpawnInCondition(NW_FLAG_END_COMBAT_ROUND_EVENT); //OPTIONAL BEHAVIOR - Fire User Defined Event 1003
    SetSpawnInCondition(NW_FLAG_ON_DIALOGUE_EVENT);      //OPTIONAL BEHAVIOR - Fire User Defined Event 1004
    SetSpawnInCondition(NW_FLAG_DEATH_EVENT);            //OPTIONAL BEHAVIOR - Fire User Defined Event 1007

// DEFAULT GENERIC BEHAVIOR (DO NOT TOUCH) *****************************************************************************************
    SetListeningPatterns();                             // Goes through and sets up which shouts the NPC will listen to.
    SignalEvent(OBJECT_SELF, EventUserDefined(2000));   // Signal Event 2000 for the NPC to run HourWayPoints.
    GenerateNPCTreasure();                              //* Use this to create a small amount of treasure on the creature.
}


