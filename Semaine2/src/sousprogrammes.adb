package body sousProgrammes is

   procedure getUsager (u : in out Type_Usager) is
   begin
      Put_Line ("Quel est le nom de l'utilisateur ?");
      Get_Line (u.pseudo, u.longueur);
      Skip_Line;
      Put_Line ("Quel est le numero d'identifiant de l'utilisateur ?");
      Get(u.numeroId);
      Put_Line ("Quel est l'annee de naissance de l'utilisateur ?");
      Get(u.anneeNaissance);
      while u.anneeNaissance < 1900 or u.anneeNaissance > 2006 loop
         if u.anneeNaissance > 2006 then
            Put
              ("Vous devez avoir au moins 15 ans pour pouvoir jouer, veuillez entrer une date de naissance valide: ");
            Get (u.anneeNaissance);
         else
            Put
              ("Un fantôme ? Veuillez entrer une date de naissance valide: ");
            Get (u.anneeNaissance);
         end if;
      end loop;
   end getUsager;

   procedure putUsager (u : in Type_Usager) is
   begin
      Put("Le pseudo est ");
      Put(u.pseudo(1..u.longueur));
      new_line;
      Put("Son numero d'identifiant est ");
      Put(u.numeroId, width => 0);
      new_line;
      Put("Son annee de naissance est ");
      Put(u.anneeNaissance, width => 0);
      new_line;
   end putUsager;

   function getAge (u : in Type_Usager) return Integer is
   begin
      return (2021 - u.anneeNaissance);
   end getAge;

   procedure Affectation (e : out Type_Usager; u : in Type_Usager) is
   begin
      e.numeroId       := u.numeroId;
      e.pseudo         := u.pseudo;
      e.anneeNaissance := u.anneeNaissance;
   end Affectation;

   function "=" (u1 : in Type_Usager; u2 : in Type_Usager) return Boolean is
   begin
      if u1.pseudo = u2.pseudo and u1.anneeNaissance = u2.anneeNaissance then
         return (True);
      else
         return (False);
      end if;
   end "=";

   function IdentityCompare
     (u1 : in Type_Usager; u2 : in Type_Usager) return Boolean
   is
   begin
      if u1 = u2 and u1.numeroId = u2.numeroId then
         return (True);
      else
         return (False);
      end if;
   end IdentityCompare;

   function "<" (u1 : in Type_Usager; u2 : in Type_Usager) return Boolean is
   begin
      if u1.numeroId < u2.numeroId then
         return (True);
      else
         return (False);
      end if;
   end "<";

end sousProgrammes;
