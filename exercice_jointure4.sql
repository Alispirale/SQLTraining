--https://fxjollois.github.io/cours-sql/
SELECT NomProd
FROM Produit left outer join DetailCommande
On Produit.Refprod=DetailCommande.Refprod
Group by NomProd
Having COUNT(NoCom) == 0