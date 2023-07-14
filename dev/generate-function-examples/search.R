search_results <- lemmy_search("Liverpool", type_ = "Posts", sort = "TopAll", limit = 1)

search_results$posts[[1]]$community$name

search_results$posts[[1]]$post$name
