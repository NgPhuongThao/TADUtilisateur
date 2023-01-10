with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body codeUtils is

   procedure lireCode
     (c1 : out Integer; c2 : out Integer; c3 : out Integer; c4 : out Integer)
   is

   begin

      Put_Line
        ("Entrer la premiere chiffre du code d'identification de 4 chiffres : ");
      Get (c1);
      Put_Line
        ("Entrer la deuxieme chiffre du code d'identification de 4 chiffres : ");
      Get (c2);
      Put_Line
        ("Entrer la troisieme chiffre du code d'identification de 4 chiffres : ");
      Get (c3);
      Put_Line
        ("Entrer la quatrieme chiffre du code d'identification de 4 chiffres : ");
      Get (c4);

   end lireCode;

   function codeValide
     (c1 : in Integer; c2 : in Integer; c3 : in Integer; c4 : in Integer)
      return Boolean
   is

      chiffreDuReste : Integer; -- chiffre attendu comme contrôle

   begin
      -- déterminer le chiffre du reste
      chiffreDuReste := (c1 + c2 + c3) mod 7;

      -- tester si le code est correct
      return (chiffreDuReste = c4);

   end codeValide;

end codeUtils;
