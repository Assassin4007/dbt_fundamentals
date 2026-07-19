with 

source as (

    select * from {{ source('stripe', 'products') }}

),

renamed as (

    select
        product_id,
        product_name,
        category,
        price,
        stock_quantity,
        is_active,
        created_at

    from source

)

select * from renamed