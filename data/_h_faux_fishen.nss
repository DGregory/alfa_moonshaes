void main()
{
    object oPC = OBJECT_SELF;
    object fishingwaypoint = GetObjectByTag("fishwaypoint01");
    int rand = d20(1)+50;
    float RANDfloat = IntToFloat(rand);


 if(GetDistanceBetween(fishingwaypoint, oPC) > 1.0 )
 {
    AssignCommand(oPC, ActionMoveToObject(fishingwaypoint, FALSE, 1.0));
    //AssignCommand(oPC, ActionSpeakString("Not there yet", TALKVOLUME_TALK));
    return;
 }

 else
 {

    if(GetLocalInt(OBJECT_SELF, "amifishing") == 1)
    {
        return;
    }
    else
    {
        SetFacing(GetFacingFromLocation(GetLocation(fishingwaypoint)));
        SetLocalInt(OBJECT_SELF, "amifishing", 1);
        DelayCommand(2.1, AssignCommand(oPC, ActionPlayAnimation(29, 1.0, 2.0) ));
        DelayCommand(2.6, PlaySound("it_whip"));
        DelayCommand(3.0, PlaySound("as_na_splash1"));
        DelayCommand(3.0, AssignCommand(oPC, ActionSpeakString("*Casts line.*")));
        DelayCommand(RANDfloat - 1, PlaySound("as_na_splash2"));
        DelayCommand(RANDfloat-2, AssignCommand(oPC, ActionPlayAnimation(29, 1.0, 0.7) ));

        DelayCommand(RANDfloat+5, SetLocalInt(OBJECT_SELF, "amifishing", 0));


    }
 }



}
