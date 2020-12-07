-- Lister les employés (nom et prénom) étant "Représentant(e)" mais n'étant basé au "Royaume-Uni"
SELECT Nom, Prenom
FROM Employe
WHERE Fonction="Représentant(e)"
Except
Select Nom, Prenom
From Employe
Where Pays="Royaume-Uni"