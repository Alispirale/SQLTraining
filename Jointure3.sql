--https://fxjollois.github.io/cours-sql/
SELECT Produit.Refprod,COUNT (distinct Nocom)
FROM Produit left outer join DetailCommande
On Produit.Refprod=DetailCommande.Refprod
Group by Produit.Refprod