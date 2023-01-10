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
   -- retourne vrai ou faux suivant si l'usager a �t� trouv� ou non
   -- retourne la position de l'usager s'il a �t� trouv�
   -- condition : un utilisateur ne peut apparaitre deux foias dans le tableau
   procedure find(u: in Type_Usager;Usagers: in Type_App; trouve: out Boolean; position: out Integer);

   -- ins�re un usager de Type_Usager dans la derni�re position du tableau
   -- met � jour le nombre d'usagers inscrits dans l'application
   -- conditions : le tableau ne doit pas eter plein et l'usager ne doit pas d�j� exister dans le tableau
   procedure addLast(u: in Type_Usager; Usagers: in out Type_App);

   procedure remove(Id: in Integer; Usagers: in out Type_App);

   procedure sort(Usagers: in out Type_App);

end opApplication;
