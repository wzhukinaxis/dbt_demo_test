select
    *
from
    {{ source('azure', 'feb_spend_2024') }}