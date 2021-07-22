select 
  lan.*
  ,rep.number_of_files

from {{ref('language')}} as lan
  join {{ref('repository')}} as rep on 1=1
                                    and lan.repository_name = rep.repository_name 
