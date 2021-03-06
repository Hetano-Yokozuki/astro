include Math
require'date'

########################
#
# calcurate days from spring equinox day(shunbun no hi)
#
########################

# what time is it now?
today = DateTime.now

# calcurate the Spring Equinox Day(shunbun_no_hi_in_Japanese)
this_year = today.year
shunbun_day = 20.8431+0.242194*(this_year - 1980)-((this_year-1980)/4)
shunbun_day=shunbun_day.floor

spring_equinox_day = Date.new(today.year,3,shunbun_day)

# calcurate how many days from Spring Equinox day...

days_from_sp_eq_day = (today.to_date - spring_equinox_day).to_i

########################
#
# calcurate the dgree on the equator from a dgree on ecliptic 
# 
########################

# leap or not?
today.next_year.leap? if true
days_of_year = 366

today.leap? if false
days_of_year = 365

nanchu = (360.0/days_of_year)*days_from_sp_eq_day
p "On the equator, the degree between Vernal equinox and today's Culmination altitude is #{nanchu} degrees."

# Napier no housoku 
# https://en.wikipedia.org/wiki/Spherical_trigonometry#Napier's_rules_for_quadrantal_triangles

cosB = cos(nanchu*Math::PI/180.0)*sin(23.43*Math::PI/ 180.0)

# sinB no keisan
sinB = sqrt(1-(cosB**2))/1.0

cosa = cos(23.43*Math::PI/ 180.0)/sinB
cosc = cosa * cos(nanchu*Math::PI/ 180.0)

# p sin(30*Math::PI/ 180.0)
# p cos(nanchu*Math::PI/ 180.0)
# p cosc

kakudo = acos(cosc)/(PI/180.0)
p "On the ecliptic, the degree between Vernal equinox and today's Culmination altitude is #{kakudo} degrees."

am0 = kakudo + 180
p "#{am0} degrees is a degree of midnight on the ecliptic...(ignoring Precession and some principles...)"

######################
#
# try to acquire a degree of width of my eyes....
#
######################

shahen = sqrt(13)
teihen = 2
cosX = teihen/shahen

# acquire a dgree in radian from cosX 
katameshiya_kaku=acos(cosX)/(PI/180)
p "#{katameshiya_kaku} degrees is the width of what we can see our one eye..."
starboard = am0 - katameshiya_kaku
board = am0 + katameshiya_kaku

p "#{starboard} is the width of what we can see over our right hands..."
p "#{board} is the width of what we can see over our left hands..."

shita = -55
cosTakasa = 3/sqrt(34)
takasa = acos(cosTakasa)/(PI/180)

p "#{takasa} is a limit of the highest"

kaku_1byo=360.0/((3600*24)-236)
p kaku_1byo

