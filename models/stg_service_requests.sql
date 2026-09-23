
{{ config(materialized='view') }}

{%- set yaml_metadata -%}

source_model: 'source_service_requests'

ldts: 'ldts'
rsrc: 'rsrc'

hashed_columns:

  hk_service_request:
    - unique_key

  hd_service_request:
    is_hashdiff: true
    columns:
      - complaint_type
      - status
      - created_date

{%- endset -%}

{{ datavault4dbt.stage(yaml_metadata=yaml_metadata) }}
