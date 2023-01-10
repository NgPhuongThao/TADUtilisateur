with ada.Text_IO; use ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
package sousProgrammes is

   -- enregistrement Type_Usager qui contient les champs
   type Type_Usager is record
      numeroId:Integer;
      pseudo:String(1..30);
      longueur:Integer;
      anneeNaissance:Integer;
   end record;

   -------------------------------------------------------------------
   -- Sous-programme permettant de stocker les valeurs des différents champs
   -- de l'enregistrement et de les stocker dans la variable u de Type_Usager
   -- u de type Type_Usager
   -------------------------------------------------------------------
   procedure getUsager(u: in out Type_Usager);

   -------------------------------------------------------------------
   -- Sous-programme permettant d'afficher toutes les valeurs des
   -- champs d'une variable de type u de type Type_Usager
   -- u de type Type_Usager
   -------------------------------------------------------------------
   procedure putUsager(u: in Type_Usager);

   -------------------------------------------------------------------
   -- Sous-programme permettant de calculer l'age actuel d'un usager
   -- u de type Type_Usager
   -------------------------------------------------------------------
   function getAge(u: in Type_Usager) return Integer;

   -------------------------------------------------------------------
   -- Sous-programme permettant d'affecter à e variable de type Type_Usager les
   -- mêmes valeurs enregistrées dans une deuxième variable de type Type_Usager
   -- e de type Type_Usager
   -- u de type Type_Usager
   -------------------------------------------------------------------
   procedure Affectation(e: out Type_Usager; u: in Type_Usager);

   -------------------------------------------------------------------
   -- Sous-programme permettant de comparer les informations de deux usagers de type Type_Usager
   -- u1 de type Type_Usager
   -- u2 de type Type_Usager
   -------------------------------------------------------------------
   function "="(u1: in Type_Usager; u2: in Type_Usager) return Boolean;

   -------------------------------------------------------------------
   -- Sous-programme permettant de comparer si deux usagers de type Type_Usager sont identiques ou non
   -- u1 de type Type_Usager
   -- u2 de type Type_Usager
   -------------------------------------------------------------------
   function IdentityCompare(u1: in Type_Usager; u2: in Type_Usager) return Boolean;

   -------------------------------------------------------------------
   -- Sous-programme permettant de comparer si un usager de type Type_Usager a une
   -- valeur d'identifiant plus petite qu'un deuxième usager de type Type_Usager
   -- u1 de type Type_Usager (comparé)
   -- u2 de type Type_Usager (comparant)
   -------------------------------------------------------------------
   function "<"(u1: in Type_Usager; u2: in Type_Usager) return Boolean;

end sousProgrammes;
