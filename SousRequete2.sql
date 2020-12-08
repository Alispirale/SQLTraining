--Nombre de produits proposés par la société fournisseur "Mayumis", via une sous-requête
SELECT count(*) as 'NbProduits'
From Produit
Where NoFour in (Select NoFour From Fournisseur where Societe='Mayumis');

