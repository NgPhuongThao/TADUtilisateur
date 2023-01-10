package codeUtils is

   --Définition du type Tableau
   MAX_LENGTH: constant Integer:=100;
   type Tableau is array(1..MAX_LENGTH) of integer;

   -- lit et range 4 entiers dans l'enregistrement code
   procedure lireCode (code : out Tableau);

   -- retourne VRAI si le code memorisé dans l'enregistrement code
   -- est correct et FAUX sinon
   function codeValide (code : in Tableau) return Boolean;

end codeUtils;
