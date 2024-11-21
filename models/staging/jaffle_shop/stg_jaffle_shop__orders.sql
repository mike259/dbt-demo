with 

source as (

    select * from {{ source('jaffle_shop', 'orders') }}

),

renamed as (

    select
        id,
        customer,
        ordered_at,
        store_id,
        subtotal,
        tax_paid,
        order_total

    from source

),
date_change as (
    SELECT
        id,
        customer,
        {{ format_date('ordered_at') }} AS formatted_order_date,
        store_id,
        subtotal,
        tax_paid,
        order_total
        from renamed
)

select * from date_change
