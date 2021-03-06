require'date'

########################
#
# calcurate days from spring equinox day(shunbun no hi)
#
########################

# what time is it now?
today = DateTime.now
p today.to_date

# calcurate the Spring Equinox Day(shunbun_no_hi_in_Japanese)
this_year = today.year
shunbun_day = 20.8431+0.242194*(this_year - 1980)-((this_year-1980)/4)
shunbun_day=shunbun_day.floor

spring_equinox_day = Date.new(today.year,3,shunbun_day)

p spring_equinox_day

# calcurate how many days from Spring Equinox day...

days_from_sp_eq_day = (today.to_date - spring_equinox_day).to_i
p days_from_sp_eq_day

########################
#
# 
#
########################

# leap or not?
today.next_year.leap? if true
days_of_year = 366

today.leap? if false
days_of_year = 365

nanchu = (360.0/days_of_year)*days_from_sp_eq_day
p nanchu
