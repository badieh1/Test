
{{ config(materialized='incremental') }}

{%- set yaml_metadata -%}

hashkey: 'hk_service_request'

business_keys:
  - unique_key

source_models: stg_service_requests

src_ldts: 'ldts'
src_rsrc: 'rsrc'

{%- endset -%}

{{ datavault4dbt.hub(yaml_metadata=yaml_metadata) }}
