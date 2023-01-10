with ada.Text_IO; use ada.Text_IO;
with ada.Integer_Text_IO; use ada.Integer_Text_IO;
with opApplication; use opApplication;
with usager; use usager;

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
------------- Chercher un utilisteur à partir de son nom ne fonctionne pas --------------
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------


procedure main is

   u: Type_Usager;
   tab: Type_App;
   trouve: Boolean;
   position: Integer;
   i : Integer;
   longueur: Integer :=30;
   message: String (1..longueur);
   nom : String (1..longueur);
   rang_u: Integer;
   multiplicateur : Integer;

 begin
   --remplissage du tableau
   tab.nbUsagers:=0;

   u.numero_adherent := 123456;
   u.nom (1..4) := "Thao";
   u.longueur := 4;
   u.annee_naissance := 2003;

   addLast(u,tab);

   u.numero_adherent := 234567;
   u.nom (1..4) := "Lulu";
   u.longueur := 4;
   u.annee_naissance := 2003;

   addLast(u,tab);

   u.numero_adherent := 345678;
   u.nom (1..4) := "Theo";
   u.longueur := 4;
   u.annee_naissance := 2002;

   addLast(u,tab);

   u.numero_adherent := 125640;
   u.nom (1..3) := "Oui";
   u.longueur := 3;
   u.annee_naissance := 2002;

   addLast(u,tab);

   loop
      Put_Line("---------------------------------------------------------------------------------------");
      Put_Line("| 0 Quitter | 1 Trouver utilisateur | 2 Ajouter utilisateur | 3 Supprimer utilisateur |");
      Put_Line("------| 4 Accéder au chat privé | 5 Chercher un utilisateur à partir de son nom |------");
      Put_Line("---------------------------------------------------------------------------------------");
      Put_Line("Quel test voulez-vous faire ? ");
      get(i);
      case i is
      when 1 =>
         getUsager(u);
         find(u,tab,trouve,position);
         if trouve then
            Put_Line("Cet utilisateur existe.");
         else
            Put_Line("Cet utilisateur n'existe pas.");
         end if;
      when 2 =>
         getUsager(u);
         addLast(u, tab);
         Put_Line("Votre utilisateur a bien été ajouté.");
      when 3 =>
         Put_Line("Entrez le rang de l'utilisateur a supprimer :");
         get(rang_u);
         remove(tab,rang_u);
         Put_Line("Votre utilisateur a bien été supprimé.");
      when 4 =>
         Put_Line("A qui voulez-vous parler ?");
         getUsager(u);
         multiplicateur:=1;
         while multiplicateur <=10 loop
            New_Line;
            multiplicateur:=multiplicateur+1;
         end loop;

         put_line("Entrez '/' si vous voulez quitter la conversation");
         put_line("__________________________________________________________");
         put("_____________________________");
         put(u.nom(1..u.longueur));
         put_line("___________________________");
         put_line("__________________________________________________________");

         loop
            Put(u.nom(1..u.longueur));
            Put_Line(": Bonjour.");
            Put("Moi: ");
            get_line(message,longueur);
            Skip_Line;
            exit when message(1..longueur) = "/";
         end loop;
         Put(u.nom(1..u.longueur));
         Put_Line(": Nooooonn reviiiennnnss!!! Je n'ai plus d'ami :(");

      when 5 =>
         put("Quel usager voulez-vous chercher ? ");
         get_line(nom,longueur);
         Skip_Line;
         put(longueur);
         findNom(nom, longueur,tab,trouve,position);
         if trouve then
            Put_Line("Cet utilisateur existe.");
         else
            Put_Line("Cet utilisateur n'existe pas.");
         end if;

      when others =>
         Put_Line("erreur");
      end case;
      exit when i = 0;
   end loop;
end main;
