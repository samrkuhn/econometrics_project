
#High School grad rates
grad_rates |> 
  filter(variables == "total_estimate_high_school_graduate_includes_equivalency_28") |> 
  ggplot(aes(year, value, color = state)) +
  geom_line(linewidth = 1.25) +
  theme_minimal() +
  facet_wrap(~county)

#Less than high school
grad_rates |> 
  filter(variables == "total_estimate_less_than_high_school_graduate") |> 
  ggplot(aes(year, value, color = state)) +
  geom_line(linewidth = 1.25) +
  theme_minimal() +
  facet_wrap(~county)

#Some college or associates
grad_rates |> 
  filter(variables == "total_estimate_some_college_or_associates_degree") |> 
  ggplot(aes(year, value, color = state)) +
  geom_line(linewidth = 1.25) +
  theme_minimal() +
  facet_wrap(~county)

#associates
grad_rates |> 
  filter(variables == "total_estimate_associates_degree") |> 
  ggplot(aes(year, value, color = state)) +
  geom_line(linewidth = 1.25) +
  theme_minimal() +
  facet_wrap(~county)

#Bachelors
grad_rates |> 
  filter(variables == "total_estimate_bachelors_degree") |> 
  ggplot(aes(year, value, color = state)) +
  geom_line(linewidth = 1.25) +
  theme_minimal() +
  facet_wrap(~county)

#Less than 9th grade
grad_rates |> 
  filter(variables == "total_estimate_less_than_9th_grade") |> 
  ggplot(aes(year, value, color = state)) +
  geom_line(linewidth = 1.25) +
  theme_minimal() +
  facet_wrap(~county)

#9-12th grade, no diploma
grad_rates |> 
  filter(variables == "total_estimate_9th_to_12th_grade_no_diploma") |> 
  ggplot(aes(year, value, color = state)) +
  geom_line(linewidth = 1.25) +
  theme_minimal() +
  facet_wrap(~county)


