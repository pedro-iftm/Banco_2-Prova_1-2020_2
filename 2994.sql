select
  d.name,
  round(
    sum(
      (a.hours * 150.0) + (((a.hours * 150.0) * w.bonus) / 100.0)
    ),
    1
  ) as salary
from
  doctors d
  inner join attendances a on d.id = a.id_doctor
  inner join work_shifts w on w.id = a.id_work_shift
group by
  d.id
order by
  salary desc
