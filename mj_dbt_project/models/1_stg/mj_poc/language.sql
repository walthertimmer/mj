with language as (
 select 
    --*,
    src.$1:number_of_files::bigint as number_of_files
    ,src.$1:repo_name::string as repository_name
  from @gcs_test_data_stage/poc_data/repository/ (pattern=> '.*' ) as src
  --limit 5 ;


)

select * from language
