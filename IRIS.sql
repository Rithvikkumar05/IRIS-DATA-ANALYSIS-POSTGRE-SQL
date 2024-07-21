-- Creating Table named iris:

CREATE TABLE iris 
(
    sepal_l FLOAT,
    sepal_w FLOAT,
    petal_l FLOAT,
    petal_w FLOAT,
    class VARCHAR(20)
);

------------------------------------------------------------------------------------------------------------------------ 

SELECT * FROM iris;

------------------------------------------------------------------------------------------------------------------------  

-- sepal width greater than 3.5

SELECT * FROM iris 
WHERE sepal_w > 3.5;

------------------------------------------------------------------------------------------------------------------------ 

-- average petal length by class

SELECT class,AVG(petal_l) AS average_petal_length FROM iris 
GROUP BY class;

------------------------------------------------------------------------------------------------------------------------ 

SELECT class,AVG(petal_l) AS average_petal_length FROM iris 
GROUP BY class,petal_l;

------------------------------------------------------------------------------------------------------------------------ 

-- Top 3 highest average petal length 

SELECT class,AVG(petal_l) AS average_petal_length FROM iris 
GROUP BY class,petal_l 
ORDER BY petal_l DESC 
LIMIT 3;

------------------------------------------------------------------------------------------------------------------------ 

-- Top 3 lowest average petal length

SELECT class,AVG(petal_l) AS average_petal_length FROM iris 
GROUP BY class 
ORDER BY average_petal_length;

------------------------------------------------------------------------------------------------------------------------ 

-- Top 2 lowest average petal length

SELECT class,AVG(sepal_w) AS average_sepal_width FROM iris 
GROUP BY class 
ORDER BY average_sepal_width 
LIMIT 2;

------------------------------------------------------------------------------------------------------------------------ 

-- maximum petal length of each class

SELECT class,MAX(petal_l) AS max_petal_length FROM iris 
GROUP BY class;

------------------------------------------------------------------------------------------------------------------------ 

-- minimum sepal length of each class

SELECT class,MIN(sepal_l) AS min_sepal_length FROM iris 
GROUP BY class;

------------------------------------------------------------------------------------------------------------------------ 

-- sepal width greater than average sepal width

SELECT class,sepal_w FROM iris 
WHERE sepal_w > (
SELECT AVG(sepal_w) FROM iris);

------------------------------------------------------------------------------------------------------------------------ 
