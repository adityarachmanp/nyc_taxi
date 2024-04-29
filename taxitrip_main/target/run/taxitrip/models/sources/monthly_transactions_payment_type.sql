
  
    

    create or replace table `fourth-gantry-418814`.`raw`.`monthly_transactions_payment_type`
      
    
    

    OPTIONS()
    as (
      

SELECT 
    EXTRACT(YEAR FROM lpep_pickup_datetime) AS Year,
    EXTRACT(MONTH FROM lpep_pickup_datetime) AS Month,
    payment_type,
    COUNT(*) AS MonthlyTransactions
FROM 
    `fourth-gantry-418814`.`raw`.`taxi_tripdata`
GROUP BY 
    EXTRACT(YEAR FROM lpep_pickup_datetime),
    EXTRACT(MONTH FROM lpep_pickup_datetime),
    payment_type
ORDER BY 
    Year, Month, payment_type
    );
  