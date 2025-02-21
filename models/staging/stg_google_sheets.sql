select
    *
from
    {{ source('google_sheets', 'stg_ownership') }}