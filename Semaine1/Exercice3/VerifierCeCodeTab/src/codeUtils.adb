with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body codeUtils is

   procedure lireCode (code : out Tableau) is

   begin

      Put_Line
        ("Entrer le premiere chiffre du code d'identification de 4 chiffres : ");
      Get (code(1));
      Put_Line
        ("Entrer le deuxieme chiffre du code d'identification de 4 chiffres : ");
      Get (code(2));
      Put_Line
        ("Entrer le troisieme chiffre du code d'identification de 4 chiffres : ");
      Get (code(3));
      Put_Line
        ("Entrer le quatrieme chiffre du code d'identification de 4 chiffres : ");
      Get (code(4));

   end lireCode;

   function codeValide (code : in Tableau) return Boolean is

      chiffreDuReste : Integer; -- chiffre attendu comme contrôle

   begin
      -- déterminer le chiffre du reste
      chiffreDuReste := (code(1) + code(2) + code(3)) mod 7;

      -- tester si le code est correct
      return (chiffreDuReste = code(4));

   end codeValide;

end codeUtils;
