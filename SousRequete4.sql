-- Lister les clients qui ont commandé du "Camembert Pierrot" (sans aucune jointure)
Select Societe
From Client
where CodeCli in (Select CodeCli from Commande where NoCom in 
(select NoCom from DetailCommande where Refprod in 
(select Refprod from Produit where Nomprod="Camembert Pierrot")))