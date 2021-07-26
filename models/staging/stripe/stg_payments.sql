with payments as (

    select
        id as customer_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status, 
        amount/100 amount,
        created as date_created
    from `data-replication-317209.dbt_test.stripe_payments`

)
select * from payments 