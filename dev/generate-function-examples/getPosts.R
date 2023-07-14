post_list <- lemmy_get_posts(community_name = "showerthoughts", sort = "TopAll", limit = 1)

post_list$posts[[1]]$post$name
