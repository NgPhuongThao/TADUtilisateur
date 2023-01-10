package codeUtils is

   -- lit 4 entiers
   procedure lireCode
     (c1 : out Integer; c2 : out Integer; c3 : out Integer; c4 : out Integer);

   -- retourne VRAI si le code memorisé dans l'enregistrement code
   -- est correct et FAUX sinon
   function codeValide
     (c1 : in Integer; c2 : in Integer; c3 : in Integer; c4 : in Integer)
      return Boolean;

end codeUtils;
