-- Lister les clients (société et pays) ayant commandés via un employé situé à Londres ou ayant été livré par "Speedy Express"
SELECT Societe, Employe.Pays
FROM Client, Commande, Employe
WHERE Client.CodeCli = Commande.CodeCli
AND Commande.NoEmp = Employe.NoEmp
AND Employe.Ville = "London"
UNION
SELECT Societe, Client.Pays
FROM Client, Commande, Messager
WHERE Client.CodeCli = Commande.CodeCli
AND Commande.NoMess = Messager.NoMess
AND NomMess = "Speedy Express";
