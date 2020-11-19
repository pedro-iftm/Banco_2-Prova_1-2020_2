select
  e.cpf cpf,
  e.name enome,
  d.name dnome
from
  empregados e
  inner join departamentos d on e.dnumero = d.dnumero
where
  e.cpf not in (
    select
      cpf_emp
    from
      trabalha
  )
order by
  cpf
