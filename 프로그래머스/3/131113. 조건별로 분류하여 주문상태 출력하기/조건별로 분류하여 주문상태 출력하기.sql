-- 코드를 입력하세요
SELECT ORDER_ID, PRODUCT_ID, DATE_FORMAT(OUT_DATE,"%Y-%m-%d") AS OUT_DATE, 
 IF(DATE_FORMAT(OUT_DATE,"%y%m%d")<="220501","출고완료",IF(ISNULL(OUT_DATE) = TRUE, "출고미정", "출고대기")) AS 출고여부
 
FROM FOOD_ORDER

ORDER BY ORDER_ID;
