person_data <- lemmy_get_person_details(username = "ruud")

person_data$person_view$person$bio

sapply(person_data$moderates, function(x) x$community$name)
