-- The following SQl file contains queries that can be executed to extract meaningful insights from the phone tablet dataset.
-- 1)Selecting the database with all the home loans data 
-- USE PhoneTablet;
-- Show tables;

SELECT * FROM devicedata;

-- Q2) How many devices of each brand are present?
-- A2) SAMSUNG has the most number of devices (excluding the "others" field) and the Android is the majority OS
-- SELECT device_brand,COUNT(*) AS NumDevices FROM devicedata GROUP BY device_brand ORDER BY NumDevices DESC;


-- Q3) What is the ditribution of phones that have 4g/5g? 
-- A3) Only 85 devices have 5g the remaning do not have 5g. 2148 devices have 4g
-- SELECT 4g,COUNT(*) AS NumDevices FROM devicedata GROUP BY 4g ORDER BY NumDevices DESC;

-- Q4) Does 5g lead to an improved price upon degradation with time? 
-- A4) Yes 5g phones not only cost more but retain a higher price after time when compared to non 5g phones. Avg used_price of a 5g phone is greater than the avg price of a new 4g phone
-- SELECT 5g, AVG(normalized_used_price) AS avg_used_price, AVG(normalized_new_price) AS avg_new_price FROM devicedata GROUP BY 5G;


-- Q4) Phones released from which year cost the most today in the store?
-- A4) Surprisingly 2018 phones are the costliest.
-- SELECT release_year,AVG(normalized_new_price) AS avg_new_price FROM devicedata GROUP BY release_year ORDER BY avg_new_price DESC;


SELECT * FROM devicedata;










