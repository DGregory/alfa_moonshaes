#include "nw_i0_plot"
void main()
{

object oPC = GetPCSpeaker();

object oTarget;
oTarget = GetObjectByTag("mer_wyn_kraken");

gplotAppraiseOpenStore(oTarget, oPC, 0, 0);

}

