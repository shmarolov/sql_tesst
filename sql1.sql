2)
SELECT emp_name, dept_id, MAX(salary) AS max_salary
FROM table1
GROUP BY dept_id;
3)
SELECT emp_name, salary, COUNT(emp_id)
FROM table1
GROUP BY salary;
4)
SELECT customers.Name, managers.Name
FROM Orders  
JOIN Customers  
ON customers.id=orders.customer_id 
JOIN Managers  
ON managers.id=customers.manager_id 
WHERE SUM(orders.Amount)>100000 AND orders.date>01.01.2013
GROUP BY customers.Name;
