// This script can be used to begin a conversation by using a placeable.
// This script goes in the OnUsed of the placeable. The conversation file goes
// in the advanced tab of the placeable itself

void main()
{

object oPC = GetLastUsedBy();

if (!GetIsPC(oPC)) return;

object oTarget;
oTarget = OBJECT_SELF;

AssignCommand(oTarget, ActionStartConversation(oPC, ""));

}

