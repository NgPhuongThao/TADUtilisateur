with usager; use usager;

package opApplication is

   DEBORDEMENT : exception;
   REDONDANCE : exception;

   TAILLE_MAX : constant Integer := 50;
   type TabU is array (1 .. TAILLE_MAX) of Type_Usager;

   type Type_App is record
      tabUsagers : TabU;
      nbUsagers : Integer;
   end record;

   -- permet de rechercher un usager de type Type_Usager dans le tableau
   -- retourne vrai ou faux suivant si l'usager a été trouvé ou non
   -- retourne la position de l'usager s'il a été trouvé
   -- condition : un utilisateur ne peut apparaitre deux foias dans le tableau
   procedure find(u: in Type_Usager;Usagers: in Type_App; trouve: out Boolean; position: out Integer);

   -- insère un usager de Type_Usager dans la dernière position du tableau
   -- met à jour le nombre d'usagers inscrits dans l'application
   -- conditions : le tableau ne doit pas eter plein et l'usager ne doit pas déjà exister dans le tableau
   procedure addLast(u: in Type_Usager; Usagers: in out Type_App);

   procedure remove(Id: in Integer; Usagers: in out Type_App);

   procedure sort(Usagers: in out Type_App);

end opApplication;
