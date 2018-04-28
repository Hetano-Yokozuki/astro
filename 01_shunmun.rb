require'date'

# what time is it now?
today = DateTime.now
p today

# leap or not?
today.next_year.leap? if true
days_of_year = 366

today.leap? if false
days_of_year = 365

p days_of_year

# calcurate the Spring Equinox Day(shunbun_no_hi_in_Japanese)
this_year = today.year
shunbun_day = 20.8431+0.242194*(this_year - 1980)-((this_year-1980)/4)
shunbun_day=shunbun_day.floor

p shunbun_day
p today.year

spring_equinox_day = Date.new(today.year,3,shunbun_day)

p spring_equinox_day
p today.to_date

# calcurate how many days from Spring Equinox day...

days_from_sp_eq_day = (today.to_date - spring_equinox_day).to_i
p days_from_sp_eq_day
