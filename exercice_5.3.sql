--Exercice 5.3 Agrégats https://fxjollois.github.io/cours-sql/ 
SELECT Nocom, SUM(PrixUnit*Qte) AS "TotalSansRemise", SUM(PrixUnit*(1-Remise)) AS "TotalAvecRemise"
FROM DetailCommande
Group By Nocom