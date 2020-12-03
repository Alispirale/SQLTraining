--Exercice 5.4 Agrégats https://fxjollois.github.io/cours-sql/ 
SELECT CodeCateg, COUNT(*) as 'NbProduits', ROUND(AVG(PrixUnit),2) as 'Prixmoyen'
From Produit
Group by CodeCateg
Having COUNT(*)>10
