#include "omega_include"
void main()
{
effect eDisease = EffectDisease(DISEASE_BURROW_MAGGOTS);
ApplyEffectToObject(DURATION_TYPE_TEMPORARY,eDisease,oMyTarget);
}
