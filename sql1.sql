SELECT * FROM table1
WHERE emp_name LIKE '%m%';
--выполнил 1 задание, тк это просто текстовой файл,
--я буду все задание писать тут, буз открывание новых
SELECT * FROM table1
SELECT a.*
FROM table1 a 
INNER JOIN
(
    SELECT 'dept_id', MAX(salary) AS max_salary
    FROM Table1
    GROUP BY 'dept_id'
) b
    ON a.'dept_id' = b.'dept_id' AND a.age = b.max_salary;
--то только что было второе заданеи 
SELECT * COUNT(salary)
FROM table1 
GROUP BY salary 
HAVING COUNT(salary) > 1;
--это был третие задание
-- сейчас будет новая таблица и новые заданние
SELECT customers.Name, managers.Name
FROM Orders 
JOIN Customers 
ON customers.id=orders.customer_id
JOIN Managers 
 ON managers.id=customers.manager_id
WHERE orders.Amount>100000 AND orders.date>01.01.20133
