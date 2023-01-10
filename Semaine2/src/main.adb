with sousProgrammes; use sousProgrammes;
with ada.text_io; use ada.text_io;

procedure Main is
   usager1 : Type_Usager; --Premier usager
   usager2 : Type_Usager; --Deuxième usager (pour les comparaisons)
begin
   --Test de getUsager et putUsager
   --On saisit et affiche les valeurs de usager1
   getUsager(usager1);
   new_line;
   putUsager(usager1);
   new_line;

   --test getAge
   usager1.anneeNaissance:=1968;
   if getAge(usager1)=53 then
      Put_Line("Fonction getAge, test ok");
   else
      Put_Line("Fonction getAge, test ko");
   end if;

   --test Affectation
   usager2 := usager1;
   if usager2.numeroId=usager1.numeroId
     and usager2.pseudo=usager1.pseudo
     and usager2.anneeNaissance=usager1.anneeNaissance then
      Put_Line("Fonction Affectation, test ok");
   else
      Put_Line("Fonction Affectation, test ko");
   end if;

   --test Egalité
   usager2.numeroId:=123457;
   if usager1=usager2 then
      Put_Line("Fonction Egalité, test ok");
   else
      Put_Line("Fonction Egalité, test ko");
   end if;

   --test IdentityCompare
   usager2:=usager1;
   if IdentityCompare(usager1, usager2) then
      Put_Line("Fonction IdentityCompare, test ok");
   else
      Put_Line("Fonction IdentityCompare, test ko");
   end if;

   --test <
   usager2.numeroId:=123455;
   if usager2<usager1 then
      put_line("fonction <, test ok");
   else
      put_line("Fonction <, test ko");
   end if;
end Main;
