select
    id as payment_id,
    {{ cents_to_dollars('amount') }} as amount, -- Utilisation de la macro !
    status as payment_status
from {{ source('stripe', 'payment') }}