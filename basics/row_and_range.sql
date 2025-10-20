//ROW BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING for the rows
// RANGE BETWEEN .25 PRECEDING AND .25 FOLLOWING this is the for the range of values and group accordingly by this range


SELECT item_id, unit_price,
SUM(unit_price) OVER(PARTITION BY unit_price ORDER BY item_id DESC)
FROM items;

SELECT item_id, unit_price,
AVG(unit_price) OVER(ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as running_total
FROM items;

SELECT item_id, unit_price, SUM(unit_price)
OVER(ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) as one_before_one_after
FROM items;

SELECT item_id, unit_price, SUM(unit_price)
OVER(ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as total
FROM items;

SELECT item_id, unit_price, SUM(unit_price)
OVER(ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) as current_and_after
FROM items;


SELECT item_id, unit_price, SUM(unit_price)
OVER(RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as total
FROM items;

SELECT item_id, unit_price, SUM(unit_price)
OVER(ORDER BY unit_price RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as before_and_current
FROM items;

SELECT item_id, unit_price, SUM(unit_price)
OVER(ORDER BY unit_price RANGE BETWEEN .25 PRECEDING AND .25 FOLLOWING) as two_before_and_two_after
FROM items;

