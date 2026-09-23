
{{ config(materialized='view') }}

SELECT
    '1001' AS unique_key,
    'Noise - Residential' AS complaint_type,
    'Closed' AS status,
    TIMESTAMP '2026-09-01 10:00:00' AS created_date,
    TIMESTAMP '2026-09-23 12:00:00' AS ldts,
    'NYC_TEST' AS rsrc

UNION ALL

SELECT
    '1002',
    'Illegal Parking',
    'Closed',
    TIMESTAMP '2026-09-02 11:30:00',
    TIMESTAMP '2026-09-23 10:00:00',
    'NYC_TEST'

UNION ALL

SELECT
    '1003',
    'Street Condition',
    'Open',
    TIMESTAMP '2026-09-03 09:15:00',
    TIMESTAMP '2026-09-23 10:00:00',
    'NYC_TEST'
    
UNION ALL

SELECT
    '1004',
    'Water Leak',
    'Open',
    TIMESTAMP '2026-09-04 08:45:00',
    TIMESTAMP '2026-09-23 11:00:00',
    'NYC_TEST'
