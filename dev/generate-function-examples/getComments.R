comment_list <- lemmy_get_comments(limit = 1, sort = "Top")

comment_list$comments[[1]]$community$name

comment_list$comments[[1]]$post$name

comment_list$comments[[1]]$comment$content
