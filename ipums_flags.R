#Print all value labels
map(cps_data, ipums_val_labels)

#No NAs, not a balanced panel
table(cps_data$state_factor, useNA = "always")

#Year desc
ipums_var_desc(cps_data$year)

#ASEC Flag
ipums_var_desc(cps_data$asecflag)



