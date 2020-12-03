--https://fxjollois.github.io/cours-sql/
SELECT NoMess, NomMess, COUNT(*)
FROM Messager Natural join Commande
Group by NoMess