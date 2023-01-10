with ada.Text_IO; use ada.Text_IO;
with ada.Integer_Text_IO; use ada.Integer_Text_IO;
with usager; use usager;

package body opApplication is

   procedure find(u: in Type_Usager;Usagers: in Type_App;
                  trouve: out Boolean; position: out Integer) is
      i:Integer; --Compteur de l'indice courant du tableau tab
   begin
      i:=1;
      while i<Usagers.nbUsagers and then Usagers.tabUsagers(i)/= u loop
         i:=i+1;
      end loop;

      if Usagers.tabUsagers(i)=u then
         trouve:=True;
         position:=i;
      else
         trouve:=False;
      end if;
   end find;

   procedure addLast(u: in Type_Usager; Usagers: in out Type_App) is
      i: Integer; --Compteur de l'indice courant
   begin
      if Usagers.nbUsagers>=TAILLE_MAX then
          raise DEBORDEMENT;
      end if;
      i:=1;
      while i<=Usagers.nbUsagers loop
         if identityCompare(u,Usagers.tabUsagers(i)) then
            raise REDONDANCE;
         end if;
         i:=i+1;
      end loop;
      if Usagers.nbUsagers>=LONGUEUR_NOM then
         raise DEBORDEMENT;
      else
         Usagers.nbUsagers:=Usagers.nbUsagers+1;
         Usagers.tabUsagers(i):=affectation2(u);
      end if;
   end addLast;

   procedure remove(tab  : in out Type_App;
      rang : in     Integer)
   is
      i : Integer;
   begin
       -- vérification de la validité de tab.nbUsagers
      if tab.nbUsagers < 1 or tab.nbUsagers > TAILLE_MAX then
         raise DEBORDEMENT;
      end if;
      -- vérification de la validité de rang
      if rang < 1 or rang >= TAILLE_MAX then
         raise USAGER_INCONNU;
      end if;
      -- supression de l'usager dans le tableau
      i := rang;
      while i < tab.nbUsagers loop
         tab.tabUsagers(i) := tab.tabUsagers(i + 1);
         i       := i + 1;
      end loop;
      tab.nbUsagers := tab.nbUsagers - 1;
   end remove;

   procedure findNom(nom : in String; longueur: in Integer; tab : in Type_App; trouve: out Boolean; rang : out Integer) is
      i: Integer;
   begin
      i:=1;
      while (i<=tab.nbUsagers and then tab.tabUsagers(i).nom/=nom) and then tab.tabUsagers(i).longueur/=longueur loop
         i:=i+1;
      end loop;
      if i>tab.nbUsagers then
         trouve:=False;
      else
         trouve:=True;
         rang:=i;
      end if;
   end findNom;

end opApplication;
