--https://fxjollois.github.io/cours-sql/
SELECT Nom, Prenom, count(*) as "Nbcommandes"
FROM Employe Left outer join commande
On employe.noemp=commande.noemp
group by Nom