/*   Script generated by
Lilac Soul's NWN Script Generator, v. 1.6

For download info, please visit:
http://www.lilacsoul.revility.com    */

int StartingConditional()
{
object oPC = GetPCSpeaker();

if (GetItemPossessedBy(oPC, "ELFFACTIONTOKEN") == OBJECT_INVALID) return FALSE;

return TRUE;
}

