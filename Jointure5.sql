--https://fxjollois.github.io/cours-sql/
SELECT Nom, Prenom
FROM Employe left outer join Commande
On Employe.NoEmp=Commande.NoEmp
Group by Employe.NoEmp
Having COUNT(distinct NoCom) == 0