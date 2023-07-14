community_list <- lemmy_list_communities(sort = "TopMonth", limit = 1)

community_list$communities[[1]]$community$name
