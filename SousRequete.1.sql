-- Lister les employés n'ayant jamais effectué une commande, via une sous-requête
SELECT NoEmp, Nom, Prenom
From Employe
Where NoEmp NOT IN (Select NoEmp From Commande);