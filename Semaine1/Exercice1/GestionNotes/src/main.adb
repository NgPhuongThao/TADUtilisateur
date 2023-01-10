with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

-- Calcule votre note finale d'algorithmique sur 20
procedure Main is

   note : Integer;

begin
   -- lecture de la note
   New_Line;
   Put_Line ("Quelle est votre note en algorithmique ? ");
   Get (note);
   while note > 20 or note < 0 loop
      Put_Line ("Veuillez entrer une note entre 0 et 20: ");
      Get (note);
   end loop;
   -- modification de la note
   if note < 18 then
      note := note + 2;
   else
      note := 20;
   end if;
   -- affichage de la note
   Put ("Votre note est ");
   Put (note, width =>0);
   Put_Line ("/20 car vous avez bien travaille !!");
   New_Line;

end Main;
