select
  p1.name
from
  products p1
  inner join providers p2 on p1.id_providers = p2.id
where
  p2.name like 'P%'
  and p1.amount between 10
  and 20
