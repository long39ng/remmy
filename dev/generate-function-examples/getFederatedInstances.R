instances <- lemmy_get_federated_instances()

length(instances$federated_instances$linked)

some_instance <- instances$federated_instances$linked[[732]]

some_instance$domain

some_instance$published
