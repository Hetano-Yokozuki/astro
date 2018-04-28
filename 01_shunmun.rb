require'date'

# what time is it now?
today = DateTime.now
p today

# leap or not?
today.next_year.leap? if true
base = 366

today.leap? if false
base = 365

p base

this_year = today.year

