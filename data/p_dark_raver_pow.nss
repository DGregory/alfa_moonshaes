#include "omega_include"
void main()
{
effect eEffect = EffectPoison(POISON_DARK_REAVER_POWDER);

ApplyEffectToObject(DURATION_TYPE_PERMANENT, eEffect, oMyTarget);
}


