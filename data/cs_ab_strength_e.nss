//::///////////////////////////////////////////////
//:: CS_AB_STRENGTH_E.nss
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Attached to the dialogue file.
    Easy check for ABILITY_STRENGTH
*/
//:://////////////////////////////////////////////
//:: Created By:  Clayton Greene
//:: Created On:  Aug 9, 2003
//:://////////////////////////////////////////////
#include "cs_fn_tools"

int StartingConditional()
{
    return AbilityCheck(DC_EASY, ABILITY_STRENGTH, GetPCSpeaker());
}
