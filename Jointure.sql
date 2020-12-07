--https://fxjollois.github.io/cours-sql/
SELECT Nom, Prenom, COUNT(Distinct Client.pays)
FROM Employe, Commande, Client
Where Employe.NoEmp=Commande.NoEmp and Client.CodeCli=commande.codecli
Group by nom, prenom