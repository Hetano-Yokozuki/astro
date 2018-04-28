require'date'

# what time is it now?
today = DateTime.now
p today

# leap or not?
today.next_year.leap? if true
days_of_year = 366

today.leap? if false
days_of_year = 365

p base

# calcurate the Spring Equinox Day(shunbun_no_hi_in_Japanese)
this_year = today.year
shunbun_day = 20.8431+0.242194*(this_year - 1980)-((this_year-1980)/4)
shunbun_day=shunbun_day.floor

p shunbun_day


