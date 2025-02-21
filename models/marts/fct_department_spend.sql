 WITH feb_spend AS (
    select
        * 
    FROM 
        {{ref('stg_azure')}}
),

ownership AS (
    select
        *
    FROM
        {{ref('stg_google_sheets')}}
),

final as (
    SELECT 
        *
    FROM
        ownership
    LEFT JOIN
        feb_spend
    ON 
        ownership.Organization = feb_spend.subscriptionId
    LIMIT 100
)

SELECT * FROM final