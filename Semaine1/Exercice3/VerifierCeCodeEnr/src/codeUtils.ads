package codeUtils is

   --Définition du type enregistrement
   type Enr is record
      c1 : Integer;
      c2 : Integer;
      c3 : Integer;
      c4 : Integer;
   end record;

   -- lit et range 4 entiers dans l'enregistrement code
   procedure lireCode (code : out Enr);

   -- retourne VRAI si le code memorisé dans l'enregistrement code
   -- est correct et FAUX sinon
   function codeValide (code : in Enr) return Boolean;

end codeUtils;
