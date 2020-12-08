-- Lister les clients (société et pays) ayant commandés via un employé basé à "Seattle" et ayant commandé des "Desserts"
SELECT Societe, Client.Pays
    FROM Client, Commande, Employe
    WHERE Client.CodeCli=Commande.CodeCli
    And Commande.NoEmp=Employe.NoEmp
    And Employe.Ville="Seattle"
INTERSECT
SELECT Societe, Client.Pays
    FROM Client, Commande, DetailCommande, Produit, Categorie
    WHERE Client.CodeCli=Commande.CodeCli
    And Commande.NoCom=DetailCommande.NoCom
    And DetailCommande.Refprod=Produit.Refprod
    And Produit.CodeCateg=Categorie.CodeCateg
    And NomCateg = "Desserts"