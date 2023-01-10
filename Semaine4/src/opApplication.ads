with usager; use usager;

package opApplication is

   DEBORDEMENT : exception;
   REDONDANCE : exception;
   USAGER_INCONNU : exception;

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

   -- supprime un utilisateur du tableau tab au rang rang
   procedure remove(tab  : in out Type_App; rang : in Integer);

   -- trouve un utilisateur � partir de son nom nom de longueur longueur dans le tableau tab
   -- renvoie trouve et rang
   procedure findNom(nom : in String; longueur: in Integer; tab : in Type_App; trouve: out Boolean; rang : out Integer);

end opApplication;
