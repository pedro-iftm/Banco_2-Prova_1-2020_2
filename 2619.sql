select
  p1.name,
  p2.name,
  p1.price
from
  products p1
  inner join providers p2 on p1.id_providers = p2.id
  inner join categories c on p1.id_categories = c.id
where
  p1.price > 1000
  and c.name = 'Super Luxury'
