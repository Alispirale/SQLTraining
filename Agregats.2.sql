--Exercice 5.2 Agrégats https://fxjollois.github.io/cours-sql/ 
SELECT CodeCli, Count(NoCom)
From Commande
Group by CodeCli
Order by Count(NoCom) Desc
Limit 5