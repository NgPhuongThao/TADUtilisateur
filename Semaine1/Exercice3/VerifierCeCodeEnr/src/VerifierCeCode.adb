with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with codeUtils; use codeUtils;

procedure verifierCeCode is

   codeLu : Enr; --code

begin

   lireCode (code => codeLu);

   -- Vérifier le code
   if codeValide (code => codeLu) then
      Put ("Ce code est correct pour ce photocopier ");
   else
      Put ("Ce code n'est pas correct pour ce photocopieur ");
   end if;

end verifierCeCode;
