with opApplication; use opApplication;
with usager;              use usager;
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

--------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------
-- Pour le test 2 et 3 de la procedure addLast, décommenter la ligne de code pour déclencher l'exception à l'exécution du programme --
--------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------


procedure test_opApplication is

   -- affichage resultat
   procedure affichage_resultat
     (trouve : in Boolean; position : in Integer; test : in Boolean)
   is
   begin
      if trouve then
         Put ("*** valeur trouvee au rang ");
         Put (position, 0);
      else
         Put ("*** valeur non trouvee");
      end if;
      New_Line;
      if test then
         Put_Line ("Test valide");
      else
         Put_Line ("test non valide");
      end if;
      New_Line;
   end affichage_resultat;

   procedure affichage_resultat_addLast
     (u : in Type_Usager;enr: in Type_App; resultat: in Boolean) is
      trouve : Boolean;
      pos : Integer;
   begin
      find(u,enr,trouve,pos);
      if trouve=resultat then
         put_line("Test ok");
      else
         put_line("test ko");
      end if;
   end affichage_resultat_addLast;

   usager: Type_Usager;
   usager2: Type_Usager;
   usager3: Type_Usager;
   usager4: Type_Usager;
   tab: Type_App;
   trouve: Boolean;
   position: Integer;
   i: Integer; --Compteur de l'indice courant
begin
   put_line("****************************");
   put_line("*** Test d'opApplication ***");
   put_line("****************************");
   New_Line;

   --remplissage du tableau

   usager.numero_adherent := 123456;
   usager.nom (1..4) := "Thao";
   usager.longueur := 4;
   usager.annee_naissance := 2003;

   usager2.numero_adherent := 234567;
   usager2.nom (1..4) := "Lulu";
   usager2.longueur := 4;
   usager2.annee_naissance := 2003;

   usager3.numero_adherent := 345678;
   usager3.nom (1..4) := "Theo";
   usager3.longueur := 4;
   usager3.annee_naissance := 2002;

   usager4.numero_adherent := 125640;
   usager4.nom (1..3) := "Oui";
   usager4.longueur := 3;
   usager4.annee_naissance := 2002;

   tab.nbUsagers:=3;
   tab.tabUsagers (1..tab.nbUsagers) :=  (usager, usager2, usager3);

   put_line("*****************");
   put_line("*** Test find ***");
   put_line("*****************");
   --test n°1 : l'usager existe dans le tableau en première position
   find (usager, tab, trouve, position);
   affichage_resultat (trouve, position, trouve and position = 1);

   --test n°2 : l'usager existe dans le tableau en première position
   find (usager3, tab, trouve, position);
   affichage_resultat (trouve, position, trouve and position = 3);

   --test n°3 : l'usager existe dans le tableau au milieu du tableau
   find (usager2, tab, trouve, position);
   affichage_resultat (trouve, position, trouve and position = 2);

   --test n°4 : L'usager n'existe pas dans le tableau
   tab.nbUsagers:=2;
   tab.tabUsagers (1..tab.nbUsagers) :=  (usager, usager2);

   find (usager3, tab, trouve, position);
   affichage_resultat (trouve, position, not trouve);


   put_line("********************");
   put_line("*** Test addLast ***");
   put_line("********************");
   New_Line;
   --test n°1 : l'usager a été bien ajouté dans le tableau
   put_line("L'usager a été ajouté dans le tableau");
   addLast(usager3,tab);
   affichage_resultat_addLast(usager3,tab,True);
   New_Line;

   --test n°2 : l'usager n'a pas été ajouté si le tableau est plein
   --DECOMMENTER POUR AVOIR LES TESTS (EXCEPTIONS)
   --tab.nbUsagers:=20;
   --tab.tabUsagers (1..2) := (usager, usager2);
   --put_line("L'usager n'est pas ajouté si le tableau est plein");
   --addLast(usager4, tab);
   --affichage_resultat_addLast(usager4,tab,False);
   --New_Line;

   --test n°3 : l'usager n'est pas ajouté si l'usager existe déjà
   -- addLast(usager3,tab);

   put_line("*******************");
   put_line("*** Test remove ***");
   put_line("*******************");
   --test n°1 : l'usager a été supprimé (càd que le nombre d'elements a baissé de 1)


   --test n°2 : l'usager n'est pas supprimé si le tableau est vide

   --test n°3 : l'sager n'est pas supprimé si la position Id est sup au nb usagers


exception
   when DEBORDEMENT =>
      put("Sortie du tableau !");
   when REDONDANCE =>
      put("Cet utilisateur existe déjà !");
end test_opApplication;
