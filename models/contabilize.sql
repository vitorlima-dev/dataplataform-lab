with data_sanitize as (
    select * from {{ref('sanitize_prod')}}
)

select
    ( select count(distinct(cdtipomvprocesso)) from data_sanitize) as qtd_tipos_mv,
    ( select count(distinct(cdprocesso)) from data_sanitize) as qtd_processos,
    ( select count(distinct(cdtipolocal)) from data_sanitize) as qtd_locais,
    ( select count(*) from data_sanitize) as qtd_movimentos
    