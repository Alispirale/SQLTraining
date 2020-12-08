-- Lister les clients (société et pays) ayant commandés via un employé situé à Londres et n'ayant jamais été livré par "United Package"

SELECT Societe, Employe.Pays
FROM Client, Commande, Employe
WHERE Client.CodeCli = Commande.CodeCli
AND Commande.NoEmp = Employe.NoEmp
AND Employe.Ville = "London"
EXCEPT
SELECT Societe, Client.Pays
FROM Client, Commande, Messager
WHERE Client.CodeCli = Commande.CodeCli
AND Commande.NoMess = Messager.NoMess
AND NomMess = "United Package"
