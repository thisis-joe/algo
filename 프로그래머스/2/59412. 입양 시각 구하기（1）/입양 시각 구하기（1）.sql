-- 코드를 입력하세요
SELECT TIME_FORMAT(DATETIME,"%H") AS HOUR , COUNT(*) 
FROM ANIMAL_OUTS
GROUP BY HOUR
HAVING HOUR >= 09 AND HOUR < 20
ORDER BY HOUR