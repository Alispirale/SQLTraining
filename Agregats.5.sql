--Exercice 5.5 Agrégats https://fxjollois.github.io/cours-sql/ 
SELECT CodeCli, COUNT(*)
From Commande
Group by CodeCli
Order by Count(*) DESC
Limit 1