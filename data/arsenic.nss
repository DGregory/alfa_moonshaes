
#include "omega_include"
void main()
{
effect eEffect = EffectPoison(POISON_ARSENIC);

ApplyEffectToObject(DURATION_TYPE_PERMANENT, eEffect, oMyTarget);
}

