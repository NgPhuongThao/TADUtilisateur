with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with codeUtils;           use codeUtils;

procedure verifierCeCode is

   c1 : Integer; --chiffre 1 code
   c2 : Integer; --chiffre 2 code
   c3 : Integer; --chiffre 3 code
   c4 : Integer; --chiffre 4 code

begin

   lireCode (c1, c2, c3, c4);

   -- Vérifier le code
   if codeValide (c1, c2, c3, c4) then
      Put ("Ce code est correct pour ce photocopier ");
   else
      Put ("Ce code n'est pas correct pour ce photocopieur ");
   end if;

end verifierCeCode;
