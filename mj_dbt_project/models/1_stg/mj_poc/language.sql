with language as (
  select 
    src.$1:repo_name::string as repository_name
    ,language_flat.VALUE:bytes::bigint as size_in_bytes
    ,language_flat.VALUE:name::string as language_name
  from @gcs_test_data_stage/poc_data/language/ (pattern=> '.*') as src
  , lateral flatten( input => src.$1:language ) as language_flat
)


select * from language
