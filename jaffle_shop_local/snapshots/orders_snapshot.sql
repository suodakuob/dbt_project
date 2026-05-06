{% snapshot orders_snapshot %}

{{
    config(
      target_database='analytics',
      target_schema='snapshots',
      unique_key='id',
      strategy='check',
      check_cols=['status'],
    )
}}

select * from {{ source('jaffle_shop', 'orders') }}

{% endsnapshot %}