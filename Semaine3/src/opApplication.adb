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

   procedure remove(Id: in Integer; Usagers: in out Type_App) is
      i:Integer; --Compteur de l'indice courant
   begin
      if Usagers.nbUsagers<1 or Id>Usagers.nbUsagers then
         raise DEBORDEMENT;
      end if;
      i:=1;
      while i<=Usagers.nbUsagers loop
         if i>=Id then
            affectation(Usagers.tabUsagers(i),Usagers.tabUsagers(i+1));
         end if;
         i:=i+1;
      end loop;
      usagers.nbUsagers:=Usagers.nbUsagers-1;
   end remove;

   procedure sort(Usagers: in out Type_App) is
      i: Integer; --Compteur de l'indice courant
      j: Integer; --Compteur de l'indice courant +1
      depot: Type_Usager; --Dépôt momentanée de la valeur à permuter
   begin
      i:=1;
      while i<=Usagers.nbUsagers loop
         j:=i+1;
         while j<=Usagers.nbUsagers loop
            if Usagers.tabUsagers(j)<Usagers.tabUsagers(i) then
               affectation(depot,Usagers.tabUsagers(i));
               affectation(Usagers.tabUsagers(i),Usagers.tabUsagers(j));
               affectation(Usagers.tabUsagers(j),depot);
            end if;
            j:=j+1;
         end loop;
         i:=i+1;
      end loop;
   end sort;

end opApplication;
