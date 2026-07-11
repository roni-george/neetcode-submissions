-- Write your query below
SELECT sp.name FROM sales_person sp
WHERE sales_id NOT IN (
    SELECT ord.sales_id FROM orders ord
    LEFT JOIN company co ON ord.com_id = co.com_id
    WHERE co.name = 'CRIMSON'
);