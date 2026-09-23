
{{ config(materialized='incremental') }}

{%- set yaml_metadata -%}

source_model: 'stg_service_requests'

parent_hashkey: 'hk_service_request'

src_hashdiff: 'hd_service_request'

src_payload:
  - complaint_type
  - status
  - created_date

src_ldts: 'ldts'
src_rsrc: 'rsrc'

{%- endset -%}

{{ datavault4dbt.sat_v0(yaml_metadata=yaml_metadata) }}
