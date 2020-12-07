--https://fxjollois.github.io/cours-sql/
SELECT NomMess, COUNT(*)
FROM Messager, Commande
Where Messager.NoMess=Commande.NoMess
Group By Messager.NomMess