--Nombre de commandes passées par des employés sous la responsabilité de "Patrick Emery"
SELECT count(*) as 'NbCommmandes'
From Commande
Where NoEmp In
(select NoEmp from Employe where RendCompteA In (Select NoEmp From Employe Where Nom='Emery' and Prenom ='Patrick'))