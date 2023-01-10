with usager;              use usager;
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure test_usager is
   usager : Type_Usager;
   age    : Integer;
   usager2 : Type_Usager;

begin
   -- Test lecture usager
   getUsager (usager);
   -- Test affichage usager
   putUsager (usager);
   -- Test calcul âge usager
   age := getAge (usager);
   Put ("L'age de l'usager est de ");
   Put (age,0);
   put(" ans");
   new_line;
   -- test affectation
   usager2 := affectation2(usager);
   putUsager (usager2);
   -- test égalité : Usagers identiques
   if usager = usager2 then
      put_line ("L'égalité entre deux usagers identiques est OK");
   else
      put_line ("L'égalité entre deux usagers identiques est KO");
   end if;
  -- test égalité : Usagers égaux
   usager.numero_adherent := 0;
   usager2.numero_adherent := 1;
   if usager = usager2 then
      put_line ("L'égalité entre deux usagers différents sur l'identifiant est OK");
   else
      put_line ("L'égalité entre deux usagers différents sur l'identifiant est KO");
   end if;
   -- test égalité : Usagers différents sur le nom
   usager.longueur := 1;
   usager.nom(1..usager.longueur) := " ";
   usager2.numero_adherent := 1;
   if usager = usager2 then
      put_line ("L'égalité entre deux usagers différents sur le nom est KO");
   else
      put_line ("L'égalité entre deux usagers différents sur le nom est OK");
   end if;
   -- test égalité : Usagers différents sur l'age
   usager2 := usager ;
   usager2.annee_naissance := 2000;
   usager.annee_naissance := 2020;
  if usager = usager2 then
      put_line ("L'égalité entre deux usagers sur l'annee de naissance est KO");
   else
      put_line ("L'égalité entre deux usagers sur l'annee de naissance est OK");
   end if;
   -- test identityCompare : étudiants identiques
   usager2 := usager ;
   if identityCompare(usager, usager2) then
      put_line ("Identity Compare entre deux usagers identiques est OK");
   else
      put_line ("Identity Compare entre deux usagers identiques est KO");
   end if;
   -- test identityCompare : étudiants différents
   usager.numero_adherent := 0 ;
   usager2.numero_adherent := 1 ;
   if identityCompare(usager, usager2) then
      put_line ("Identity Compare entre deux usagers non identiques est KO");
   else
      put_line ("Identity Compare entre deux usagers non identiques est OK");
   end if;
   -- test "<" : usager < usager 2
   if usager < usager2 then
      put_line ("Comparaison entre usager1 < usager2 est OK");
   else
      put_line ("Comparaison entre usager1 < usager2  est OK");
   end if;
   -- test "<" : usager2 < usager
   usager2.numero_adherent := -1 ;
    if usager < usager2 then
      put_line ("Comparaison entre usager1 > usager2 est KO");
   else
      put_line ("Comparaison entre usager1 > usager2 est OK");
   end if;
   -- test "<" : usager2 = usager
   usager2.numero_adherent := 0 ;
    if usager < usager2 then
      put_line ("Comparaison entre usager1 = usager2 est KO");
   else
      put_line ("Comparaison entre usager1 = usager2 est OK");
   end if;

end test_usager;
