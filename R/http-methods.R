# Functions generated from ../dev/generate.R

#' Gets the site, and your user data.
#'
#' `HTTP.GET /site`
#'
#' @param auth (Optional) A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 8:
#' \preformatted{<list>
#' |-site_view: <list>
#' | |-site: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-sidebar: (Optional) A character value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-description: (Optional) A character value
#' | | |-actor_id: A character value
#' | | |-last_refreshed_at: A character value
#' | | |-inbox_url: A character value
#' | | |-private_key: (Optional) A character value
#' | | |-public_key: A character value
#' | | `-instance_id: A numeric value
#' | |-local_site: <list>
#' | | |-id: A numeric value
#' | | |-site_id: A numeric value
#' | | |-site_setup: A logical value
#' | | |-enable_downvotes: A logical value
#' | | |-enable_nsfw: A logical value
#' | | |-community_creation_admin_only: A logical value
#' | | |-require_email_verification: A logical value
#' | | |-application_question: (Optional) A character value
#' | | |-private_instance: A logical value
#' | | |-default_theme: A character value
#' | | |-default_post_listing_type: One of "All", "Local", or "Subsc...
#' | | |-legal_information: (Optional) A character value
#' | | |-hide_modlog_mod_names: A logical value
#' | | |-application_email_admins: A logical value
#' | | |-slur_filter_regex: (Optional) A character value
#' | | |-actor_name_max_length: A numeric value
#' | | |-federation_enabled: A logical value
#' | | |-captcha_enabled: A logical value
#' | | |-captcha_difficulty: A character value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-registration_mode: One of "Closed", "RequireApplica...
#' | | `-reports_email_admins: A logical value
#' | |-local_site_rate_limit: <list>
#' | | |-id: A numeric value
#' | | |-local_site_id: A numeric value
#' | | |-message: A numeric value
#' | | |-message_per_second: A numeric value
#' | | |-post: A numeric value
#' | | |-post_per_second: A numeric value
#' | | |-register: A numeric value
#' | | |-register_per_second: A numeric value
#' | | |-image: A numeric value
#' | | |-image_per_second: A numeric value
#' | | |-comment: A numeric value
#' | | |-comment_per_second: A numeric value
#' | | |-search: A numeric value
#' | | |-search_per_second: A numeric value
#' | | |-published: A character value
#' | | `-updated: (Optional) A character value
#' | `-counts: <list>
#' |   |-id: A numeric value
#' |   |-site_id: A numeric value
#' |   |-users: A numeric value
#' |   |-posts: A numeric value
#' |   |-comments: A numeric value
#' |   |-communities: A numeric value
#' |   |-users_active_day: A numeric value
#' |   |-users_active_week: A numeric value
#' |   |-users_active_month: A numeric value
#' |   `-users_active_half_year: A numeric value
#' |-admins: <list>
#' | `-[Each element]: <list>
#' |   |-person: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-display_name: (Optional) A character value
#' |   | |-avatar: (Optional) A character value
#' |   | |-banned: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-actor_id: A character value
#' |   | |-bio: (Optional) A character value
#' |   | |-local: A logical value
#' |   | |-banner: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-inbox_url: A character value
#' |   | |-matrix_user_id: (Optional) A character value
#' |   | |-admin: A logical value
#' |   | |-bot_account: A logical value
#' |   | |-ban_expires: (Optional) A character value
#' |   | `-instance_id: A numeric value
#' |   `-counts: <list>
#' |     |-id: A numeric value
#' |     |-person_id: A numeric value
#' |     |-post_count: A numeric value
#' |     |-post_score: A numeric value
#' |     |-comment_count: A numeric value
#' |     `-comment_score: A numeric value
#' |-version: A character value
#' |-my_user: <list>
#' | |-local_user_view: <list>
#' | | |-local_user: <list>
#' | | | |-id: A numeric value
#' | | | |-person_id: A numeric value
#' | | | |-email: (Optional) A character value
#' | | | |-show_nsfw: A logical value
#' | | | |-theme: A character value
#' | | | |-default_sort_type: One of "Active", "Hot", "New", "...
#' | | | |-default_listing_type: One of "All", "Local", or "Subsc...
#' | | | |-interface_language: A character value
#' | | | |-show_avatars: A logical value
#' | | | |-send_notifications_to_email: A logical value
#' | | | |-validator_time: A character value
#' | | | |-show_scores: A logical value
#' | | | |-show_bot_accounts: A logical value
#' | | | |-show_read_posts: A logical value
#' | | | |-show_new_post_notifs: A logical value
#' | | | |-email_verified: A logical value
#' | | | |-accepted_application: A logical value
#' | | | |-totp_2fa_url: (Optional) A character value
#' | | | `-open_links_in_new_tab: A logical value
#' | | |-person: <list>
#' | | | |-id: A numeric value
#' | | | |-name: A character value
#' | | | |-display_name: (Optional) A character value
#' | | | |-avatar: (Optional) A character value
#' | | | |-banned: A logical value
#' | | | |-published: A character value
#' | | | |-updated: (Optional) A character value
#' | | | |-actor_id: A character value
#' | | | |-bio: (Optional) A character value
#' | | | |-local: A logical value
#' | | | |-banner: (Optional) A character value
#' | | | |-deleted: A logical value
#' | | | |-inbox_url: A character value
#' | | | |-matrix_user_id: (Optional) A character value
#' | | | |-admin: A logical value
#' | | | |-bot_account: A logical value
#' | | | |-ban_expires: (Optional) A character value
#' | | | `-instance_id: A numeric value
#' | | `-counts: <list>
#' | |   |-id: A numeric value
#' | |   |-person_id: A numeric value
#' | |   |-post_count: A numeric value
#' | |   |-post_score: A numeric value
#' | |   |-comment_count: A numeric value
#' | |   `-comment_score: A numeric value
#' | |-follows: <list>
#' | | `-[Each element]: <list>
#' | |   |-community: <list>
#' | |   | |-id: A numeric value
#' | |   | |-name: A character value
#' | |   | |-title: A character value
#' | |   | |-description: (Optional) A character value
#' | |   | |-removed: A logical value
#' | |   | |-published: A character value
#' | |   | |-updated: (Optional) A character value
#' | |   | |-deleted: A logical value
#' | |   | |-nsfw: A logical value
#' | |   | |-actor_id: A character value
#' | |   | |-local: A logical value
#' | |   | |-icon: (Optional) A character value
#' | |   | |-banner: (Optional) A character value
#' | |   | |-followers_url: A character value
#' | |   | |-inbox_url: A character value
#' | |   | |-hidden: A logical value
#' | |   | |-posting_restricted_to_mods: A logical value
#' | |   | `-instance_id: A numeric value
#' | |   `-follower: <list>
#' | |     |-id: A numeric value
#' | |     |-name: A character value
#' | |     |-display_name: (Optional) A character value
#' | |     |-avatar: (Optional) A character value
#' | |     |-banned: A logical value
#' | |     |-published: A character value
#' | |     |-updated: (Optional) A character value
#' | |     |-actor_id: A character value
#' | |     |-bio: (Optional) A character value
#' | |     |-local: A logical value
#' | |     |-banner: (Optional) A character value
#' | |     |-deleted: A logical value
#' | |     |-inbox_url: A character value
#' | |     |-matrix_user_id: (Optional) A character value
#' | |     |-admin: A logical value
#' | |     |-bot_account: A logical value
#' | |     |-ban_expires: (Optional) A character value
#' | |     `-instance_id: A numeric value
#' | |-moderates: <list>
#' | | `-[Each element]: <list>
#' | |   |-community: <list>
#' | |   | |-id: A numeric value
#' | |   | |-name: A character value
#' | |   | |-title: A character value
#' | |   | |-description: (Optional) A character value
#' | |   | |-removed: A logical value
#' | |   | |-published: A character value
#' | |   | |-updated: (Optional) A character value
#' | |   | |-deleted: A logical value
#' | |   | |-nsfw: A logical value
#' | |   | |-actor_id: A character value
#' | |   | |-local: A logical value
#' | |   | |-icon: (Optional) A character value
#' | |   | |-banner: (Optional) A character value
#' | |   | |-followers_url: A character value
#' | |   | |-inbox_url: A character value
#' | |   | |-hidden: A logical value
#' | |   | |-posting_restricted_to_mods: A logical value
#' | |   | `-instance_id: A numeric value
#' | |   `-moderator: <list>
#' | |     |-id: A numeric value
#' | |     |-name: A character value
#' | |     |-display_name: (Optional) A character value
#' | |     |-avatar: (Optional) A character value
#' | |     |-banned: A logical value
#' | |     |-published: A character value
#' | |     |-updated: (Optional) A character value
#' | |     |-actor_id: A character value
#' | |     |-bio: (Optional) A character value
#' | |     |-local: A logical value
#' | |     |-banner: (Optional) A character value
#' | |     |-deleted: A logical value
#' | |     |-inbox_url: A character value
#' | |     |-matrix_user_id: (Optional) A character value
#' | |     |-admin: A logical value
#' | |     |-bot_account: A logical value
#' | |     |-ban_expires: (Optional) A character value
#' | |     `-instance_id: A numeric value
#' | |-community_blocks: <list>
#' | | `-[Each element]: <list>
#' | |   |-person: <list>
#' | |   | |-id: A numeric value
#' | |   | |-name: A character value
#' | |   | |-display_name: (Optional) A character value
#' | |   | |-avatar: (Optional) A character value
#' | |   | |-banned: A logical value
#' | |   | |-published: A character value
#' | |   | |-updated: (Optional) A character value
#' | |   | |-actor_id: A character value
#' | |   | |-bio: (Optional) A character value
#' | |   | |-local: A logical value
#' | |   | |-banner: (Optional) A character value
#' | |   | |-deleted: A logical value
#' | |   | |-inbox_url: A character value
#' | |   | |-matrix_user_id: (Optional) A character value
#' | |   | |-admin: A logical value
#' | |   | |-bot_account: A logical value
#' | |   | |-ban_expires: (Optional) A character value
#' | |   | `-instance_id: A numeric value
#' | |   `-community: <list>
#' | |     |-id: A numeric value
#' | |     |-name: A character value
#' | |     |-title: A character value
#' | |     |-description: (Optional) A character value
#' | |     |-removed: A logical value
#' | |     |-published: A character value
#' | |     |-updated: (Optional) A character value
#' | |     |-deleted: A logical value
#' | |     |-nsfw: A logical value
#' | |     |-actor_id: A character value
#' | |     |-local: A logical value
#' | |     |-icon: (Optional) A character value
#' | |     |-banner: (Optional) A character value
#' | |     |-followers_url: A character value
#' | |     |-inbox_url: A character value
#' | |     |-hidden: A logical value
#' | |     |-posting_restricted_to_mods: A logical value
#' | |     `-instance_id: A numeric value
#' | |-person_blocks: <list>
#' | | `-[Each element]: <list>
#' | |   |-person: <list>
#' | |   | |-id: A numeric value
#' | |   | |-name: A character value
#' | |   | |-display_name: (Optional) A character value
#' | |   | |-avatar: (Optional) A character value
#' | |   | |-banned: A logical value
#' | |   | |-published: A character value
#' | |   | |-updated: (Optional) A character value
#' | |   | |-actor_id: A character value
#' | |   | |-bio: (Optional) A character value
#' | |   | |-local: A logical value
#' | |   | |-banner: (Optional) A character value
#' | |   | |-deleted: A logical value
#' | |   | |-inbox_url: A character value
#' | |   | |-matrix_user_id: (Optional) A character value
#' | |   | |-admin: A logical value
#' | |   | |-bot_account: A logical value
#' | |   | |-ban_expires: (Optional) A character value
#' | |   | `-instance_id: A numeric value
#' | |   `-target: <list>
#' | |     |-id: A numeric value
#' | |     |-name: A character value
#' | |     |-display_name: (Optional) A character value
#' | |     |-avatar: (Optional) A character value
#' | |     |-banned: A logical value
#' | |     |-published: A character value
#' | |     |-updated: (Optional) A character value
#' | |     |-actor_id: A character value
#' | |     |-bio: (Optional) A character value
#' | |     |-local: A logical value
#' | |     |-banner: (Optional) A character value
#' | |     |-deleted: A logical value
#' | |     |-inbox_url: A character value
#' | |     |-matrix_user_id: (Optional) A character value
#' | |     |-admin: A logical value
#' | |     |-bot_account: A logical value
#' | |     |-ban_expires: (Optional) A character value
#' | |     `-instance_id: A numeric value
#' | `-discussion_languages: A numeric vector
#' |-all_languages: <list>
#' | `-[Each element]: <list>
#' |   |-id: A numeric value
#' |   |-code: A character value
#' |   `-name: A character value
#' |-discussion_languages: A numeric vector
#' |-taglines: <list>
#' | `-[Each element]: <list>
#' |   |-id: A numeric value
#' |   |-local_site_id: A numeric value
#' |   |-content: A character value
#' |   |-published: A character value
#' |   `-updated: (Optional) A character value
#' `-custom_emojis: <list>
#'   `-[Each element]: <list>
#'     |-custom_emoji: <list>
#'     | |-id: A numeric value
#'     | |-local_site_id: A numeric value
#'     | |-shortcode: A character value
#'     | |-image_url: A character value
#'     | |-alt_text: A character value
#'     | |-category: A character value
#'     | |-published: A character value
#'     | `-updated: (Optional) A character value
#'     `-keywords: <list>
#'       `-[Each element]: <list>
#'         |-id: A numeric value
#'         |-custom_emoji_id: A numeric value
#'         `-keyword: A character value
#' }
#'
#' @examplesIf remmy:::is_lemmy_world()
#' site_data <- lemmy_get_site()
#'
#' site_data$site_view$site$name
#'
#' site_data$site_view$counts$users
#'
#' @export
lemmy_get_site <- function(auth = NULL, .lemmy_instance = getOption(
                             "lemmy_instance",
                             "https://lemmy.world"
                           )) {
  stopifnot(length(auth) <= 1L)
  stopifnot(is.null(auth) || is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "site",
    auth = auth
  )
}
#' Create your site.
#'
#' `HTTP.POST /site`
#'
#' @param name A character value.
#' @param sidebar (Optional) A character value.
#' @param description (Optional) A character value.
#' @param icon (Optional) A character value.
#' @param banner (Optional) A character value.
#' @param enable_downvotes (Optional) A logical value.
#' @param enable_nsfw (Optional) A logical value.
#' @param community_creation_admin_only (Optional) A logical value.
#' @param require_email_verification (Optional) A logical value.
#' @param application_question (Optional) A character value.
#' @param private_instance (Optional) A logical value.
#' @param default_theme (Optional) A character value.
#' @param default_post_listing_type (Optional) One of "All", "Local", or "Subscribed".
#' @param legal_information (Optional) A character value.
#' @param application_email_admins (Optional) A logical value.
#' @param hide_modlog_mod_names (Optional) A logical value.
#' @param discussion_languages (Optional) A numeric vector.
#' @param slur_filter_regex (Optional) A character value.
#' @param actor_name_max_length (Optional) A numeric value.
#' @param rate_limit_message (Optional) A numeric value.
#' @param rate_limit_message_per_second (Optional) A numeric value.
#' @param rate_limit_post (Optional) A numeric value.
#' @param rate_limit_post_per_second (Optional) A numeric value.
#' @param rate_limit_register (Optional) A numeric value.
#' @param rate_limit_register_per_second (Optional) A numeric value.
#' @param rate_limit_image (Optional) A numeric value.
#' @param rate_limit_image_per_second (Optional) A numeric value.
#' @param rate_limit_comment (Optional) A numeric value.
#' @param rate_limit_comment_per_second (Optional) A numeric value.
#' @param rate_limit_search (Optional) A numeric value.
#' @param rate_limit_search_per_second (Optional) A numeric value.
#' @param federation_enabled (Optional) A logical value.
#' @param federation_debug (Optional) A logical value.
#' @param captcha_enabled (Optional) A logical value.
#' @param captcha_difficulty (Optional) A character value.
#' @param allowed_instances (Optional) A character vector.
#' @param blocked_instances (Optional) A character vector.
#' @param taglines (Optional) A character vector.
#' @param registration_mode (Optional) One of "Closed", "RequireApplication", or "Open".
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 2:
#' \preformatted{<list>
#' |-site_view: <list>
#' | |-site: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-sidebar: (Optional) A character value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-description: (Optional) A character value
#' | | |-actor_id: A character value
#' | | |-last_refreshed_at: A character value
#' | | |-inbox_url: A character value
#' | | |-private_key: (Optional) A character value
#' | | |-public_key: A character value
#' | | `-instance_id: A numeric value
#' | |-local_site: <list>
#' | | |-id: A numeric value
#' | | |-site_id: A numeric value
#' | | |-site_setup: A logical value
#' | | |-enable_downvotes: A logical value
#' | | |-enable_nsfw: A logical value
#' | | |-community_creation_admin_only: A logical value
#' | | |-require_email_verification: A logical value
#' | | |-application_question: (Optional) A character value
#' | | |-private_instance: A logical value
#' | | |-default_theme: A character value
#' | | |-default_post_listing_type: One of "All", "Local", or "Subsc...
#' | | |-legal_information: (Optional) A character value
#' | | |-hide_modlog_mod_names: A logical value
#' | | |-application_email_admins: A logical value
#' | | |-slur_filter_regex: (Optional) A character value
#' | | |-actor_name_max_length: A numeric value
#' | | |-federation_enabled: A logical value
#' | | |-captcha_enabled: A logical value
#' | | |-captcha_difficulty: A character value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-registration_mode: One of "Closed", "RequireApplica...
#' | | `-reports_email_admins: A logical value
#' | |-local_site_rate_limit: <list>
#' | | |-id: A numeric value
#' | | |-local_site_id: A numeric value
#' | | |-message: A numeric value
#' | | |-message_per_second: A numeric value
#' | | |-post: A numeric value
#' | | |-post_per_second: A numeric value
#' | | |-register: A numeric value
#' | | |-register_per_second: A numeric value
#' | | |-image: A numeric value
#' | | |-image_per_second: A numeric value
#' | | |-comment: A numeric value
#' | | |-comment_per_second: A numeric value
#' | | |-search: A numeric value
#' | | |-search_per_second: A numeric value
#' | | |-published: A character value
#' | | `-updated: (Optional) A character value
#' | `-counts: <list>
#' |   |-id: A numeric value
#' |   |-site_id: A numeric value
#' |   |-users: A numeric value
#' |   |-posts: A numeric value
#' |   |-comments: A numeric value
#' |   |-communities: A numeric value
#' |   |-users_active_day: A numeric value
#' |   |-users_active_week: A numeric value
#' |   |-users_active_month: A numeric value
#' |   `-users_active_half_year: A numeric value
#' `-taglines: <list>
#'   `-[Each element]: <list>
#'     |-id: A numeric value
#'     |-local_site_id: A numeric value
#'     |-content: A character value
#'     |-published: A character value
#'     `-updated: (Optional) A character value
#' }
#'
#' @export
lemmy_create_site <- function(
    name, sidebar = NULL, description = NULL, icon = NULL,
    banner = NULL, enable_downvotes = NULL, enable_nsfw = NULL,
    community_creation_admin_only = NULL, require_email_verification = NULL,
    application_question = NULL, private_instance = NULL, default_theme = NULL,
    default_post_listing_type = NULL, legal_information = NULL,
    application_email_admins = NULL, hide_modlog_mod_names = NULL,
    discussion_languages = NULL, slur_filter_regex = NULL, actor_name_max_length = NULL,
    rate_limit_message = NULL, rate_limit_message_per_second = NULL,
    rate_limit_post = NULL, rate_limit_post_per_second = NULL,
    rate_limit_register = NULL, rate_limit_register_per_second = NULL,
    rate_limit_image = NULL, rate_limit_image_per_second = NULL,
    rate_limit_comment = NULL, rate_limit_comment_per_second = NULL,
    rate_limit_search = NULL, rate_limit_search_per_second = NULL,
    federation_enabled = NULL, federation_debug = NULL, captcha_enabled = NULL,
    captcha_difficulty = NULL, allowed_instances = NULL, blocked_instances = NULL,
    taglines = NULL, registration_mode = NULL, auth, .lemmy_instance = getOption(
      "lemmy_instance",
      "https://lemmy.world"
    )) {
  stopifnot(length(name) == 1L)
  stopifnot(length(sidebar) <= 1L)
  stopifnot(length(description) <= 1L)
  stopifnot(length(icon) <= 1L)
  stopifnot(length(banner) <= 1L)
  stopifnot(length(enable_downvotes) <= 1L)
  stopifnot(length(enable_nsfw) <= 1L)
  stopifnot(length(community_creation_admin_only) <= 1L)
  stopifnot(length(require_email_verification) <= 1L)
  stopifnot(length(application_question) <= 1L)
  stopifnot(length(private_instance) <= 1L)
  stopifnot(length(default_theme) <= 1L)
  stopifnot(length(default_post_listing_type) <= 1L)
  stopifnot(length(legal_information) <= 1L)
  stopifnot(length(application_email_admins) <= 1L)
  stopifnot(length(hide_modlog_mod_names) <= 1L)
  stopifnot(length(slur_filter_regex) <= 1L)
  stopifnot(length(actor_name_max_length) <= 1L)
  stopifnot(length(rate_limit_message) <= 1L)
  stopifnot(length(rate_limit_message_per_second) <= 1L)
  stopifnot(length(rate_limit_post) <= 1L)
  stopifnot(length(rate_limit_post_per_second) <= 1L)
  stopifnot(length(rate_limit_register) <= 1L)
  stopifnot(length(rate_limit_register_per_second) <= 1L)
  stopifnot(length(rate_limit_image) <= 1L)
  stopifnot(length(rate_limit_image_per_second) <= 1L)
  stopifnot(length(rate_limit_comment) <= 1L)
  stopifnot(length(rate_limit_comment_per_second) <= 1L)
  stopifnot(length(rate_limit_search) <= 1L)
  stopifnot(length(rate_limit_search_per_second) <= 1L)
  stopifnot(length(federation_enabled) <= 1L)
  stopifnot(length(federation_debug) <= 1L)
  stopifnot(length(captcha_enabled) <= 1L)
  stopifnot(length(captcha_difficulty) <= 1L)
  stopifnot(length(registration_mode) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.character(name))
  stopifnot(is.null(sidebar) || is.character(sidebar))
  stopifnot(is.null(description) || is.character(description))
  stopifnot(is.null(icon) || is.character(icon))
  stopifnot(is.null(banner) || is.character(banner))
  stopifnot(is.null(enable_downvotes) || is.logical(enable_downvotes))
  stopifnot(is.null(enable_nsfw) || is.logical(enable_nsfw))
  stopifnot(is.null(community_creation_admin_only) || is.logical(community_creation_admin_only))
  stopifnot(is.null(require_email_verification) || is.logical(require_email_verification))
  stopifnot(is.null(application_question) || is.character(application_question))
  stopifnot(is.null(private_instance) || is.logical(private_instance))
  stopifnot(is.null(default_theme) || is.character(default_theme))
  stopifnot(is.null(legal_information) || is.character(legal_information))
  stopifnot(is.null(application_email_admins) || is.logical(application_email_admins))
  stopifnot(is.null(hide_modlog_mod_names) || is.logical(hide_modlog_mod_names))
  stopifnot(is.null(discussion_languages) || is.numeric(discussion_languages))
  stopifnot(is.null(slur_filter_regex) || is.character(slur_filter_regex))
  stopifnot(is.null(actor_name_max_length) || is.numeric(actor_name_max_length))
  stopifnot(is.null(rate_limit_message) || is.numeric(rate_limit_message))
  stopifnot(is.null(rate_limit_message_per_second) || is.numeric(rate_limit_message_per_second))
  stopifnot(is.null(rate_limit_post) || is.numeric(rate_limit_post))
  stopifnot(is.null(rate_limit_post_per_second) || is.numeric(rate_limit_post_per_second))
  stopifnot(is.null(rate_limit_register) || is.numeric(rate_limit_register))
  stopifnot(is.null(rate_limit_register_per_second) || is.numeric(rate_limit_register_per_second))
  stopifnot(is.null(rate_limit_image) || is.numeric(rate_limit_image))
  stopifnot(is.null(rate_limit_image_per_second) || is.numeric(rate_limit_image_per_second))
  stopifnot(is.null(rate_limit_comment) || is.numeric(rate_limit_comment))
  stopifnot(is.null(rate_limit_comment_per_second) || is.numeric(rate_limit_comment_per_second))
  stopifnot(is.null(rate_limit_search) || is.numeric(rate_limit_search))
  stopifnot(is.null(rate_limit_search_per_second) || is.numeric(rate_limit_search_per_second))
  stopifnot(is.null(federation_enabled) || is.logical(federation_enabled))
  stopifnot(is.null(federation_debug) || is.logical(federation_debug))
  stopifnot(is.null(captcha_enabled) || is.logical(captcha_enabled))
  stopifnot(is.null(captcha_difficulty) || is.character(captcha_difficulty))
  stopifnot(is.null(allowed_instances) || is.character(allowed_instances))
  stopifnot(is.null(blocked_instances) || is.character(blocked_instances))
  stopifnot(is.null(taglines) || is.character(taglines))
  stopifnot(is.character(auth))
  stopifnot(is.null(default_post_listing_type) || default_post_listing_type %in%
    c("All", "Local", "Subscribed"))
  stopifnot(is.null(registration_mode) || registration_mode %in%
    c("Closed", "RequireApplication", "Open"))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "site",
    name = name, sidebar = sidebar, description = description,
    icon = icon, banner = banner, enable_downvotes = enable_downvotes,
    enable_nsfw = enable_nsfw, community_creation_admin_only = community_creation_admin_only,
    require_email_verification = require_email_verification,
    application_question = application_question, private_instance = private_instance,
    default_theme = default_theme, default_post_listing_type = default_post_listing_type,
    legal_information = legal_information, application_email_admins = application_email_admins,
    hide_modlog_mod_names = hide_modlog_mod_names, discussion_languages = discussion_languages,
    slur_filter_regex = slur_filter_regex, actor_name_max_length = actor_name_max_length,
    rate_limit_message = rate_limit_message, rate_limit_message_per_second = rate_limit_message_per_second,
    rate_limit_post = rate_limit_post, rate_limit_post_per_second = rate_limit_post_per_second,
    rate_limit_register = rate_limit_register, rate_limit_register_per_second = rate_limit_register_per_second,
    rate_limit_image = rate_limit_image, rate_limit_image_per_second = rate_limit_image_per_second,
    rate_limit_comment = rate_limit_comment, rate_limit_comment_per_second = rate_limit_comment_per_second,
    rate_limit_search = rate_limit_search, rate_limit_search_per_second = rate_limit_search_per_second,
    federation_enabled = federation_enabled, federation_debug = federation_debug,
    captcha_enabled = captcha_enabled, captcha_difficulty = captcha_difficulty,
    allowed_instances = allowed_instances, blocked_instances = blocked_instances,
    taglines = taglines, registration_mode = registration_mode,
    auth = auth
  )
}
#' Edit your site.
#'
#' `HTTP.PUT /site`
#'
#' @param name (Optional) A character value.
#' @param sidebar (Optional) A character value.
#' @param description (Optional) A character value.
#' @param icon (Optional) A character value.
#' @param banner (Optional) A character value.
#' @param enable_downvotes (Optional) A logical value.
#' @param enable_nsfw (Optional) A logical value.
#' @param community_creation_admin_only (Optional) A logical value.
#' @param require_email_verification (Optional) A logical value.
#' @param application_question (Optional) A character value.
#' @param private_instance (Optional) A logical value.
#' @param default_theme (Optional) A character value.
#' @param default_post_listing_type (Optional) One of "All", "Local", or "Subscribed".
#' @param legal_information (Optional) A character value.
#' @param application_email_admins (Optional) A logical value.
#' @param hide_modlog_mod_names (Optional) A logical value.
#' @param discussion_languages (Optional) A numeric vector.
#' @param slur_filter_regex (Optional) A character value.
#' @param actor_name_max_length (Optional) A numeric value.
#' @param rate_limit_message (Optional) A numeric value.
#' @param rate_limit_message_per_second (Optional) A numeric value.
#' @param rate_limit_post (Optional) A numeric value.
#' @param rate_limit_post_per_second (Optional) A numeric value.
#' @param rate_limit_register (Optional) A numeric value.
#' @param rate_limit_register_per_second (Optional) A numeric value.
#' @param rate_limit_image (Optional) A numeric value.
#' @param rate_limit_image_per_second (Optional) A numeric value.
#' @param rate_limit_comment (Optional) A numeric value.
#' @param rate_limit_comment_per_second (Optional) A numeric value.
#' @param rate_limit_search (Optional) A numeric value.
#' @param rate_limit_search_per_second (Optional) A numeric value.
#' @param federation_enabled (Optional) A logical value.
#' @param federation_debug (Optional) A logical value.
#' @param captcha_enabled (Optional) A logical value.
#' @param captcha_difficulty (Optional) A character value.
#' @param allowed_instances (Optional) A character vector.
#' @param blocked_instances (Optional) A character vector.
#' @param taglines (Optional) A character vector.
#' @param registration_mode (Optional) One of "Closed", "RequireApplication", or "Open".
#' @param reports_email_admins (Optional) A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 2:
#' \preformatted{<list>
#' |-site_view: <list>
#' | |-site: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-sidebar: (Optional) A character value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-description: (Optional) A character value
#' | | |-actor_id: A character value
#' | | |-last_refreshed_at: A character value
#' | | |-inbox_url: A character value
#' | | |-private_key: (Optional) A character value
#' | | |-public_key: A character value
#' | | `-instance_id: A numeric value
#' | |-local_site: <list>
#' | | |-id: A numeric value
#' | | |-site_id: A numeric value
#' | | |-site_setup: A logical value
#' | | |-enable_downvotes: A logical value
#' | | |-enable_nsfw: A logical value
#' | | |-community_creation_admin_only: A logical value
#' | | |-require_email_verification: A logical value
#' | | |-application_question: (Optional) A character value
#' | | |-private_instance: A logical value
#' | | |-default_theme: A character value
#' | | |-default_post_listing_type: One of "All", "Local", or "Subsc...
#' | | |-legal_information: (Optional) A character value
#' | | |-hide_modlog_mod_names: A logical value
#' | | |-application_email_admins: A logical value
#' | | |-slur_filter_regex: (Optional) A character value
#' | | |-actor_name_max_length: A numeric value
#' | | |-federation_enabled: A logical value
#' | | |-captcha_enabled: A logical value
#' | | |-captcha_difficulty: A character value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-registration_mode: One of "Closed", "RequireApplica...
#' | | `-reports_email_admins: A logical value
#' | |-local_site_rate_limit: <list>
#' | | |-id: A numeric value
#' | | |-local_site_id: A numeric value
#' | | |-message: A numeric value
#' | | |-message_per_second: A numeric value
#' | | |-post: A numeric value
#' | | |-post_per_second: A numeric value
#' | | |-register: A numeric value
#' | | |-register_per_second: A numeric value
#' | | |-image: A numeric value
#' | | |-image_per_second: A numeric value
#' | | |-comment: A numeric value
#' | | |-comment_per_second: A numeric value
#' | | |-search: A numeric value
#' | | |-search_per_second: A numeric value
#' | | |-published: A character value
#' | | `-updated: (Optional) A character value
#' | `-counts: <list>
#' |   |-id: A numeric value
#' |   |-site_id: A numeric value
#' |   |-users: A numeric value
#' |   |-posts: A numeric value
#' |   |-comments: A numeric value
#' |   |-communities: A numeric value
#' |   |-users_active_day: A numeric value
#' |   |-users_active_week: A numeric value
#' |   |-users_active_month: A numeric value
#' |   `-users_active_half_year: A numeric value
#' `-taglines: <list>
#'   `-[Each element]: <list>
#'     |-id: A numeric value
#'     |-local_site_id: A numeric value
#'     |-content: A character value
#'     |-published: A character value
#'     `-updated: (Optional) A character value
#' }
#'
#' @export
lemmy_edit_site <- function(
    name = NULL, sidebar = NULL, description = NULL, icon = NULL,
    banner = NULL, enable_downvotes = NULL, enable_nsfw = NULL,
    community_creation_admin_only = NULL, require_email_verification = NULL,
    application_question = NULL, private_instance = NULL, default_theme = NULL,
    default_post_listing_type = NULL, legal_information = NULL,
    application_email_admins = NULL, hide_modlog_mod_names = NULL,
    discussion_languages = NULL, slur_filter_regex = NULL, actor_name_max_length = NULL,
    rate_limit_message = NULL, rate_limit_message_per_second = NULL,
    rate_limit_post = NULL, rate_limit_post_per_second = NULL,
    rate_limit_register = NULL, rate_limit_register_per_second = NULL,
    rate_limit_image = NULL, rate_limit_image_per_second = NULL,
    rate_limit_comment = NULL, rate_limit_comment_per_second = NULL,
    rate_limit_search = NULL, rate_limit_search_per_second = NULL,
    federation_enabled = NULL, federation_debug = NULL, captcha_enabled = NULL,
    captcha_difficulty = NULL, allowed_instances = NULL, blocked_instances = NULL,
    taglines = NULL, registration_mode = NULL, reports_email_admins = NULL,
    auth, .lemmy_instance = getOption("lemmy_instance", "https://lemmy.world")) {
  stopifnot(length(name) <= 1L)
  stopifnot(length(sidebar) <= 1L)
  stopifnot(length(description) <= 1L)
  stopifnot(length(icon) <= 1L)
  stopifnot(length(banner) <= 1L)
  stopifnot(length(enable_downvotes) <= 1L)
  stopifnot(length(enable_nsfw) <= 1L)
  stopifnot(length(community_creation_admin_only) <= 1L)
  stopifnot(length(require_email_verification) <= 1L)
  stopifnot(length(application_question) <= 1L)
  stopifnot(length(private_instance) <= 1L)
  stopifnot(length(default_theme) <= 1L)
  stopifnot(length(default_post_listing_type) <= 1L)
  stopifnot(length(legal_information) <= 1L)
  stopifnot(length(application_email_admins) <= 1L)
  stopifnot(length(hide_modlog_mod_names) <= 1L)
  stopifnot(length(slur_filter_regex) <= 1L)
  stopifnot(length(actor_name_max_length) <= 1L)
  stopifnot(length(rate_limit_message) <= 1L)
  stopifnot(length(rate_limit_message_per_second) <= 1L)
  stopifnot(length(rate_limit_post) <= 1L)
  stopifnot(length(rate_limit_post_per_second) <= 1L)
  stopifnot(length(rate_limit_register) <= 1L)
  stopifnot(length(rate_limit_register_per_second) <= 1L)
  stopifnot(length(rate_limit_image) <= 1L)
  stopifnot(length(rate_limit_image_per_second) <= 1L)
  stopifnot(length(rate_limit_comment) <= 1L)
  stopifnot(length(rate_limit_comment_per_second) <= 1L)
  stopifnot(length(rate_limit_search) <= 1L)
  stopifnot(length(rate_limit_search_per_second) <= 1L)
  stopifnot(length(federation_enabled) <= 1L)
  stopifnot(length(federation_debug) <= 1L)
  stopifnot(length(captcha_enabled) <= 1L)
  stopifnot(length(captcha_difficulty) <= 1L)
  stopifnot(length(registration_mode) <= 1L)
  stopifnot(length(reports_email_admins) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.null(name) || is.character(name))
  stopifnot(is.null(sidebar) || is.character(sidebar))
  stopifnot(is.null(description) || is.character(description))
  stopifnot(is.null(icon) || is.character(icon))
  stopifnot(is.null(banner) || is.character(banner))
  stopifnot(is.null(enable_downvotes) || is.logical(enable_downvotes))
  stopifnot(is.null(enable_nsfw) || is.logical(enable_nsfw))
  stopifnot(is.null(community_creation_admin_only) || is.logical(community_creation_admin_only))
  stopifnot(is.null(require_email_verification) || is.logical(require_email_verification))
  stopifnot(is.null(application_question) || is.character(application_question))
  stopifnot(is.null(private_instance) || is.logical(private_instance))
  stopifnot(is.null(default_theme) || is.character(default_theme))
  stopifnot(is.null(legal_information) || is.character(legal_information))
  stopifnot(is.null(application_email_admins) || is.logical(application_email_admins))
  stopifnot(is.null(hide_modlog_mod_names) || is.logical(hide_modlog_mod_names))
  stopifnot(is.null(discussion_languages) || is.numeric(discussion_languages))
  stopifnot(is.null(slur_filter_regex) || is.character(slur_filter_regex))
  stopifnot(is.null(actor_name_max_length) || is.numeric(actor_name_max_length))
  stopifnot(is.null(rate_limit_message) || is.numeric(rate_limit_message))
  stopifnot(is.null(rate_limit_message_per_second) || is.numeric(rate_limit_message_per_second))
  stopifnot(is.null(rate_limit_post) || is.numeric(rate_limit_post))
  stopifnot(is.null(rate_limit_post_per_second) || is.numeric(rate_limit_post_per_second))
  stopifnot(is.null(rate_limit_register) || is.numeric(rate_limit_register))
  stopifnot(is.null(rate_limit_register_per_second) || is.numeric(rate_limit_register_per_second))
  stopifnot(is.null(rate_limit_image) || is.numeric(rate_limit_image))
  stopifnot(is.null(rate_limit_image_per_second) || is.numeric(rate_limit_image_per_second))
  stopifnot(is.null(rate_limit_comment) || is.numeric(rate_limit_comment))
  stopifnot(is.null(rate_limit_comment_per_second) || is.numeric(rate_limit_comment_per_second))
  stopifnot(is.null(rate_limit_search) || is.numeric(rate_limit_search))
  stopifnot(is.null(rate_limit_search_per_second) || is.numeric(rate_limit_search_per_second))
  stopifnot(is.null(federation_enabled) || is.logical(federation_enabled))
  stopifnot(is.null(federation_debug) || is.logical(federation_debug))
  stopifnot(is.null(captcha_enabled) || is.logical(captcha_enabled))
  stopifnot(is.null(captcha_difficulty) || is.character(captcha_difficulty))
  stopifnot(is.null(allowed_instances) || is.character(allowed_instances))
  stopifnot(is.null(blocked_instances) || is.character(blocked_instances))
  stopifnot(is.null(taglines) || is.character(taglines))
  stopifnot(is.null(reports_email_admins) || is.logical(reports_email_admins))
  stopifnot(is.character(auth))
  stopifnot(is.null(default_post_listing_type) || default_post_listing_type %in%
    c("All", "Local", "Subscribed"))
  stopifnot(is.null(registration_mode) || registration_mode %in%
    c("Closed", "RequireApplication", "Open"))
  wrapper(
    base_url = .lemmy_instance, req_type = "PUT", endpoint = "site",
    name = name, sidebar = sidebar, description = description,
    icon = icon, banner = banner, enable_downvotes = enable_downvotes,
    enable_nsfw = enable_nsfw, community_creation_admin_only = community_creation_admin_only,
    require_email_verification = require_email_verification,
    application_question = application_question, private_instance = private_instance,
    default_theme = default_theme, default_post_listing_type = default_post_listing_type,
    legal_information = legal_information, application_email_admins = application_email_admins,
    hide_modlog_mod_names = hide_modlog_mod_names, discussion_languages = discussion_languages,
    slur_filter_regex = slur_filter_regex, actor_name_max_length = actor_name_max_length,
    rate_limit_message = rate_limit_message, rate_limit_message_per_second = rate_limit_message_per_second,
    rate_limit_post = rate_limit_post, rate_limit_post_per_second = rate_limit_post_per_second,
    rate_limit_register = rate_limit_register, rate_limit_register_per_second = rate_limit_register_per_second,
    rate_limit_image = rate_limit_image, rate_limit_image_per_second = rate_limit_image_per_second,
    rate_limit_comment = rate_limit_comment, rate_limit_comment_per_second = rate_limit_comment_per_second,
    rate_limit_search = rate_limit_search, rate_limit_search_per_second = rate_limit_search_per_second,
    federation_enabled = federation_enabled, federation_debug = federation_debug,
    captcha_enabled = captcha_enabled, captcha_difficulty = captcha_difficulty,
    allowed_instances = allowed_instances, blocked_instances = blocked_instances,
    taglines = taglines, registration_mode = registration_mode,
    reports_email_admins = reports_email_admins, auth = auth
  )
}
#' Leave the Site admins.
#'
#' `HTTP.POST /user/leave_admin`
#'
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 8:
#' \preformatted{<list>
#' |-site_view: <list>
#' | |-site: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-sidebar: (Optional) A character value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-description: (Optional) A character value
#' | | |-actor_id: A character value
#' | | |-last_refreshed_at: A character value
#' | | |-inbox_url: A character value
#' | | |-private_key: (Optional) A character value
#' | | |-public_key: A character value
#' | | `-instance_id: A numeric value
#' | |-local_site: <list>
#' | | |-id: A numeric value
#' | | |-site_id: A numeric value
#' | | |-site_setup: A logical value
#' | | |-enable_downvotes: A logical value
#' | | |-enable_nsfw: A logical value
#' | | |-community_creation_admin_only: A logical value
#' | | |-require_email_verification: A logical value
#' | | |-application_question: (Optional) A character value
#' | | |-private_instance: A logical value
#' | | |-default_theme: A character value
#' | | |-default_post_listing_type: One of "All", "Local", or "Subsc...
#' | | |-legal_information: (Optional) A character value
#' | | |-hide_modlog_mod_names: A logical value
#' | | |-application_email_admins: A logical value
#' | | |-slur_filter_regex: (Optional) A character value
#' | | |-actor_name_max_length: A numeric value
#' | | |-federation_enabled: A logical value
#' | | |-captcha_enabled: A logical value
#' | | |-captcha_difficulty: A character value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-registration_mode: One of "Closed", "RequireApplica...
#' | | `-reports_email_admins: A logical value
#' | |-local_site_rate_limit: <list>
#' | | |-id: A numeric value
#' | | |-local_site_id: A numeric value
#' | | |-message: A numeric value
#' | | |-message_per_second: A numeric value
#' | | |-post: A numeric value
#' | | |-post_per_second: A numeric value
#' | | |-register: A numeric value
#' | | |-register_per_second: A numeric value
#' | | |-image: A numeric value
#' | | |-image_per_second: A numeric value
#' | | |-comment: A numeric value
#' | | |-comment_per_second: A numeric value
#' | | |-search: A numeric value
#' | | |-search_per_second: A numeric value
#' | | |-published: A character value
#' | | `-updated: (Optional) A character value
#' | `-counts: <list>
#' |   |-id: A numeric value
#' |   |-site_id: A numeric value
#' |   |-users: A numeric value
#' |   |-posts: A numeric value
#' |   |-comments: A numeric value
#' |   |-communities: A numeric value
#' |   |-users_active_day: A numeric value
#' |   |-users_active_week: A numeric value
#' |   |-users_active_month: A numeric value
#' |   `-users_active_half_year: A numeric value
#' |-admins: <list>
#' | `-[Each element]: <list>
#' |   |-person: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-display_name: (Optional) A character value
#' |   | |-avatar: (Optional) A character value
#' |   | |-banned: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-actor_id: A character value
#' |   | |-bio: (Optional) A character value
#' |   | |-local: A logical value
#' |   | |-banner: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-inbox_url: A character value
#' |   | |-matrix_user_id: (Optional) A character value
#' |   | |-admin: A logical value
#' |   | |-bot_account: A logical value
#' |   | |-ban_expires: (Optional) A character value
#' |   | `-instance_id: A numeric value
#' |   `-counts: <list>
#' |     |-id: A numeric value
#' |     |-person_id: A numeric value
#' |     |-post_count: A numeric value
#' |     |-post_score: A numeric value
#' |     |-comment_count: A numeric value
#' |     `-comment_score: A numeric value
#' |-version: A character value
#' |-my_user: <list>
#' | |-local_user_view: <list>
#' | | |-local_user: <list>
#' | | | |-id: A numeric value
#' | | | |-person_id: A numeric value
#' | | | |-email: (Optional) A character value
#' | | | |-show_nsfw: A logical value
#' | | | |-theme: A character value
#' | | | |-default_sort_type: One of "Active", "Hot", "New", "...
#' | | | |-default_listing_type: One of "All", "Local", or "Subsc...
#' | | | |-interface_language: A character value
#' | | | |-show_avatars: A logical value
#' | | | |-send_notifications_to_email: A logical value
#' | | | |-validator_time: A character value
#' | | | |-show_scores: A logical value
#' | | | |-show_bot_accounts: A logical value
#' | | | |-show_read_posts: A logical value
#' | | | |-show_new_post_notifs: A logical value
#' | | | |-email_verified: A logical value
#' | | | |-accepted_application: A logical value
#' | | | |-totp_2fa_url: (Optional) A character value
#' | | | `-open_links_in_new_tab: A logical value
#' | | |-person: <list>
#' | | | |-id: A numeric value
#' | | | |-name: A character value
#' | | | |-display_name: (Optional) A character value
#' | | | |-avatar: (Optional) A character value
#' | | | |-banned: A logical value
#' | | | |-published: A character value
#' | | | |-updated: (Optional) A character value
#' | | | |-actor_id: A character value
#' | | | |-bio: (Optional) A character value
#' | | | |-local: A logical value
#' | | | |-banner: (Optional) A character value
#' | | | |-deleted: A logical value
#' | | | |-inbox_url: A character value
#' | | | |-matrix_user_id: (Optional) A character value
#' | | | |-admin: A logical value
#' | | | |-bot_account: A logical value
#' | | | |-ban_expires: (Optional) A character value
#' | | | `-instance_id: A numeric value
#' | | `-counts: <list>
#' | |   |-id: A numeric value
#' | |   |-person_id: A numeric value
#' | |   |-post_count: A numeric value
#' | |   |-post_score: A numeric value
#' | |   |-comment_count: A numeric value
#' | |   `-comment_score: A numeric value
#' | |-follows: <list>
#' | | `-[Each element]: <list>
#' | |   |-community: <list>
#' | |   | |-id: A numeric value
#' | |   | |-name: A character value
#' | |   | |-title: A character value
#' | |   | |-description: (Optional) A character value
#' | |   | |-removed: A logical value
#' | |   | |-published: A character value
#' | |   | |-updated: (Optional) A character value
#' | |   | |-deleted: A logical value
#' | |   | |-nsfw: A logical value
#' | |   | |-actor_id: A character value
#' | |   | |-local: A logical value
#' | |   | |-icon: (Optional) A character value
#' | |   | |-banner: (Optional) A character value
#' | |   | |-followers_url: A character value
#' | |   | |-inbox_url: A character value
#' | |   | |-hidden: A logical value
#' | |   | |-posting_restricted_to_mods: A logical value
#' | |   | `-instance_id: A numeric value
#' | |   `-follower: <list>
#' | |     |-id: A numeric value
#' | |     |-name: A character value
#' | |     |-display_name: (Optional) A character value
#' | |     |-avatar: (Optional) A character value
#' | |     |-banned: A logical value
#' | |     |-published: A character value
#' | |     |-updated: (Optional) A character value
#' | |     |-actor_id: A character value
#' | |     |-bio: (Optional) A character value
#' | |     |-local: A logical value
#' | |     |-banner: (Optional) A character value
#' | |     |-deleted: A logical value
#' | |     |-inbox_url: A character value
#' | |     |-matrix_user_id: (Optional) A character value
#' | |     |-admin: A logical value
#' | |     |-bot_account: A logical value
#' | |     |-ban_expires: (Optional) A character value
#' | |     `-instance_id: A numeric value
#' | |-moderates: <list>
#' | | `-[Each element]: <list>
#' | |   |-community: <list>
#' | |   | |-id: A numeric value
#' | |   | |-name: A character value
#' | |   | |-title: A character value
#' | |   | |-description: (Optional) A character value
#' | |   | |-removed: A logical value
#' | |   | |-published: A character value
#' | |   | |-updated: (Optional) A character value
#' | |   | |-deleted: A logical value
#' | |   | |-nsfw: A logical value
#' | |   | |-actor_id: A character value
#' | |   | |-local: A logical value
#' | |   | |-icon: (Optional) A character value
#' | |   | |-banner: (Optional) A character value
#' | |   | |-followers_url: A character value
#' | |   | |-inbox_url: A character value
#' | |   | |-hidden: A logical value
#' | |   | |-posting_restricted_to_mods: A logical value
#' | |   | `-instance_id: A numeric value
#' | |   `-moderator: <list>
#' | |     |-id: A numeric value
#' | |     |-name: A character value
#' | |     |-display_name: (Optional) A character value
#' | |     |-avatar: (Optional) A character value
#' | |     |-banned: A logical value
#' | |     |-published: A character value
#' | |     |-updated: (Optional) A character value
#' | |     |-actor_id: A character value
#' | |     |-bio: (Optional) A character value
#' | |     |-local: A logical value
#' | |     |-banner: (Optional) A character value
#' | |     |-deleted: A logical value
#' | |     |-inbox_url: A character value
#' | |     |-matrix_user_id: (Optional) A character value
#' | |     |-admin: A logical value
#' | |     |-bot_account: A logical value
#' | |     |-ban_expires: (Optional) A character value
#' | |     `-instance_id: A numeric value
#' | |-community_blocks: <list>
#' | | `-[Each element]: <list>
#' | |   |-person: <list>
#' | |   | |-id: A numeric value
#' | |   | |-name: A character value
#' | |   | |-display_name: (Optional) A character value
#' | |   | |-avatar: (Optional) A character value
#' | |   | |-banned: A logical value
#' | |   | |-published: A character value
#' | |   | |-updated: (Optional) A character value
#' | |   | |-actor_id: A character value
#' | |   | |-bio: (Optional) A character value
#' | |   | |-local: A logical value
#' | |   | |-banner: (Optional) A character value
#' | |   | |-deleted: A logical value
#' | |   | |-inbox_url: A character value
#' | |   | |-matrix_user_id: (Optional) A character value
#' | |   | |-admin: A logical value
#' | |   | |-bot_account: A logical value
#' | |   | |-ban_expires: (Optional) A character value
#' | |   | `-instance_id: A numeric value
#' | |   `-community: <list>
#' | |     |-id: A numeric value
#' | |     |-name: A character value
#' | |     |-title: A character value
#' | |     |-description: (Optional) A character value
#' | |     |-removed: A logical value
#' | |     |-published: A character value
#' | |     |-updated: (Optional) A character value
#' | |     |-deleted: A logical value
#' | |     |-nsfw: A logical value
#' | |     |-actor_id: A character value
#' | |     |-local: A logical value
#' | |     |-icon: (Optional) A character value
#' | |     |-banner: (Optional) A character value
#' | |     |-followers_url: A character value
#' | |     |-inbox_url: A character value
#' | |     |-hidden: A logical value
#' | |     |-posting_restricted_to_mods: A logical value
#' | |     `-instance_id: A numeric value
#' | |-person_blocks: <list>
#' | | `-[Each element]: <list>
#' | |   |-person: <list>
#' | |   | |-id: A numeric value
#' | |   | |-name: A character value
#' | |   | |-display_name: (Optional) A character value
#' | |   | |-avatar: (Optional) A character value
#' | |   | |-banned: A logical value
#' | |   | |-published: A character value
#' | |   | |-updated: (Optional) A character value
#' | |   | |-actor_id: A character value
#' | |   | |-bio: (Optional) A character value
#' | |   | |-local: A logical value
#' | |   | |-banner: (Optional) A character value
#' | |   | |-deleted: A logical value
#' | |   | |-inbox_url: A character value
#' | |   | |-matrix_user_id: (Optional) A character value
#' | |   | |-admin: A logical value
#' | |   | |-bot_account: A logical value
#' | |   | |-ban_expires: (Optional) A character value
#' | |   | `-instance_id: A numeric value
#' | |   `-target: <list>
#' | |     |-id: A numeric value
#' | |     |-name: A character value
#' | |     |-display_name: (Optional) A character value
#' | |     |-avatar: (Optional) A character value
#' | |     |-banned: A logical value
#' | |     |-published: A character value
#' | |     |-updated: (Optional) A character value
#' | |     |-actor_id: A character value
#' | |     |-bio: (Optional) A character value
#' | |     |-local: A logical value
#' | |     |-banner: (Optional) A character value
#' | |     |-deleted: A logical value
#' | |     |-inbox_url: A character value
#' | |     |-matrix_user_id: (Optional) A character value
#' | |     |-admin: A logical value
#' | |     |-bot_account: A logical value
#' | |     |-ban_expires: (Optional) A character value
#' | |     `-instance_id: A numeric value
#' | `-discussion_languages: A numeric vector
#' |-all_languages: <list>
#' | `-[Each element]: <list>
#' |   |-id: A numeric value
#' |   |-code: A character value
#' |   `-name: A character value
#' |-discussion_languages: A numeric vector
#' |-taglines: <list>
#' | `-[Each element]: <list>
#' |   |-id: A numeric value
#' |   |-local_site_id: A numeric value
#' |   |-content: A character value
#' |   |-published: A character value
#' |   `-updated: (Optional) A character value
#' `-custom_emojis: <list>
#'   `-[Each element]: <list>
#'     |-custom_emoji: <list>
#'     | |-id: A numeric value
#'     | |-local_site_id: A numeric value
#'     | |-shortcode: A character value
#'     | |-image_url: A character value
#'     | |-alt_text: A character value
#'     | |-category: A character value
#'     | |-published: A character value
#'     | `-updated: (Optional) A character value
#'     `-keywords: <list>
#'       `-[Each element]: <list>
#'         |-id: A numeric value
#'         |-custom_emoji_id: A numeric value
#'         `-keyword: A character value
#' }
#'
#' @export
lemmy_leave_admin <- function(auth, .lemmy_instance = getOption(
                                "lemmy_instance",
                                "https://lemmy.world"
                              )) {
  stopifnot(length(auth) == 1L)
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "user/leave_admin",
    auth = auth
  )
}
#' Get the modlog.
#'
#' `HTTP.GET /modlog`
#'
#' @param mod_person_id (Optional) A numeric value.
#' @param community_id (Optional) A numeric value.
#' @param page (Optional) A numeric value.
#' @param limit (Optional) A numeric value.
#' @param type_ (Optional) One of "All", "ModRemovePost", "ModLockPost", "ModFeaturePost", "ModRemoveComment", "ModRemoveCommunity", "ModBanFromCommunity", "ModAddCommunity", "ModTransferCommunity", "ModAdd", "ModBan", "ModHideCommunity", "AdminPurgePerson", "AdminPurgeCommunity", "AdminPurgePost", or "AdminPurgeComment".
#' @param other_person_id (Optional) A numeric value.
#' @param auth (Optional) A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 15:
#' \preformatted{<list>
#' |-removed_posts: <list>
#' | `-[Each element]: <list>
#' |   |-mod_remove_post: <list>
#' |   | |-id: A numeric value
#' |   | |-mod_person_id: A numeric value
#' |   | |-post_id: A numeric value
#' |   | |-reason: (Optional) A character value
#' |   | |-removed: A logical value
#' |   | `-when_: A character value
#' |   |-moderator: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-display_name: (Optional) A character value
#' |   | |-avatar: (Optional) A character value
#' |   | |-banned: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-actor_id: A character value
#' |   | |-bio: (Optional) A character value
#' |   | |-local: A logical value
#' |   | |-banner: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-inbox_url: A character value
#' |   | |-matrix_user_id: (Optional) A character value
#' |   | |-admin: A logical value
#' |   | |-bot_account: A logical value
#' |   | |-ban_expires: (Optional) A character value
#' |   | `-instance_id: A numeric value
#' |   |-post: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-url: (Optional) A character value
#' |   | |-body: (Optional) A character value
#' |   | |-creator_id: A numeric value
#' |   | |-community_id: A numeric value
#' |   | |-removed: A logical value
#' |   | |-locked: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-nsfw: A logical value
#' |   | |-embed_title: (Optional) A character value
#' |   | |-embed_description: (Optional) A character value
#' |   | |-thumbnail_url: (Optional) A character value
#' |   | |-ap_id: A character value
#' |   | |-local: A logical value
#' |   | |-embed_video_url: (Optional) A character value
#' |   | |-language_id: A numeric value
#' |   | |-featured_community: A logical value
#' |   | `-featured_local: A logical value
#' |   `-community: <list>
#' |     |-id: A numeric value
#' |     |-name: A character value
#' |     |-title: A character value
#' |     |-description: (Optional) A character value
#' |     |-removed: A logical value
#' |     |-published: A character value
#' |     |-updated: (Optional) A character value
#' |     |-deleted: A logical value
#' |     |-nsfw: A logical value
#' |     |-actor_id: A character value
#' |     |-local: A logical value
#' |     |-icon: (Optional) A character value
#' |     |-banner: (Optional) A character value
#' |     |-followers_url: A character value
#' |     |-inbox_url: A character value
#' |     |-hidden: A logical value
#' |     |-posting_restricted_to_mods: A logical value
#' |     `-instance_id: A numeric value
#' |-locked_posts: <list>
#' | `-[Each element]: <list>
#' |   |-mod_lock_post: <list>
#' |   | |-id: A numeric value
#' |   | |-mod_person_id: A numeric value
#' |   | |-post_id: A numeric value
#' |   | |-locked: A logical value
#' |   | `-when_: A character value
#' |   |-moderator: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-display_name: (Optional) A character value
#' |   | |-avatar: (Optional) A character value
#' |   | |-banned: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-actor_id: A character value
#' |   | |-bio: (Optional) A character value
#' |   | |-local: A logical value
#' |   | |-banner: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-inbox_url: A character value
#' |   | |-matrix_user_id: (Optional) A character value
#' |   | |-admin: A logical value
#' |   | |-bot_account: A logical value
#' |   | |-ban_expires: (Optional) A character value
#' |   | `-instance_id: A numeric value
#' |   |-post: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-url: (Optional) A character value
#' |   | |-body: (Optional) A character value
#' |   | |-creator_id: A numeric value
#' |   | |-community_id: A numeric value
#' |   | |-removed: A logical value
#' |   | |-locked: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-nsfw: A logical value
#' |   | |-embed_title: (Optional) A character value
#' |   | |-embed_description: (Optional) A character value
#' |   | |-thumbnail_url: (Optional) A character value
#' |   | |-ap_id: A character value
#' |   | |-local: A logical value
#' |   | |-embed_video_url: (Optional) A character value
#' |   | |-language_id: A numeric value
#' |   | |-featured_community: A logical value
#' |   | `-featured_local: A logical value
#' |   `-community: <list>
#' |     |-id: A numeric value
#' |     |-name: A character value
#' |     |-title: A character value
#' |     |-description: (Optional) A character value
#' |     |-removed: A logical value
#' |     |-published: A character value
#' |     |-updated: (Optional) A character value
#' |     |-deleted: A logical value
#' |     |-nsfw: A logical value
#' |     |-actor_id: A character value
#' |     |-local: A logical value
#' |     |-icon: (Optional) A character value
#' |     |-banner: (Optional) A character value
#' |     |-followers_url: A character value
#' |     |-inbox_url: A character value
#' |     |-hidden: A logical value
#' |     |-posting_restricted_to_mods: A logical value
#' |     `-instance_id: A numeric value
#' |-featured_posts: <list>
#' | `-[Each element]: <list>
#' |   |-mod_feature_post: <list>
#' |   | |-id: A numeric value
#' |   | |-mod_person_id: A numeric value
#' |   | |-post_id: A numeric value
#' |   | |-featured: A logical value
#' |   | |-when_: A character value
#' |   | `-is_featured_community: A logical value
#' |   |-moderator: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-display_name: (Optional) A character value
#' |   | |-avatar: (Optional) A character value
#' |   | |-banned: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-actor_id: A character value
#' |   | |-bio: (Optional) A character value
#' |   | |-local: A logical value
#' |   | |-banner: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-inbox_url: A character value
#' |   | |-matrix_user_id: (Optional) A character value
#' |   | |-admin: A logical value
#' |   | |-bot_account: A logical value
#' |   | |-ban_expires: (Optional) A character value
#' |   | `-instance_id: A numeric value
#' |   |-post: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-url: (Optional) A character value
#' |   | |-body: (Optional) A character value
#' |   | |-creator_id: A numeric value
#' |   | |-community_id: A numeric value
#' |   | |-removed: A logical value
#' |   | |-locked: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-nsfw: A logical value
#' |   | |-embed_title: (Optional) A character value
#' |   | |-embed_description: (Optional) A character value
#' |   | |-thumbnail_url: (Optional) A character value
#' |   | |-ap_id: A character value
#' |   | |-local: A logical value
#' |   | |-embed_video_url: (Optional) A character value
#' |   | |-language_id: A numeric value
#' |   | |-featured_community: A logical value
#' |   | `-featured_local: A logical value
#' |   `-community: <list>
#' |     |-id: A numeric value
#' |     |-name: A character value
#' |     |-title: A character value
#' |     |-description: (Optional) A character value
#' |     |-removed: A logical value
#' |     |-published: A character value
#' |     |-updated: (Optional) A character value
#' |     |-deleted: A logical value
#' |     |-nsfw: A logical value
#' |     |-actor_id: A character value
#' |     |-local: A logical value
#' |     |-icon: (Optional) A character value
#' |     |-banner: (Optional) A character value
#' |     |-followers_url: A character value
#' |     |-inbox_url: A character value
#' |     |-hidden: A logical value
#' |     |-posting_restricted_to_mods: A logical value
#' |     `-instance_id: A numeric value
#' |-removed_comments: <list>
#' | `-[Each element]: <list>
#' |   |-mod_remove_comment: <list>
#' |   | |-id: A numeric value
#' |   | |-mod_person_id: A numeric value
#' |   | |-comment_id: A numeric value
#' |   | |-reason: (Optional) A character value
#' |   | |-removed: A logical value
#' |   | `-when_: A character value
#' |   |-moderator: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-display_name: (Optional) A character value
#' |   | |-avatar: (Optional) A character value
#' |   | |-banned: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-actor_id: A character value
#' |   | |-bio: (Optional) A character value
#' |   | |-local: A logical value
#' |   | |-banner: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-inbox_url: A character value
#' |   | |-matrix_user_id: (Optional) A character value
#' |   | |-admin: A logical value
#' |   | |-bot_account: A logical value
#' |   | |-ban_expires: (Optional) A character value
#' |   | `-instance_id: A numeric value
#' |   |-comment: <list>
#' |   | |-id: A numeric value
#' |   | |-creator_id: A numeric value
#' |   | |-post_id: A numeric value
#' |   | |-content: A character value
#' |   | |-removed: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-ap_id: A character value
#' |   | |-local: A logical value
#' |   | |-path: A character value
#' |   | |-distinguished: A logical value
#' |   | `-language_id: A numeric value
#' |   |-commenter: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-display_name: (Optional) A character value
#' |   | |-avatar: (Optional) A character value
#' |   | |-banned: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-actor_id: A character value
#' |   | |-bio: (Optional) A character value
#' |   | |-local: A logical value
#' |   | |-banner: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-inbox_url: A character value
#' |   | |-matrix_user_id: (Optional) A character value
#' |   | |-admin: A logical value
#' |   | |-bot_account: A logical value
#' |   | |-ban_expires: (Optional) A character value
#' |   | `-instance_id: A numeric value
#' |   |-post: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-url: (Optional) A character value
#' |   | |-body: (Optional) A character value
#' |   | |-creator_id: A numeric value
#' |   | |-community_id: A numeric value
#' |   | |-removed: A logical value
#' |   | |-locked: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-nsfw: A logical value
#' |   | |-embed_title: (Optional) A character value
#' |   | |-embed_description: (Optional) A character value
#' |   | |-thumbnail_url: (Optional) A character value
#' |   | |-ap_id: A character value
#' |   | |-local: A logical value
#' |   | |-embed_video_url: (Optional) A character value
#' |   | |-language_id: A numeric value
#' |   | |-featured_community: A logical value
#' |   | `-featured_local: A logical value
#' |   `-community: <list>
#' |     |-id: A numeric value
#' |     |-name: A character value
#' |     |-title: A character value
#' |     |-description: (Optional) A character value
#' |     |-removed: A logical value
#' |     |-published: A character value
#' |     |-updated: (Optional) A character value
#' |     |-deleted: A logical value
#' |     |-nsfw: A logical value
#' |     |-actor_id: A character value
#' |     |-local: A logical value
#' |     |-icon: (Optional) A character value
#' |     |-banner: (Optional) A character value
#' |     |-followers_url: A character value
#' |     |-inbox_url: A character value
#' |     |-hidden: A logical value
#' |     |-posting_restricted_to_mods: A logical value
#' |     `-instance_id: A numeric value
#' |-removed_communities: <list>
#' | `-[Each element]: <list>
#' |   |-mod_remove_community: <list>
#' |   | |-id: A numeric value
#' |   | |-mod_person_id: A numeric value
#' |   | |-community_id: A numeric value
#' |   | |-reason: (Optional) A character value
#' |   | |-removed: A logical value
#' |   | |-expires: (Optional) A character value
#' |   | `-when_: A character value
#' |   |-moderator: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-display_name: (Optional) A character value
#' |   | |-avatar: (Optional) A character value
#' |   | |-banned: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-actor_id: A character value
#' |   | |-bio: (Optional) A character value
#' |   | |-local: A logical value
#' |   | |-banner: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-inbox_url: A character value
#' |   | |-matrix_user_id: (Optional) A character value
#' |   | |-admin: A logical value
#' |   | |-bot_account: A logical value
#' |   | |-ban_expires: (Optional) A character value
#' |   | `-instance_id: A numeric value
#' |   `-community: <list>
#' |     |-id: A numeric value
#' |     |-name: A character value
#' |     |-title: A character value
#' |     |-description: (Optional) A character value
#' |     |-removed: A logical value
#' |     |-published: A character value
#' |     |-updated: (Optional) A character value
#' |     |-deleted: A logical value
#' |     |-nsfw: A logical value
#' |     |-actor_id: A character value
#' |     |-local: A logical value
#' |     |-icon: (Optional) A character value
#' |     |-banner: (Optional) A character value
#' |     |-followers_url: A character value
#' |     |-inbox_url: A character value
#' |     |-hidden: A logical value
#' |     |-posting_restricted_to_mods: A logical value
#' |     `-instance_id: A numeric value
#' |-banned_from_community: <list>
#' | `-[Each element]: <list>
#' |   |-mod_ban_from_community: <list>
#' |   | |-id: A numeric value
#' |   | |-mod_person_id: A numeric value
#' |   | |-other_person_id: A numeric value
#' |   | |-community_id: A numeric value
#' |   | |-reason: (Optional) A character value
#' |   | |-banned: A logical value
#' |   | |-expires: (Optional) A character value
#' |   | `-when_: A character value
#' |   |-moderator: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-display_name: (Optional) A character value
#' |   | |-avatar: (Optional) A character value
#' |   | |-banned: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-actor_id: A character value
#' |   | |-bio: (Optional) A character value
#' |   | |-local: A logical value
#' |   | |-banner: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-inbox_url: A character value
#' |   | |-matrix_user_id: (Optional) A character value
#' |   | |-admin: A logical value
#' |   | |-bot_account: A logical value
#' |   | |-ban_expires: (Optional) A character value
#' |   | `-instance_id: A numeric value
#' |   |-community: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-title: A character value
#' |   | |-description: (Optional) A character value
#' |   | |-removed: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-nsfw: A logical value
#' |   | |-actor_id: A character value
#' |   | |-local: A logical value
#' |   | |-icon: (Optional) A character value
#' |   | |-banner: (Optional) A character value
#' |   | |-followers_url: A character value
#' |   | |-inbox_url: A character value
#' |   | |-hidden: A logical value
#' |   | |-posting_restricted_to_mods: A logical value
#' |   | `-instance_id: A numeric value
#' |   `-banned_person: <list>
#' |     |-id: A numeric value
#' |     |-name: A character value
#' |     |-display_name: (Optional) A character value
#' |     |-avatar: (Optional) A character value
#' |     |-banned: A logical value
#' |     |-published: A character value
#' |     |-updated: (Optional) A character value
#' |     |-actor_id: A character value
#' |     |-bio: (Optional) A character value
#' |     |-local: A logical value
#' |     |-banner: (Optional) A character value
#' |     |-deleted: A logical value
#' |     |-inbox_url: A character value
#' |     |-matrix_user_id: (Optional) A character value
#' |     |-admin: A logical value
#' |     |-bot_account: A logical value
#' |     |-ban_expires: (Optional) A character value
#' |     `-instance_id: A numeric value
#' |-banned: <list>
#' | `-[Each element]: <list>
#' |   |-mod_ban: <list>
#' |   | |-id: A numeric value
#' |   | |-mod_person_id: A numeric value
#' |   | |-other_person_id: A numeric value
#' |   | |-reason: (Optional) A character value
#' |   | |-banned: A logical value
#' |   | |-expires: (Optional) A character value
#' |   | `-when_: A character value
#' |   |-moderator: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-display_name: (Optional) A character value
#' |   | |-avatar: (Optional) A character value
#' |   | |-banned: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-actor_id: A character value
#' |   | |-bio: (Optional) A character value
#' |   | |-local: A logical value
#' |   | |-banner: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-inbox_url: A character value
#' |   | |-matrix_user_id: (Optional) A character value
#' |   | |-admin: A logical value
#' |   | |-bot_account: A logical value
#' |   | |-ban_expires: (Optional) A character value
#' |   | `-instance_id: A numeric value
#' |   `-banned_person: <list>
#' |     |-id: A numeric value
#' |     |-name: A character value
#' |     |-display_name: (Optional) A character value
#' |     |-avatar: (Optional) A character value
#' |     |-banned: A logical value
#' |     |-published: A character value
#' |     |-updated: (Optional) A character value
#' |     |-actor_id: A character value
#' |     |-bio: (Optional) A character value
#' |     |-local: A logical value
#' |     |-banner: (Optional) A character value
#' |     |-deleted: A logical value
#' |     |-inbox_url: A character value
#' |     |-matrix_user_id: (Optional) A character value
#' |     |-admin: A logical value
#' |     |-bot_account: A logical value
#' |     |-ban_expires: (Optional) A character value
#' |     `-instance_id: A numeric value
#' |-added_to_community: <list>
#' | `-[Each element]: <list>
#' |   |-mod_add_community: <list>
#' |   | |-id: A numeric value
#' |   | |-mod_person_id: A numeric value
#' |   | |-other_person_id: A numeric value
#' |   | |-community_id: A numeric value
#' |   | |-removed: A logical value
#' |   | `-when_: A character value
#' |   |-moderator: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-display_name: (Optional) A character value
#' |   | |-avatar: (Optional) A character value
#' |   | |-banned: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-actor_id: A character value
#' |   | |-bio: (Optional) A character value
#' |   | |-local: A logical value
#' |   | |-banner: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-inbox_url: A character value
#' |   | |-matrix_user_id: (Optional) A character value
#' |   | |-admin: A logical value
#' |   | |-bot_account: A logical value
#' |   | |-ban_expires: (Optional) A character value
#' |   | `-instance_id: A numeric value
#' |   |-community: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-title: A character value
#' |   | |-description: (Optional) A character value
#' |   | |-removed: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-nsfw: A logical value
#' |   | |-actor_id: A character value
#' |   | |-local: A logical value
#' |   | |-icon: (Optional) A character value
#' |   | |-banner: (Optional) A character value
#' |   | |-followers_url: A character value
#' |   | |-inbox_url: A character value
#' |   | |-hidden: A logical value
#' |   | |-posting_restricted_to_mods: A logical value
#' |   | `-instance_id: A numeric value
#' |   `-modded_person: <list>
#' |     |-id: A numeric value
#' |     |-name: A character value
#' |     |-display_name: (Optional) A character value
#' |     |-avatar: (Optional) A character value
#' |     |-banned: A logical value
#' |     |-published: A character value
#' |     |-updated: (Optional) A character value
#' |     |-actor_id: A character value
#' |     |-bio: (Optional) A character value
#' |     |-local: A logical value
#' |     |-banner: (Optional) A character value
#' |     |-deleted: A logical value
#' |     |-inbox_url: A character value
#' |     |-matrix_user_id: (Optional) A character value
#' |     |-admin: A logical value
#' |     |-bot_account: A logical value
#' |     |-ban_expires: (Optional) A character value
#' |     `-instance_id: A numeric value
#' |-transferred_to_community: <list>
#' | `-[Each element]: <list>
#' |   |-mod_transfer_community: <list>
#' |   | |-id: A numeric value
#' |   | |-mod_person_id: A numeric value
#' |   | |-other_person_id: A numeric value
#' |   | |-community_id: A numeric value
#' |   | `-when_: A character value
#' |   |-moderator: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-display_name: (Optional) A character value
#' |   | |-avatar: (Optional) A character value
#' |   | |-banned: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-actor_id: A character value
#' |   | |-bio: (Optional) A character value
#' |   | |-local: A logical value
#' |   | |-banner: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-inbox_url: A character value
#' |   | |-matrix_user_id: (Optional) A character value
#' |   | |-admin: A logical value
#' |   | |-bot_account: A logical value
#' |   | |-ban_expires: (Optional) A character value
#' |   | `-instance_id: A numeric value
#' |   |-community: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-title: A character value
#' |   | |-description: (Optional) A character value
#' |   | |-removed: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-nsfw: A logical value
#' |   | |-actor_id: A character value
#' |   | |-local: A logical value
#' |   | |-icon: (Optional) A character value
#' |   | |-banner: (Optional) A character value
#' |   | |-followers_url: A character value
#' |   | |-inbox_url: A character value
#' |   | |-hidden: A logical value
#' |   | |-posting_restricted_to_mods: A logical value
#' |   | `-instance_id: A numeric value
#' |   `-modded_person: <list>
#' |     |-id: A numeric value
#' |     |-name: A character value
#' |     |-display_name: (Optional) A character value
#' |     |-avatar: (Optional) A character value
#' |     |-banned: A logical value
#' |     |-published: A character value
#' |     |-updated: (Optional) A character value
#' |     |-actor_id: A character value
#' |     |-bio: (Optional) A character value
#' |     |-local: A logical value
#' |     |-banner: (Optional) A character value
#' |     |-deleted: A logical value
#' |     |-inbox_url: A character value
#' |     |-matrix_user_id: (Optional) A character value
#' |     |-admin: A logical value
#' |     |-bot_account: A logical value
#' |     |-ban_expires: (Optional) A character value
#' |     `-instance_id: A numeric value
#' |-added: <list>
#' | `-[Each element]: <list>
#' |   |-mod_add: <list>
#' |   | |-id: A numeric value
#' |   | |-mod_person_id: A numeric value
#' |   | |-other_person_id: A numeric value
#' |   | |-removed: A logical value
#' |   | `-when_: A character value
#' |   |-moderator: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-display_name: (Optional) A character value
#' |   | |-avatar: (Optional) A character value
#' |   | |-banned: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-actor_id: A character value
#' |   | |-bio: (Optional) A character value
#' |   | |-local: A logical value
#' |   | |-banner: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-inbox_url: A character value
#' |   | |-matrix_user_id: (Optional) A character value
#' |   | |-admin: A logical value
#' |   | |-bot_account: A logical value
#' |   | |-ban_expires: (Optional) A character value
#' |   | `-instance_id: A numeric value
#' |   `-modded_person: <list>
#' |     |-id: A numeric value
#' |     |-name: A character value
#' |     |-display_name: (Optional) A character value
#' |     |-avatar: (Optional) A character value
#' |     |-banned: A logical value
#' |     |-published: A character value
#' |     |-updated: (Optional) A character value
#' |     |-actor_id: A character value
#' |     |-bio: (Optional) A character value
#' |     |-local: A logical value
#' |     |-banner: (Optional) A character value
#' |     |-deleted: A logical value
#' |     |-inbox_url: A character value
#' |     |-matrix_user_id: (Optional) A character value
#' |     |-admin: A logical value
#' |     |-bot_account: A logical value
#' |     |-ban_expires: (Optional) A character value
#' |     `-instance_id: A numeric value
#' |-admin_purged_persons: <list>
#' | `-[Each element]: <list>
#' |   |-admin_purge_person: <list>
#' |   | |-id: A numeric value
#' |   | |-admin_person_id: A numeric value
#' |   | |-reason: (Optional) A character value
#' |   | `-when_: A character value
#' |   `-admin: <list>
#' |     |-id: A numeric value
#' |     |-name: A character value
#' |     |-display_name: (Optional) A character value
#' |     |-avatar: (Optional) A character value
#' |     |-banned: A logical value
#' |     |-published: A character value
#' |     |-updated: (Optional) A character value
#' |     |-actor_id: A character value
#' |     |-bio: (Optional) A character value
#' |     |-local: A logical value
#' |     |-banner: (Optional) A character value
#' |     |-deleted: A logical value
#' |     |-inbox_url: A character value
#' |     |-matrix_user_id: (Optional) A character value
#' |     |-admin: A logical value
#' |     |-bot_account: A logical value
#' |     |-ban_expires: (Optional) A character value
#' |     `-instance_id: A numeric value
#' |-admin_purged_communities: <list>
#' | `-[Each element]: <list>
#' |   |-admin_purge_community: <list>
#' |   | |-id: A numeric value
#' |   | |-admin_person_id: A numeric value
#' |   | |-reason: (Optional) A character value
#' |   | `-when_: A character value
#' |   `-admin: <list>
#' |     |-id: A numeric value
#' |     |-name: A character value
#' |     |-display_name: (Optional) A character value
#' |     |-avatar: (Optional) A character value
#' |     |-banned: A logical value
#' |     |-published: A character value
#' |     |-updated: (Optional) A character value
#' |     |-actor_id: A character value
#' |     |-bio: (Optional) A character value
#' |     |-local: A logical value
#' |     |-banner: (Optional) A character value
#' |     |-deleted: A logical value
#' |     |-inbox_url: A character value
#' |     |-matrix_user_id: (Optional) A character value
#' |     |-admin: A logical value
#' |     |-bot_account: A logical value
#' |     |-ban_expires: (Optional) A character value
#' |     `-instance_id: A numeric value
#' |-admin_purged_posts: <list>
#' | `-[Each element]: <list>
#' |   |-admin_purge_post: <list>
#' |   | |-id: A numeric value
#' |   | |-admin_person_id: A numeric value
#' |   | |-community_id: A numeric value
#' |   | |-reason: (Optional) A character value
#' |   | `-when_: A character value
#' |   |-admin: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-display_name: (Optional) A character value
#' |   | |-avatar: (Optional) A character value
#' |   | |-banned: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-actor_id: A character value
#' |   | |-bio: (Optional) A character value
#' |   | |-local: A logical value
#' |   | |-banner: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-inbox_url: A character value
#' |   | |-matrix_user_id: (Optional) A character value
#' |   | |-admin: A logical value
#' |   | |-bot_account: A logical value
#' |   | |-ban_expires: (Optional) A character value
#' |   | `-instance_id: A numeric value
#' |   `-community: <list>
#' |     |-id: A numeric value
#' |     |-name: A character value
#' |     |-title: A character value
#' |     |-description: (Optional) A character value
#' |     |-removed: A logical value
#' |     |-published: A character value
#' |     |-updated: (Optional) A character value
#' |     |-deleted: A logical value
#' |     |-nsfw: A logical value
#' |     |-actor_id: A character value
#' |     |-local: A logical value
#' |     |-icon: (Optional) A character value
#' |     |-banner: (Optional) A character value
#' |     |-followers_url: A character value
#' |     |-inbox_url: A character value
#' |     |-hidden: A logical value
#' |     |-posting_restricted_to_mods: A logical value
#' |     `-instance_id: A numeric value
#' |-admin_purged_comments: <list>
#' | `-[Each element]: <list>
#' |   |-admin_purge_comment: <list>
#' |   | |-id: A numeric value
#' |   | |-admin_person_id: A numeric value
#' |   | |-post_id: A numeric value
#' |   | |-reason: (Optional) A character value
#' |   | `-when_: A character value
#' |   |-admin: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-display_name: (Optional) A character value
#' |   | |-avatar: (Optional) A character value
#' |   | |-banned: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-actor_id: A character value
#' |   | |-bio: (Optional) A character value
#' |   | |-local: A logical value
#' |   | |-banner: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-inbox_url: A character value
#' |   | |-matrix_user_id: (Optional) A character value
#' |   | |-admin: A logical value
#' |   | |-bot_account: A logical value
#' |   | |-ban_expires: (Optional) A character value
#' |   | `-instance_id: A numeric value
#' |   `-post: <list>
#' |     |-id: A numeric value
#' |     |-name: A character value
#' |     |-url: (Optional) A character value
#' |     |-body: (Optional) A character value
#' |     |-creator_id: A numeric value
#' |     |-community_id: A numeric value
#' |     |-removed: A logical value
#' |     |-locked: A logical value
#' |     |-published: A character value
#' |     |-updated: (Optional) A character value
#' |     |-deleted: A logical value
#' |     |-nsfw: A logical value
#' |     |-embed_title: (Optional) A character value
#' |     |-embed_description: (Optional) A character value
#' |     |-thumbnail_url: (Optional) A character value
#' |     |-ap_id: A character value
#' |     |-local: A logical value
#' |     |-embed_video_url: (Optional) A character value
#' |     |-language_id: A numeric value
#' |     |-featured_community: A logical value
#' |     `-featured_local: A logical value
#' `-hidden_communities: <list>
#'   `-[Each element]: <list>
#'     |-mod_hide_community: <list>
#'     | |-id: A numeric value
#'     | |-community_id: A numeric value
#'     | |-mod_person_id: A numeric value
#'     | |-when_: A character value
#'     | |-reason: (Optional) A character value
#'     | `-hidden: A logical value
#'     |-admin: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-display_name: (Optional) A character value
#'     | |-avatar: (Optional) A character value
#'     | |-banned: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-actor_id: A character value
#'     | |-bio: (Optional) A character value
#'     | |-local: A logical value
#'     | |-banner: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-inbox_url: A character value
#'     | |-matrix_user_id: (Optional) A character value
#'     | |-admin: A logical value
#'     | |-bot_account: A logical value
#'     | |-ban_expires: (Optional) A character value
#'     | `-instance_id: A numeric value
#'     `-community: <list>
#'       |-id: A numeric value
#'       |-name: A character value
#'       |-title: A character value
#'       |-description: (Optional) A character value
#'       |-removed: A logical value
#'       |-published: A character value
#'       |-updated: (Optional) A character value
#'       |-deleted: A logical value
#'       |-nsfw: A logical value
#'       |-actor_id: A character value
#'       |-local: A logical value
#'       |-icon: (Optional) A character value
#'       |-banner: (Optional) A character value
#'       |-followers_url: A character value
#'       |-inbox_url: A character value
#'       |-hidden: A logical value
#'       |-posting_restricted_to_mods: A logical value
#'       `-instance_id: A numeric value
#' }
#'
#' @export
lemmy_get_modlog <- function(
    mod_person_id = NULL, community_id = NULL, page = NULL,
    limit = NULL, type_ = NULL, other_person_id = NULL, auth = NULL,
    .lemmy_instance = getOption("lemmy_instance", "https://lemmy.world")) {
  stopifnot(length(mod_person_id) <= 1L)
  stopifnot(length(community_id) <= 1L)
  stopifnot(length(page) <= 1L)
  stopifnot(length(limit) <= 1L)
  stopifnot(length(type_) <= 1L)
  stopifnot(length(other_person_id) <= 1L)
  stopifnot(length(auth) <= 1L)
  stopifnot(is.null(mod_person_id) || is.numeric(mod_person_id))
  stopifnot(is.null(community_id) || is.numeric(community_id))
  stopifnot(is.null(page) || is.numeric(page))
  stopifnot(is.null(limit) || is.numeric(limit))
  stopifnot(is.null(other_person_id) || is.numeric(other_person_id))
  stopifnot(is.null(auth) || is.character(auth))
  stopifnot(is.null(type_) || type_ %in% c(
    "All", "ModRemovePost",
    "ModLockPost", "ModFeaturePost", "ModRemoveComment", "ModRemoveCommunity",
    "ModBanFromCommunity", "ModAddCommunity", "ModTransferCommunity",
    "ModAdd", "ModBan", "ModHideCommunity", "AdminPurgePerson",
    "AdminPurgeCommunity", "AdminPurgePost", "AdminPurgeComment"
  ))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "modlog",
    mod_person_id = mod_person_id, community_id = community_id,
    page = page, limit = limit, type_ = type_, other_person_id = other_person_id,
    auth = auth
  )
}
#' Search lemmy.
#'
#' `HTTP.GET /search`
#'
#' @param q A character value.
#' @param community_id (Optional) A numeric value.
#' @param community_name (Optional) A character value.
#' @param creator_id (Optional) A numeric value.
#' @param type_ (Optional) One of "All", "Comments", "Posts", "Communities", "Users", or "Url".
#' @param sort (Optional) One of "Active", "Hot", "New", "Old", "TopDay", "TopWeek", "TopMonth", "TopYear", "TopAll", "MostComments", "NewComments", "TopHour", "TopSixHour", "TopTwelveHour", "TopThreeMonths", "TopSixMonths", or "TopNineMonths".
#' @param listing_type (Optional) One of "All", "Local", or "Subscribed".
#' @param page (Optional) A numeric value.
#' @param limit (Optional) A numeric value.
#' @param auth (Optional) A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 5:
#' \preformatted{<list>
#' |-type_: One of "All", "Comments", "Posts...
#' |-comments: <list>
#' | `-[Each element]: <list>
#' |   |-comment: <list>
#' |   | |-id: A numeric value
#' |   | |-creator_id: A numeric value
#' |   | |-post_id: A numeric value
#' |   | |-content: A character value
#' |   | |-removed: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-ap_id: A character value
#' |   | |-local: A logical value
#' |   | |-path: A character value
#' |   | |-distinguished: A logical value
#' |   | `-language_id: A numeric value
#' |   |-creator: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-display_name: (Optional) A character value
#' |   | |-avatar: (Optional) A character value
#' |   | |-banned: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-actor_id: A character value
#' |   | |-bio: (Optional) A character value
#' |   | |-local: A logical value
#' |   | |-banner: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-inbox_url: A character value
#' |   | |-matrix_user_id: (Optional) A character value
#' |   | |-admin: A logical value
#' |   | |-bot_account: A logical value
#' |   | |-ban_expires: (Optional) A character value
#' |   | `-instance_id: A numeric value
#' |   |-post: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-url: (Optional) A character value
#' |   | |-body: (Optional) A character value
#' |   | |-creator_id: A numeric value
#' |   | |-community_id: A numeric value
#' |   | |-removed: A logical value
#' |   | |-locked: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-nsfw: A logical value
#' |   | |-embed_title: (Optional) A character value
#' |   | |-embed_description: (Optional) A character value
#' |   | |-thumbnail_url: (Optional) A character value
#' |   | |-ap_id: A character value
#' |   | |-local: A logical value
#' |   | |-embed_video_url: (Optional) A character value
#' |   | |-language_id: A numeric value
#' |   | |-featured_community: A logical value
#' |   | `-featured_local: A logical value
#' |   |-community: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-title: A character value
#' |   | |-description: (Optional) A character value
#' |   | |-removed: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-nsfw: A logical value
#' |   | |-actor_id: A character value
#' |   | |-local: A logical value
#' |   | |-icon: (Optional) A character value
#' |   | |-banner: (Optional) A character value
#' |   | |-followers_url: A character value
#' |   | |-inbox_url: A character value
#' |   | |-hidden: A logical value
#' |   | |-posting_restricted_to_mods: A logical value
#' |   | `-instance_id: A numeric value
#' |   |-counts: <list>
#' |   | |-id: A numeric value
#' |   | |-comment_id: A numeric value
#' |   | |-score: A numeric value
#' |   | |-upvotes: A numeric value
#' |   | |-downvotes: A numeric value
#' |   | |-published: A character value
#' |   | |-child_count: A numeric value
#' |   | `-hot_rank: A numeric value
#' |   |-creator_banned_from_community: A logical value
#' |   |-subscribed: One of "Subscribed", "NotSubscri...
#' |   |-saved: A logical value
#' |   |-creator_blocked: A logical value
#' |   `-my_vote: (Optional) A numeric value
#' |-posts: <list>
#' | `-[Each element]: <list>
#' |   |-post: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-url: (Optional) A character value
#' |   | |-body: (Optional) A character value
#' |   | |-creator_id: A numeric value
#' |   | |-community_id: A numeric value
#' |   | |-removed: A logical value
#' |   | |-locked: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-nsfw: A logical value
#' |   | |-embed_title: (Optional) A character value
#' |   | |-embed_description: (Optional) A character value
#' |   | |-thumbnail_url: (Optional) A character value
#' |   | |-ap_id: A character value
#' |   | |-local: A logical value
#' |   | |-embed_video_url: (Optional) A character value
#' |   | |-language_id: A numeric value
#' |   | |-featured_community: A logical value
#' |   | `-featured_local: A logical value
#' |   |-creator: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-display_name: (Optional) A character value
#' |   | |-avatar: (Optional) A character value
#' |   | |-banned: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-actor_id: A character value
#' |   | |-bio: (Optional) A character value
#' |   | |-local: A logical value
#' |   | |-banner: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-inbox_url: A character value
#' |   | |-matrix_user_id: (Optional) A character value
#' |   | |-admin: A logical value
#' |   | |-bot_account: A logical value
#' |   | |-ban_expires: (Optional) A character value
#' |   | `-instance_id: A numeric value
#' |   |-community: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-title: A character value
#' |   | |-description: (Optional) A character value
#' |   | |-removed: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-nsfw: A logical value
#' |   | |-actor_id: A character value
#' |   | |-local: A logical value
#' |   | |-icon: (Optional) A character value
#' |   | |-banner: (Optional) A character value
#' |   | |-followers_url: A character value
#' |   | |-inbox_url: A character value
#' |   | |-hidden: A logical value
#' |   | |-posting_restricted_to_mods: A logical value
#' |   | `-instance_id: A numeric value
#' |   |-creator_banned_from_community: A logical value
#' |   |-counts: <list>
#' |   | |-id: A numeric value
#' |   | |-post_id: A numeric value
#' |   | |-comments: A numeric value
#' |   | |-score: A numeric value
#' |   | |-upvotes: A numeric value
#' |   | |-downvotes: A numeric value
#' |   | |-published: A character value
#' |   | |-newest_comment_time_necro: A character value
#' |   | |-newest_comment_time: A character value
#' |   | |-featured_community: A logical value
#' |   | |-featured_local: A logical value
#' |   | |-hot_rank: A numeric value
#' |   | `-hot_rank_active: A numeric value
#' |   |-subscribed: One of "Subscribed", "NotSubscri...
#' |   |-saved: A logical value
#' |   |-read: A logical value
#' |   |-creator_blocked: A logical value
#' |   |-my_vote: (Optional) A numeric value
#' |   `-unread_comments: A numeric value
#' |-communities: <list>
#' | `-[Each element]: <list>
#' |   |-community: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-title: A character value
#' |   | |-description: (Optional) A character value
#' |   | |-removed: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-nsfw: A logical value
#' |   | |-actor_id: A character value
#' |   | |-local: A logical value
#' |   | |-icon: (Optional) A character value
#' |   | |-banner: (Optional) A character value
#' |   | |-followers_url: A character value
#' |   | |-inbox_url: A character value
#' |   | |-hidden: A logical value
#' |   | |-posting_restricted_to_mods: A logical value
#' |   | `-instance_id: A numeric value
#' |   |-subscribed: One of "Subscribed", "NotSubscri...
#' |   |-blocked: A logical value
#' |   `-counts: <list>
#' |     |-id: A numeric value
#' |     |-community_id: A numeric value
#' |     |-subscribers: A numeric value
#' |     |-posts: A numeric value
#' |     |-comments: A numeric value
#' |     |-published: A character value
#' |     |-users_active_day: A numeric value
#' |     |-users_active_week: A numeric value
#' |     |-users_active_month: A numeric value
#' |     |-users_active_half_year: A numeric value
#' |     `-hot_rank: A numeric value
#' `-users: <list>
#'   `-[Each element]: <list>
#'     |-person: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-display_name: (Optional) A character value
#'     | |-avatar: (Optional) A character value
#'     | |-banned: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-actor_id: A character value
#'     | |-bio: (Optional) A character value
#'     | |-local: A logical value
#'     | |-banner: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-inbox_url: A character value
#'     | |-matrix_user_id: (Optional) A character value
#'     | |-admin: A logical value
#'     | |-bot_account: A logical value
#'     | |-ban_expires: (Optional) A character value
#'     | `-instance_id: A numeric value
#'     `-counts: <list>
#'       |-id: A numeric value
#'       |-person_id: A numeric value
#'       |-post_count: A numeric value
#'       |-post_score: A numeric value
#'       |-comment_count: A numeric value
#'       `-comment_score: A numeric value
#' }
#'
#' @examplesIf remmy:::is_lemmy_world()
#' search_results <- lemmy_search("Liverpool", type_ = "Posts", sort = "TopAll", limit = 1)
#'
#' search_results$posts[[1]]$community$name
#'
#' search_results$posts[[1]]$post$name
#'
#' @export
lemmy_search <- function(
    q, community_id = NULL, community_name = NULL, creator_id = NULL,
    type_ = NULL, sort = NULL, listing_type = NULL, page = NULL,
    limit = NULL, auth = NULL, .lemmy_instance = getOption(
      "lemmy_instance",
      "https://lemmy.world"
    )) {
  stopifnot(length(q) == 1L)
  stopifnot(length(community_id) <= 1L)
  stopifnot(length(community_name) <= 1L)
  stopifnot(length(creator_id) <= 1L)
  stopifnot(length(type_) <= 1L)
  stopifnot(length(sort) <= 1L)
  stopifnot(length(listing_type) <= 1L)
  stopifnot(length(page) <= 1L)
  stopifnot(length(limit) <= 1L)
  stopifnot(length(auth) <= 1L)
  stopifnot(is.character(q))
  stopifnot(is.null(community_id) || is.numeric(community_id))
  stopifnot(is.null(community_name) || is.character(community_name))
  stopifnot(is.null(creator_id) || is.numeric(creator_id))
  stopifnot(is.null(page) || is.numeric(page))
  stopifnot(is.null(limit) || is.numeric(limit))
  stopifnot(is.null(auth) || is.character(auth))
  stopifnot(is.null(type_) || type_ %in% c(
    "All", "Comments",
    "Posts", "Communities", "Users", "Url"
  ))
  stopifnot(is.null(sort) || sort %in% c(
    "Active", "Hot", "New",
    "Old", "TopDay", "TopWeek", "TopMonth", "TopYear", "TopAll",
    "MostComments", "NewComments", "TopHour", "TopSixHour", "TopTwelveHour",
    "TopThreeMonths", "TopSixMonths", "TopNineMonths"
  ))
  stopifnot(is.null(listing_type) || listing_type %in% c(
    "All",
    "Local", "Subscribed"
  ))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "search",
    q = q, community_id = community_id, community_name = community_name,
    creator_id = creator_id, type_ = type_, sort = sort,
    listing_type = listing_type, page = page, limit = limit,
    auth = auth
  )
}
#' Fetch a non-local / federated object.
#'
#' `HTTP.GET /resolve_object`
#'
#' @param q A character value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 4:
#' \preformatted{<list>
#' |-comment: <list>
#' | |-comment: <list>
#' | | |-id: A numeric value
#' | | |-creator_id: A numeric value
#' | | |-post_id: A numeric value
#' | | |-content: A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-ap_id: A character value
#' | | |-local: A logical value
#' | | |-path: A character value
#' | | |-distinguished: A logical value
#' | | `-language_id: A numeric value
#' | |-creator: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-display_name: (Optional) A character value
#' | | |-avatar: (Optional) A character value
#' | | |-banned: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-actor_id: A character value
#' | | |-bio: (Optional) A character value
#' | | |-local: A logical value
#' | | |-banner: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-inbox_url: A character value
#' | | |-matrix_user_id: (Optional) A character value
#' | | |-admin: A logical value
#' | | |-bot_account: A logical value
#' | | |-ban_expires: (Optional) A character value
#' | | `-instance_id: A numeric value
#' | |-post: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-url: (Optional) A character value
#' | | |-body: (Optional) A character value
#' | | |-creator_id: A numeric value
#' | | |-community_id: A numeric value
#' | | |-removed: A logical value
#' | | |-locked: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-embed_title: (Optional) A character value
#' | | |-embed_description: (Optional) A character value
#' | | |-thumbnail_url: (Optional) A character value
#' | | |-ap_id: A character value
#' | | |-local: A logical value
#' | | |-embed_video_url: (Optional) A character value
#' | | |-language_id: A numeric value
#' | | |-featured_community: A logical value
#' | | `-featured_local: A logical value
#' | |-community: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-title: A character value
#' | | |-description: (Optional) A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-actor_id: A character value
#' | | |-local: A logical value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-followers_url: A character value
#' | | |-inbox_url: A character value
#' | | |-hidden: A logical value
#' | | |-posting_restricted_to_mods: A logical value
#' | | `-instance_id: A numeric value
#' | |-counts: <list>
#' | | |-id: A numeric value
#' | | |-comment_id: A numeric value
#' | | |-score: A numeric value
#' | | |-upvotes: A numeric value
#' | | |-downvotes: A numeric value
#' | | |-published: A character value
#' | | |-child_count: A numeric value
#' | | `-hot_rank: A numeric value
#' | |-creator_banned_from_community: A logical value
#' | |-subscribed: One of "Subscribed", "NotSubscri...
#' | |-saved: A logical value
#' | |-creator_blocked: A logical value
#' | `-my_vote: (Optional) A numeric value
#' |-post: <list>
#' | |-post: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-url: (Optional) A character value
#' | | |-body: (Optional) A character value
#' | | |-creator_id: A numeric value
#' | | |-community_id: A numeric value
#' | | |-removed: A logical value
#' | | |-locked: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-embed_title: (Optional) A character value
#' | | |-embed_description: (Optional) A character value
#' | | |-thumbnail_url: (Optional) A character value
#' | | |-ap_id: A character value
#' | | |-local: A logical value
#' | | |-embed_video_url: (Optional) A character value
#' | | |-language_id: A numeric value
#' | | |-featured_community: A logical value
#' | | `-featured_local: A logical value
#' | |-creator: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-display_name: (Optional) A character value
#' | | |-avatar: (Optional) A character value
#' | | |-banned: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-actor_id: A character value
#' | | |-bio: (Optional) A character value
#' | | |-local: A logical value
#' | | |-banner: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-inbox_url: A character value
#' | | |-matrix_user_id: (Optional) A character value
#' | | |-admin: A logical value
#' | | |-bot_account: A logical value
#' | | |-ban_expires: (Optional) A character value
#' | | `-instance_id: A numeric value
#' | |-community: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-title: A character value
#' | | |-description: (Optional) A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-actor_id: A character value
#' | | |-local: A logical value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-followers_url: A character value
#' | | |-inbox_url: A character value
#' | | |-hidden: A logical value
#' | | |-posting_restricted_to_mods: A logical value
#' | | `-instance_id: A numeric value
#' | |-creator_banned_from_community: A logical value
#' | |-counts: <list>
#' | | |-id: A numeric value
#' | | |-post_id: A numeric value
#' | | |-comments: A numeric value
#' | | |-score: A numeric value
#' | | |-upvotes: A numeric value
#' | | |-downvotes: A numeric value
#' | | |-published: A character value
#' | | |-newest_comment_time_necro: A character value
#' | | |-newest_comment_time: A character value
#' | | |-featured_community: A logical value
#' | | |-featured_local: A logical value
#' | | |-hot_rank: A numeric value
#' | | `-hot_rank_active: A numeric value
#' | |-subscribed: One of "Subscribed", "NotSubscri...
#' | |-saved: A logical value
#' | |-read: A logical value
#' | |-creator_blocked: A logical value
#' | |-my_vote: (Optional) A numeric value
#' | `-unread_comments: A numeric value
#' |-community: <list>
#' | |-community: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-title: A character value
#' | | |-description: (Optional) A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-actor_id: A character value
#' | | |-local: A logical value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-followers_url: A character value
#' | | |-inbox_url: A character value
#' | | |-hidden: A logical value
#' | | |-posting_restricted_to_mods: A logical value
#' | | `-instance_id: A numeric value
#' | |-subscribed: One of "Subscribed", "NotSubscri...
#' | |-blocked: A logical value
#' | `-counts: <list>
#' |   |-id: A numeric value
#' |   |-community_id: A numeric value
#' |   |-subscribers: A numeric value
#' |   |-posts: A numeric value
#' |   |-comments: A numeric value
#' |   |-published: A character value
#' |   |-users_active_day: A numeric value
#' |   |-users_active_week: A numeric value
#' |   |-users_active_month: A numeric value
#' |   |-users_active_half_year: A numeric value
#' |   `-hot_rank: A numeric value
#' `-person: <list>
#'   |-person: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   `-counts: <list>
#'     |-id: A numeric value
#'     |-person_id: A numeric value
#'     |-post_count: A numeric value
#'     |-post_score: A numeric value
#'     |-comment_count: A numeric value
#'     `-comment_score: A numeric value
#' }
#'
#' @export
lemmy_resolve_object <- function(q, auth, .lemmy_instance = getOption(
                                   "lemmy_instance",
                                   "https://lemmy.world"
                                 )) {
  stopifnot(length(q) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.character(q))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "resolve_object",
    q = q, auth = auth
  )
}
#' Create a new community.
#'
#' `HTTP.POST /community`
#'
#' @param name A character value.
#' @param title A character value.
#' @param description (Optional) A character value.
#' @param icon (Optional) A character value.
#' @param banner (Optional) A character value.
#' @param nsfw (Optional) A logical value.
#' @param posting_restricted_to_mods (Optional) A logical value.
#' @param discussion_languages (Optional) A numeric vector.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 2:
#' \preformatted{<list>
#' |-community_view: <list>
#' | |-community: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-title: A character value
#' | | |-description: (Optional) A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-actor_id: A character value
#' | | |-local: A logical value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-followers_url: A character value
#' | | |-inbox_url: A character value
#' | | |-hidden: A logical value
#' | | |-posting_restricted_to_mods: A logical value
#' | | `-instance_id: A numeric value
#' | |-subscribed: One of "Subscribed", "NotSubscri...
#' | |-blocked: A logical value
#' | `-counts: <list>
#' |   |-id: A numeric value
#' |   |-community_id: A numeric value
#' |   |-subscribers: A numeric value
#' |   |-posts: A numeric value
#' |   |-comments: A numeric value
#' |   |-published: A character value
#' |   |-users_active_day: A numeric value
#' |   |-users_active_week: A numeric value
#' |   |-users_active_month: A numeric value
#' |   |-users_active_half_year: A numeric value
#' |   `-hot_rank: A numeric value
#' `-discussion_languages: A numeric vector
#' }
#'
#' @export
lemmy_create_community <- function(
    name, title, description = NULL, icon = NULL, banner = NULL,
    nsfw = NULL, posting_restricted_to_mods = NULL, discussion_languages = NULL,
    auth, .lemmy_instance = getOption("lemmy_instance", "https://lemmy.world")) {
  stopifnot(length(name) == 1L)
  stopifnot(length(title) == 1L)
  stopifnot(length(description) <= 1L)
  stopifnot(length(icon) <= 1L)
  stopifnot(length(banner) <= 1L)
  stopifnot(length(nsfw) <= 1L)
  stopifnot(length(posting_restricted_to_mods) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.character(name))
  stopifnot(is.character(title))
  stopifnot(is.null(description) || is.character(description))
  stopifnot(is.null(icon) || is.character(icon))
  stopifnot(is.null(banner) || is.character(banner))
  stopifnot(is.null(nsfw) || is.logical(nsfw))
  stopifnot(is.null(posting_restricted_to_mods) || is.logical(posting_restricted_to_mods))
  stopifnot(is.null(discussion_languages) || is.numeric(discussion_languages))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "community",
    name = name, title = title, description = description,
    icon = icon, banner = banner, nsfw = nsfw, posting_restricted_to_mods = posting_restricted_to_mods,
    discussion_languages = discussion_languages, auth = auth
  )
}
#' Get / fetch a community.
#'
#' `HTTP.GET /community`
#'
#' @param id (Optional) A numeric value.
#' @param name (Optional) A character value.
#' @param auth (Optional) A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 4:
#' \preformatted{<list>
#' |-community_view: <list>
#' | |-community: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-title: A character value
#' | | |-description: (Optional) A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-actor_id: A character value
#' | | |-local: A logical value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-followers_url: A character value
#' | | |-inbox_url: A character value
#' | | |-hidden: A logical value
#' | | |-posting_restricted_to_mods: A logical value
#' | | `-instance_id: A numeric value
#' | |-subscribed: One of "Subscribed", "NotSubscri...
#' | |-blocked: A logical value
#' | `-counts: <list>
#' |   |-id: A numeric value
#' |   |-community_id: A numeric value
#' |   |-subscribers: A numeric value
#' |   |-posts: A numeric value
#' |   |-comments: A numeric value
#' |   |-published: A character value
#' |   |-users_active_day: A numeric value
#' |   |-users_active_week: A numeric value
#' |   |-users_active_month: A numeric value
#' |   |-users_active_half_year: A numeric value
#' |   `-hot_rank: A numeric value
#' |-site: <list>
#' | |-id: A numeric value
#' | |-name: A character value
#' | |-sidebar: (Optional) A character value
#' | |-published: A character value
#' | |-updated: (Optional) A character value
#' | |-icon: (Optional) A character value
#' | |-banner: (Optional) A character value
#' | |-description: (Optional) A character value
#' | |-actor_id: A character value
#' | |-last_refreshed_at: A character value
#' | |-inbox_url: A character value
#' | |-private_key: (Optional) A character value
#' | |-public_key: A character value
#' | `-instance_id: A numeric value
#' |-moderators: <list>
#' | `-[Each element]: <list>
#' |   |-community: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-title: A character value
#' |   | |-description: (Optional) A character value
#' |   | |-removed: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-nsfw: A logical value
#' |   | |-actor_id: A character value
#' |   | |-local: A logical value
#' |   | |-icon: (Optional) A character value
#' |   | |-banner: (Optional) A character value
#' |   | |-followers_url: A character value
#' |   | |-inbox_url: A character value
#' |   | |-hidden: A logical value
#' |   | |-posting_restricted_to_mods: A logical value
#' |   | `-instance_id: A numeric value
#' |   `-moderator: <list>
#' |     |-id: A numeric value
#' |     |-name: A character value
#' |     |-display_name: (Optional) A character value
#' |     |-avatar: (Optional) A character value
#' |     |-banned: A logical value
#' |     |-published: A character value
#' |     |-updated: (Optional) A character value
#' |     |-actor_id: A character value
#' |     |-bio: (Optional) A character value
#' |     |-local: A logical value
#' |     |-banner: (Optional) A character value
#' |     |-deleted: A logical value
#' |     |-inbox_url: A character value
#' |     |-matrix_user_id: (Optional) A character value
#' |     |-admin: A logical value
#' |     |-bot_account: A logical value
#' |     |-ban_expires: (Optional) A character value
#' |     `-instance_id: A numeric value
#' `-discussion_languages: A numeric vector
#' }
#'
#' @examplesIf remmy:::is_lemmy_world()
#' community_data <- lemmy_get_community(name = "redditwasfun")
#'
#' community_data$community_view$community$description
#'
#' @export
lemmy_get_community <- function(id = NULL, name = NULL, auth = NULL, .lemmy_instance = getOption(
                                  "lemmy_instance",
                                  "https://lemmy.world"
                                )) {
  stopifnot(length(id) <= 1L)
  stopifnot(length(name) <= 1L)
  stopifnot(length(auth) <= 1L)
  stopifnot(is.null(id) || is.numeric(id))
  stopifnot(is.null(name) || is.character(name))
  stopifnot(is.null(auth) || is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "community",
    id = id, name = name, auth = auth
  )
}
#' Edit a community.
#'
#' `HTTP.PUT /community`
#'
#' @param community_id A numeric value.
#' @param title (Optional) A character value.
#' @param description (Optional) A character value.
#' @param icon (Optional) A character value.
#' @param banner (Optional) A character value.
#' @param nsfw (Optional) A logical value.
#' @param posting_restricted_to_mods (Optional) A logical value.
#' @param discussion_languages (Optional) A numeric vector.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 2:
#' \preformatted{<list>
#' |-community_view: <list>
#' | |-community: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-title: A character value
#' | | |-description: (Optional) A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-actor_id: A character value
#' | | |-local: A logical value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-followers_url: A character value
#' | | |-inbox_url: A character value
#' | | |-hidden: A logical value
#' | | |-posting_restricted_to_mods: A logical value
#' | | `-instance_id: A numeric value
#' | |-subscribed: One of "Subscribed", "NotSubscri...
#' | |-blocked: A logical value
#' | `-counts: <list>
#' |   |-id: A numeric value
#' |   |-community_id: A numeric value
#' |   |-subscribers: A numeric value
#' |   |-posts: A numeric value
#' |   |-comments: A numeric value
#' |   |-published: A character value
#' |   |-users_active_day: A numeric value
#' |   |-users_active_week: A numeric value
#' |   |-users_active_month: A numeric value
#' |   |-users_active_half_year: A numeric value
#' |   `-hot_rank: A numeric value
#' `-discussion_languages: A numeric vector
#' }
#'
#' @export
lemmy_edit_community <- function(
    community_id, title = NULL, description = NULL, icon = NULL,
    banner = NULL, nsfw = NULL, posting_restricted_to_mods = NULL,
    discussion_languages = NULL, auth, .lemmy_instance = getOption(
      "lemmy_instance",
      "https://lemmy.world"
    )) {
  stopifnot(length(community_id) == 1L)
  stopifnot(length(title) <= 1L)
  stopifnot(length(description) <= 1L)
  stopifnot(length(icon) <= 1L)
  stopifnot(length(banner) <= 1L)
  stopifnot(length(nsfw) <= 1L)
  stopifnot(length(posting_restricted_to_mods) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(community_id))
  stopifnot(is.null(title) || is.character(title))
  stopifnot(is.null(description) || is.character(description))
  stopifnot(is.null(icon) || is.character(icon))
  stopifnot(is.null(banner) || is.character(banner))
  stopifnot(is.null(nsfw) || is.logical(nsfw))
  stopifnot(is.null(posting_restricted_to_mods) || is.logical(posting_restricted_to_mods))
  stopifnot(is.null(discussion_languages) || is.numeric(discussion_languages))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "PUT", endpoint = "community",
    community_id = community_id, title = title, description = description,
    icon = icon, banner = banner, nsfw = nsfw, posting_restricted_to_mods = posting_restricted_to_mods,
    discussion_languages = discussion_languages, auth = auth
  )
}
#' List communities, with various filters.
#'
#' `HTTP.GET /community/list`
#'
#' @param type_ (Optional) One of "All", "Local", or "Subscribed".
#' @param sort (Optional) One of "Active", "Hot", "New", "Old", "TopDay", "TopWeek", "TopMonth", "TopYear", "TopAll", "MostComments", "NewComments", "TopHour", "TopSixHour", "TopTwelveHour", "TopThreeMonths", "TopSixMonths", or "TopNineMonths".
#' @param show_nsfw (Optional) A logical value.
#' @param page (Optional) A numeric value.
#' @param limit (Optional) A numeric value.
#' @param auth (Optional) A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-communities: <list>
#'   `-[Each element]: <list>
#'     |-community: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-title: A character value
#'     | |-description: (Optional) A character value
#'     | |-removed: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-nsfw: A logical value
#'     | |-actor_id: A character value
#'     | |-local: A logical value
#'     | |-icon: (Optional) A character value
#'     | |-banner: (Optional) A character value
#'     | |-followers_url: A character value
#'     | |-inbox_url: A character value
#'     | |-hidden: A logical value
#'     | |-posting_restricted_to_mods: A logical value
#'     | `-instance_id: A numeric value
#'     |-subscribed: One of "Subscribed", "NotSubscri...
#'     |-blocked: A logical value
#'     `-counts: <list>
#'       |-id: A numeric value
#'       |-community_id: A numeric value
#'       |-subscribers: A numeric value
#'       |-posts: A numeric value
#'       |-comments: A numeric value
#'       |-published: A character value
#'       |-users_active_day: A numeric value
#'       |-users_active_week: A numeric value
#'       |-users_active_month: A numeric value
#'       |-users_active_half_year: A numeric value
#'       `-hot_rank: A numeric value
#' }
#'
#' @examplesIf remmy:::is_lemmy_world()
#' community_list <- lemmy_list_communities(sort = "TopMonth", limit = 1)
#'
#' community_list$communities[[1]]$community$name
#'
#' @export
lemmy_list_communities <- function(
    type_ = NULL, sort = NULL, show_nsfw = NULL, page = NULL,
    limit = NULL, auth = NULL, .lemmy_instance = getOption(
      "lemmy_instance",
      "https://lemmy.world"
    )) {
  stopifnot(length(type_) <= 1L)
  stopifnot(length(sort) <= 1L)
  stopifnot(length(show_nsfw) <= 1L)
  stopifnot(length(page) <= 1L)
  stopifnot(length(limit) <= 1L)
  stopifnot(length(auth) <= 1L)
  stopifnot(is.null(show_nsfw) || is.logical(show_nsfw))
  stopifnot(is.null(page) || is.numeric(page))
  stopifnot(is.null(limit) || is.numeric(limit))
  stopifnot(is.null(auth) || is.character(auth))
  stopifnot(is.null(type_) || type_ %in% c(
    "All", "Local",
    "Subscribed"
  ))
  stopifnot(is.null(sort) || sort %in% c(
    "Active", "Hot", "New",
    "Old", "TopDay", "TopWeek", "TopMonth", "TopYear", "TopAll",
    "MostComments", "NewComments", "TopHour", "TopSixHour", "TopTwelveHour",
    "TopThreeMonths", "TopSixMonths", "TopNineMonths"
  ))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "community/list",
    type_ = type_, sort = sort, show_nsfw = show_nsfw, page = page,
    limit = limit, auth = auth
  )
}
#' Follow / subscribe to a community.
#'
#' `HTTP.POST /community/follow`
#'
#' @param community_id A numeric value.
#' @param follow A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 2:
#' \preformatted{<list>
#' |-community_view: <list>
#' | |-community: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-title: A character value
#' | | |-description: (Optional) A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-actor_id: A character value
#' | | |-local: A logical value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-followers_url: A character value
#' | | |-inbox_url: A character value
#' | | |-hidden: A logical value
#' | | |-posting_restricted_to_mods: A logical value
#' | | `-instance_id: A numeric value
#' | |-subscribed: One of "Subscribed", "NotSubscri...
#' | |-blocked: A logical value
#' | `-counts: <list>
#' |   |-id: A numeric value
#' |   |-community_id: A numeric value
#' |   |-subscribers: A numeric value
#' |   |-posts: A numeric value
#' |   |-comments: A numeric value
#' |   |-published: A character value
#' |   |-users_active_day: A numeric value
#' |   |-users_active_week: A numeric value
#' |   |-users_active_month: A numeric value
#' |   |-users_active_half_year: A numeric value
#' |   `-hot_rank: A numeric value
#' `-discussion_languages: A numeric vector
#' }
#'
#' @export
lemmy_follow_community <- function(community_id, follow, auth, .lemmy_instance = getOption(
                                     "lemmy_instance",
                                     "https://lemmy.world"
                                   )) {
  stopifnot(length(community_id) == 1L)
  stopifnot(length(follow) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(community_id))
  stopifnot(is.logical(follow))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "community/follow",
    community_id = community_id, follow = follow, auth = auth
  )
}
#' Block a community.
#'
#' `HTTP.POST /community/block`
#'
#' @param community_id A numeric value.
#' @param block A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 2:
#' \preformatted{<list>
#' |-community_view: <list>
#' | |-community: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-title: A character value
#' | | |-description: (Optional) A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-actor_id: A character value
#' | | |-local: A logical value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-followers_url: A character value
#' | | |-inbox_url: A character value
#' | | |-hidden: A logical value
#' | | |-posting_restricted_to_mods: A logical value
#' | | `-instance_id: A numeric value
#' | |-subscribed: One of "Subscribed", "NotSubscri...
#' | |-blocked: A logical value
#' | `-counts: <list>
#' |   |-id: A numeric value
#' |   |-community_id: A numeric value
#' |   |-subscribers: A numeric value
#' |   |-posts: A numeric value
#' |   |-comments: A numeric value
#' |   |-published: A character value
#' |   |-users_active_day: A numeric value
#' |   |-users_active_week: A numeric value
#' |   |-users_active_month: A numeric value
#' |   |-users_active_half_year: A numeric value
#' |   `-hot_rank: A numeric value
#' `-blocked: A logical value
#' }
#'
#' @export
lemmy_block_community <- function(community_id, block, auth, .lemmy_instance = getOption(
                                    "lemmy_instance",
                                    "https://lemmy.world"
                                  )) {
  stopifnot(length(community_id) == 1L)
  stopifnot(length(block) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(community_id))
  stopifnot(is.logical(block))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "community/block",
    community_id = community_id, block = block, auth = auth
  )
}
#' Delete a community.
#'
#' `HTTP.POST /community/delete`
#'
#' @param community_id A numeric value.
#' @param deleted A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 2:
#' \preformatted{<list>
#' |-community_view: <list>
#' | |-community: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-title: A character value
#' | | |-description: (Optional) A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-actor_id: A character value
#' | | |-local: A logical value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-followers_url: A character value
#' | | |-inbox_url: A character value
#' | | |-hidden: A logical value
#' | | |-posting_restricted_to_mods: A logical value
#' | | `-instance_id: A numeric value
#' | |-subscribed: One of "Subscribed", "NotSubscri...
#' | |-blocked: A logical value
#' | `-counts: <list>
#' |   |-id: A numeric value
#' |   |-community_id: A numeric value
#' |   |-subscribers: A numeric value
#' |   |-posts: A numeric value
#' |   |-comments: A numeric value
#' |   |-published: A character value
#' |   |-users_active_day: A numeric value
#' |   |-users_active_week: A numeric value
#' |   |-users_active_month: A numeric value
#' |   |-users_active_half_year: A numeric value
#' |   `-hot_rank: A numeric value
#' `-discussion_languages: A numeric vector
#' }
#'
#' @export
lemmy_delete_community <- function(community_id, deleted, auth, .lemmy_instance = getOption(
                                     "lemmy_instance",
                                     "https://lemmy.world"
                                   )) {
  stopifnot(length(community_id) == 1L)
  stopifnot(length(deleted) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(community_id))
  stopifnot(is.logical(deleted))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "community/delete",
    community_id = community_id, deleted = deleted, auth = auth
  )
}
#' A moderator remove for a community.
#'
#' `HTTP.POST /community/remove`
#'
#' @param community_id A numeric value.
#' @param removed A logical value.
#' @param reason (Optional) A character value.
#' @param expires (Optional) A numeric value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 2:
#' \preformatted{<list>
#' |-community_view: <list>
#' | |-community: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-title: A character value
#' | | |-description: (Optional) A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-actor_id: A character value
#' | | |-local: A logical value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-followers_url: A character value
#' | | |-inbox_url: A character value
#' | | |-hidden: A logical value
#' | | |-posting_restricted_to_mods: A logical value
#' | | `-instance_id: A numeric value
#' | |-subscribed: One of "Subscribed", "NotSubscri...
#' | |-blocked: A logical value
#' | `-counts: <list>
#' |   |-id: A numeric value
#' |   |-community_id: A numeric value
#' |   |-subscribers: A numeric value
#' |   |-posts: A numeric value
#' |   |-comments: A numeric value
#' |   |-published: A character value
#' |   |-users_active_day: A numeric value
#' |   |-users_active_week: A numeric value
#' |   |-users_active_month: A numeric value
#' |   |-users_active_half_year: A numeric value
#' |   `-hot_rank: A numeric value
#' `-discussion_languages: A numeric vector
#' }
#'
#' @export
lemmy_remove_community <- function(
    community_id, removed, reason = NULL, expires = NULL,
    auth, .lemmy_instance = getOption("lemmy_instance", "https://lemmy.world")) {
  stopifnot(length(community_id) == 1L)
  stopifnot(length(removed) == 1L)
  stopifnot(length(reason) <= 1L)
  stopifnot(length(expires) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(community_id))
  stopifnot(is.logical(removed))
  stopifnot(is.null(reason) || is.character(reason))
  stopifnot(is.null(expires) || is.numeric(expires))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "community/remove",
    community_id = community_id, removed = removed, reason = reason,
    expires = expires, auth = auth
  )
}
#' Transfer your community to an existing moderator.
#'
#' `HTTP.POST /community/transfer`
#'
#' @param community_id A numeric value.
#' @param person_id A numeric value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 4:
#' \preformatted{<list>
#' |-community_view: <list>
#' | |-community: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-title: A character value
#' | | |-description: (Optional) A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-actor_id: A character value
#' | | |-local: A logical value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-followers_url: A character value
#' | | |-inbox_url: A character value
#' | | |-hidden: A logical value
#' | | |-posting_restricted_to_mods: A logical value
#' | | `-instance_id: A numeric value
#' | |-subscribed: One of "Subscribed", "NotSubscri...
#' | |-blocked: A logical value
#' | `-counts: <list>
#' |   |-id: A numeric value
#' |   |-community_id: A numeric value
#' |   |-subscribers: A numeric value
#' |   |-posts: A numeric value
#' |   |-comments: A numeric value
#' |   |-published: A character value
#' |   |-users_active_day: A numeric value
#' |   |-users_active_week: A numeric value
#' |   |-users_active_month: A numeric value
#' |   |-users_active_half_year: A numeric value
#' |   `-hot_rank: A numeric value
#' |-site: <list>
#' | |-id: A numeric value
#' | |-name: A character value
#' | |-sidebar: (Optional) A character value
#' | |-published: A character value
#' | |-updated: (Optional) A character value
#' | |-icon: (Optional) A character value
#' | |-banner: (Optional) A character value
#' | |-description: (Optional) A character value
#' | |-actor_id: A character value
#' | |-last_refreshed_at: A character value
#' | |-inbox_url: A character value
#' | |-private_key: (Optional) A character value
#' | |-public_key: A character value
#' | `-instance_id: A numeric value
#' |-moderators: <list>
#' | `-[Each element]: <list>
#' |   |-community: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-title: A character value
#' |   | |-description: (Optional) A character value
#' |   | |-removed: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-nsfw: A logical value
#' |   | |-actor_id: A character value
#' |   | |-local: A logical value
#' |   | |-icon: (Optional) A character value
#' |   | |-banner: (Optional) A character value
#' |   | |-followers_url: A character value
#' |   | |-inbox_url: A character value
#' |   | |-hidden: A logical value
#' |   | |-posting_restricted_to_mods: A logical value
#' |   | `-instance_id: A numeric value
#' |   `-moderator: <list>
#' |     |-id: A numeric value
#' |     |-name: A character value
#' |     |-display_name: (Optional) A character value
#' |     |-avatar: (Optional) A character value
#' |     |-banned: A logical value
#' |     |-published: A character value
#' |     |-updated: (Optional) A character value
#' |     |-actor_id: A character value
#' |     |-bio: (Optional) A character value
#' |     |-local: A logical value
#' |     |-banner: (Optional) A character value
#' |     |-deleted: A logical value
#' |     |-inbox_url: A character value
#' |     |-matrix_user_id: (Optional) A character value
#' |     |-admin: A logical value
#' |     |-bot_account: A logical value
#' |     |-ban_expires: (Optional) A character value
#' |     `-instance_id: A numeric value
#' `-discussion_languages: A numeric vector
#' }
#'
#' @export
lemmy_transfer_community <- function(community_id, person_id, auth, .lemmy_instance = getOption(
                                       "lemmy_instance",
                                       "https://lemmy.world"
                                     )) {
  stopifnot(length(community_id) == 1L)
  stopifnot(length(person_id) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(community_id))
  stopifnot(is.numeric(person_id))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "community/transfer",
    community_id = community_id, person_id = person_id, auth = auth
  )
}
#' Ban a user from a community.
#'
#' `HTTP.POST /community/ban_user`
#'
#' @param community_id A numeric value.
#' @param person_id A numeric value.
#' @param ban A logical value.
#' @param remove_data (Optional) A logical value.
#' @param reason (Optional) A character value.
#' @param expires (Optional) A numeric value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 2:
#' \preformatted{<list>
#' |-person_view: <list>
#' | |-person: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-display_name: (Optional) A character value
#' | | |-avatar: (Optional) A character value
#' | | |-banned: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-actor_id: A character value
#' | | |-bio: (Optional) A character value
#' | | |-local: A logical value
#' | | |-banner: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-inbox_url: A character value
#' | | |-matrix_user_id: (Optional) A character value
#' | | |-admin: A logical value
#' | | |-bot_account: A logical value
#' | | |-ban_expires: (Optional) A character value
#' | | `-instance_id: A numeric value
#' | `-counts: <list>
#' |   |-id: A numeric value
#' |   |-person_id: A numeric value
#' |   |-post_count: A numeric value
#' |   |-post_score: A numeric value
#' |   |-comment_count: A numeric value
#' |   `-comment_score: A numeric value
#' `-banned: A logical value
#' }
#'
#' @export
lemmy_ban_from_community <- function(
    community_id, person_id, ban, remove_data = NULL, reason = NULL,
    expires = NULL, auth, .lemmy_instance = getOption(
      "lemmy_instance",
      "https://lemmy.world"
    )) {
  stopifnot(length(community_id) == 1L)
  stopifnot(length(person_id) == 1L)
  stopifnot(length(ban) == 1L)
  stopifnot(length(remove_data) <= 1L)
  stopifnot(length(reason) <= 1L)
  stopifnot(length(expires) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(community_id))
  stopifnot(is.numeric(person_id))
  stopifnot(is.logical(ban))
  stopifnot(is.null(remove_data) || is.logical(remove_data))
  stopifnot(is.null(reason) || is.character(reason))
  stopifnot(is.null(expires) || is.numeric(expires))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "community/ban_user",
    community_id = community_id, person_id = person_id, ban = ban,
    remove_data = remove_data, reason = reason, expires = expires,
    auth = auth
  )
}
#' Add a moderator to your community.
#'
#' `HTTP.POST /community/mod`
#'
#' @param community_id A numeric value.
#' @param person_id A numeric value.
#' @param added A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-moderators: <list>
#'   `-[Each element]: <list>
#'     |-community: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-title: A character value
#'     | |-description: (Optional) A character value
#'     | |-removed: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-nsfw: A logical value
#'     | |-actor_id: A character value
#'     | |-local: A logical value
#'     | |-icon: (Optional) A character value
#'     | |-banner: (Optional) A character value
#'     | |-followers_url: A character value
#'     | |-inbox_url: A character value
#'     | |-hidden: A logical value
#'     | |-posting_restricted_to_mods: A logical value
#'     | `-instance_id: A numeric value
#'     `-moderator: <list>
#'       |-id: A numeric value
#'       |-name: A character value
#'       |-display_name: (Optional) A character value
#'       |-avatar: (Optional) A character value
#'       |-banned: A logical value
#'       |-published: A character value
#'       |-updated: (Optional) A character value
#'       |-actor_id: A character value
#'       |-bio: (Optional) A character value
#'       |-local: A logical value
#'       |-banner: (Optional) A character value
#'       |-deleted: A logical value
#'       |-inbox_url: A character value
#'       |-matrix_user_id: (Optional) A character value
#'       |-admin: A logical value
#'       |-bot_account: A logical value
#'       |-ban_expires: (Optional) A character value
#'       `-instance_id: A numeric value
#' }
#'
#' @export
lemmy_add_mod_to_community <- function(community_id, person_id, added, auth, .lemmy_instance = getOption(
                                         "lemmy_instance",
                                         "https://lemmy.world"
                                       )) {
  stopifnot(length(community_id) == 1L)
  stopifnot(length(person_id) == 1L)
  stopifnot(length(added) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(community_id))
  stopifnot(is.numeric(person_id))
  stopifnot(is.logical(added))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "community/mod",
    community_id = community_id, person_id = person_id, added = added,
    auth = auth
  )
}
#' Create a post.
#'
#' `HTTP.POST /post`
#'
#' @param name A character value.
#' @param community_id A numeric value.
#' @param url (Optional) A character value.
#' @param body (Optional) A character value.
#' @param honeypot (Optional) A character value.
#' @param nsfw (Optional) A logical value.
#' @param language_id (Optional) A numeric value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-post_view: <list>
#'   |-post: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-url: (Optional) A character value
#'   | |-body: (Optional) A character value
#'   | |-creator_id: A numeric value
#'   | |-community_id: A numeric value
#'   | |-removed: A logical value
#'   | |-locked: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-embed_title: (Optional) A character value
#'   | |-embed_description: (Optional) A character value
#'   | |-thumbnail_url: (Optional) A character value
#'   | |-ap_id: A character value
#'   | |-local: A logical value
#'   | |-embed_video_url: (Optional) A character value
#'   | |-language_id: A numeric value
#'   | |-featured_community: A logical value
#'   | `-featured_local: A logical value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-community: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-title: A character value
#'   | |-description: (Optional) A character value
#'   | |-removed: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-actor_id: A character value
#'   | |-local: A logical value
#'   | |-icon: (Optional) A character value
#'   | |-banner: (Optional) A character value
#'   | |-followers_url: A character value
#'   | |-inbox_url: A character value
#'   | |-hidden: A logical value
#'   | |-posting_restricted_to_mods: A logical value
#'   | `-instance_id: A numeric value
#'   |-creator_banned_from_community: A logical value
#'   |-counts: <list>
#'   | |-id: A numeric value
#'   | |-post_id: A numeric value
#'   | |-comments: A numeric value
#'   | |-score: A numeric value
#'   | |-upvotes: A numeric value
#'   | |-downvotes: A numeric value
#'   | |-published: A character value
#'   | |-newest_comment_time_necro: A character value
#'   | |-newest_comment_time: A character value
#'   | |-featured_community: A logical value
#'   | |-featured_local: A logical value
#'   | |-hot_rank: A numeric value
#'   | `-hot_rank_active: A numeric value
#'   |-subscribed: One of "Subscribed", "NotSubscri...
#'   |-saved: A logical value
#'   |-read: A logical value
#'   |-creator_blocked: A logical value
#'   |-my_vote: (Optional) A numeric value
#'   `-unread_comments: A numeric value
#' }
#'
#' @export
lemmy_create_post <- function(
    name, community_id, url = NULL, body = NULL, honeypot = NULL,
    nsfw = NULL, language_id = NULL, auth, .lemmy_instance = getOption(
      "lemmy_instance",
      "https://lemmy.world"
    )) {
  stopifnot(length(name) == 1L)
  stopifnot(length(community_id) == 1L)
  stopifnot(length(url) <= 1L)
  stopifnot(length(body) <= 1L)
  stopifnot(length(honeypot) <= 1L)
  stopifnot(length(nsfw) <= 1L)
  stopifnot(length(language_id) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.character(name))
  stopifnot(is.numeric(community_id))
  stopifnot(is.null(url) || is.character(url))
  stopifnot(is.null(body) || is.character(body))
  stopifnot(is.null(honeypot) || is.character(honeypot))
  stopifnot(is.null(nsfw) || is.logical(nsfw))
  stopifnot(is.null(language_id) || is.numeric(language_id))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "post",
    name = name, community_id = community_id, url = url,
    body = body, honeypot = honeypot, nsfw = nsfw, language_id = language_id,
    auth = auth
  )
}
#' Get / fetch a post.
#'
#' `HTTP.GET /post`
#'
#' @param id (Optional) A numeric value.
#' @param comment_id (Optional) A numeric value.
#' @param auth (Optional) A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 4:
#' \preformatted{<list>
#' |-post_view: <list>
#' | |-post: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-url: (Optional) A character value
#' | | |-body: (Optional) A character value
#' | | |-creator_id: A numeric value
#' | | |-community_id: A numeric value
#' | | |-removed: A logical value
#' | | |-locked: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-embed_title: (Optional) A character value
#' | | |-embed_description: (Optional) A character value
#' | | |-thumbnail_url: (Optional) A character value
#' | | |-ap_id: A character value
#' | | |-local: A logical value
#' | | |-embed_video_url: (Optional) A character value
#' | | |-language_id: A numeric value
#' | | |-featured_community: A logical value
#' | | `-featured_local: A logical value
#' | |-creator: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-display_name: (Optional) A character value
#' | | |-avatar: (Optional) A character value
#' | | |-banned: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-actor_id: A character value
#' | | |-bio: (Optional) A character value
#' | | |-local: A logical value
#' | | |-banner: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-inbox_url: A character value
#' | | |-matrix_user_id: (Optional) A character value
#' | | |-admin: A logical value
#' | | |-bot_account: A logical value
#' | | |-ban_expires: (Optional) A character value
#' | | `-instance_id: A numeric value
#' | |-community: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-title: A character value
#' | | |-description: (Optional) A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-actor_id: A character value
#' | | |-local: A logical value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-followers_url: A character value
#' | | |-inbox_url: A character value
#' | | |-hidden: A logical value
#' | | |-posting_restricted_to_mods: A logical value
#' | | `-instance_id: A numeric value
#' | |-creator_banned_from_community: A logical value
#' | |-counts: <list>
#' | | |-id: A numeric value
#' | | |-post_id: A numeric value
#' | | |-comments: A numeric value
#' | | |-score: A numeric value
#' | | |-upvotes: A numeric value
#' | | |-downvotes: A numeric value
#' | | |-published: A character value
#' | | |-newest_comment_time_necro: A character value
#' | | |-newest_comment_time: A character value
#' | | |-featured_community: A logical value
#' | | |-featured_local: A logical value
#' | | |-hot_rank: A numeric value
#' | | `-hot_rank_active: A numeric value
#' | |-subscribed: One of "Subscribed", "NotSubscri...
#' | |-saved: A logical value
#' | |-read: A logical value
#' | |-creator_blocked: A logical value
#' | |-my_vote: (Optional) A numeric value
#' | `-unread_comments: A numeric value
#' |-community_view: <list>
#' | |-community: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-title: A character value
#' | | |-description: (Optional) A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-actor_id: A character value
#' | | |-local: A logical value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-followers_url: A character value
#' | | |-inbox_url: A character value
#' | | |-hidden: A logical value
#' | | |-posting_restricted_to_mods: A logical value
#' | | `-instance_id: A numeric value
#' | |-subscribed: One of "Subscribed", "NotSubscri...
#' | |-blocked: A logical value
#' | `-counts: <list>
#' |   |-id: A numeric value
#' |   |-community_id: A numeric value
#' |   |-subscribers: A numeric value
#' |   |-posts: A numeric value
#' |   |-comments: A numeric value
#' |   |-published: A character value
#' |   |-users_active_day: A numeric value
#' |   |-users_active_week: A numeric value
#' |   |-users_active_month: A numeric value
#' |   |-users_active_half_year: A numeric value
#' |   `-hot_rank: A numeric value
#' |-moderators: <list>
#' | `-[Each element]: <list>
#' |   |-community: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-title: A character value
#' |   | |-description: (Optional) A character value
#' |   | |-removed: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-nsfw: A logical value
#' |   | |-actor_id: A character value
#' |   | |-local: A logical value
#' |   | |-icon: (Optional) A character value
#' |   | |-banner: (Optional) A character value
#' |   | |-followers_url: A character value
#' |   | |-inbox_url: A character value
#' |   | |-hidden: A logical value
#' |   | |-posting_restricted_to_mods: A logical value
#' |   | `-instance_id: A numeric value
#' |   `-moderator: <list>
#' |     |-id: A numeric value
#' |     |-name: A character value
#' |     |-display_name: (Optional) A character value
#' |     |-avatar: (Optional) A character value
#' |     |-banned: A logical value
#' |     |-published: A character value
#' |     |-updated: (Optional) A character value
#' |     |-actor_id: A character value
#' |     |-bio: (Optional) A character value
#' |     |-local: A logical value
#' |     |-banner: (Optional) A character value
#' |     |-deleted: A logical value
#' |     |-inbox_url: A character value
#' |     |-matrix_user_id: (Optional) A character value
#' |     |-admin: A logical value
#' |     |-bot_account: A logical value
#' |     |-ban_expires: (Optional) A character value
#' |     `-instance_id: A numeric value
#' `-cross_posts: <list>
#'   `-[Each element]: <list>
#'     |-post: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-url: (Optional) A character value
#'     | |-body: (Optional) A character value
#'     | |-creator_id: A numeric value
#'     | |-community_id: A numeric value
#'     | |-removed: A logical value
#'     | |-locked: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-nsfw: A logical value
#'     | |-embed_title: (Optional) A character value
#'     | |-embed_description: (Optional) A character value
#'     | |-thumbnail_url: (Optional) A character value
#'     | |-ap_id: A character value
#'     | |-local: A logical value
#'     | |-embed_video_url: (Optional) A character value
#'     | |-language_id: A numeric value
#'     | |-featured_community: A logical value
#'     | `-featured_local: A logical value
#'     |-creator: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-display_name: (Optional) A character value
#'     | |-avatar: (Optional) A character value
#'     | |-banned: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-actor_id: A character value
#'     | |-bio: (Optional) A character value
#'     | |-local: A logical value
#'     | |-banner: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-inbox_url: A character value
#'     | |-matrix_user_id: (Optional) A character value
#'     | |-admin: A logical value
#'     | |-bot_account: A logical value
#'     | |-ban_expires: (Optional) A character value
#'     | `-instance_id: A numeric value
#'     |-community: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-title: A character value
#'     | |-description: (Optional) A character value
#'     | |-removed: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-nsfw: A logical value
#'     | |-actor_id: A character value
#'     | |-local: A logical value
#'     | |-icon: (Optional) A character value
#'     | |-banner: (Optional) A character value
#'     | |-followers_url: A character value
#'     | |-inbox_url: A character value
#'     | |-hidden: A logical value
#'     | |-posting_restricted_to_mods: A logical value
#'     | `-instance_id: A numeric value
#'     |-creator_banned_from_community: A logical value
#'     |-counts: <list>
#'     | |-id: A numeric value
#'     | |-post_id: A numeric value
#'     | |-comments: A numeric value
#'     | |-score: A numeric value
#'     | |-upvotes: A numeric value
#'     | |-downvotes: A numeric value
#'     | |-published: A character value
#'     | |-newest_comment_time_necro: A character value
#'     | |-newest_comment_time: A character value
#'     | |-featured_community: A logical value
#'     | |-featured_local: A logical value
#'     | |-hot_rank: A numeric value
#'     | `-hot_rank_active: A numeric value
#'     |-subscribed: One of "Subscribed", "NotSubscri...
#'     |-saved: A logical value
#'     |-read: A logical value
#'     |-creator_blocked: A logical value
#'     |-my_vote: (Optional) A numeric value
#'     `-unread_comments: A numeric value
#' }
#'
#' @examplesIf remmy:::is_lemmy_world()
#' post_data <- lemmy_get_post(1397803)
#'
#' post_data$community_view$community$name
#'
#' post_data$post_view$post$name
#'
#' @export
lemmy_get_post <- function(id = NULL, comment_id = NULL, auth = NULL, .lemmy_instance = getOption(
                             "lemmy_instance",
                             "https://lemmy.world"
                           )) {
  stopifnot(length(id) <= 1L)
  stopifnot(length(comment_id) <= 1L)
  stopifnot(length(auth) <= 1L)
  stopifnot(is.null(id) || is.numeric(id))
  stopifnot(is.null(comment_id) || is.numeric(comment_id))
  stopifnot(is.null(auth) || is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "post",
    id = id, comment_id = comment_id, auth = auth
  )
}
#' Edit a post.
#'
#' `HTTP.PUT /post`
#'
#' @param post_id A numeric value.
#' @param name (Optional) A character value.
#' @param url (Optional) A character value.
#' @param body (Optional) A character value.
#' @param nsfw (Optional) A logical value.
#' @param language_id (Optional) A numeric value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-post_view: <list>
#'   |-post: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-url: (Optional) A character value
#'   | |-body: (Optional) A character value
#'   | |-creator_id: A numeric value
#'   | |-community_id: A numeric value
#'   | |-removed: A logical value
#'   | |-locked: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-embed_title: (Optional) A character value
#'   | |-embed_description: (Optional) A character value
#'   | |-thumbnail_url: (Optional) A character value
#'   | |-ap_id: A character value
#'   | |-local: A logical value
#'   | |-embed_video_url: (Optional) A character value
#'   | |-language_id: A numeric value
#'   | |-featured_community: A logical value
#'   | `-featured_local: A logical value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-community: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-title: A character value
#'   | |-description: (Optional) A character value
#'   | |-removed: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-actor_id: A character value
#'   | |-local: A logical value
#'   | |-icon: (Optional) A character value
#'   | |-banner: (Optional) A character value
#'   | |-followers_url: A character value
#'   | |-inbox_url: A character value
#'   | |-hidden: A logical value
#'   | |-posting_restricted_to_mods: A logical value
#'   | `-instance_id: A numeric value
#'   |-creator_banned_from_community: A logical value
#'   |-counts: <list>
#'   | |-id: A numeric value
#'   | |-post_id: A numeric value
#'   | |-comments: A numeric value
#'   | |-score: A numeric value
#'   | |-upvotes: A numeric value
#'   | |-downvotes: A numeric value
#'   | |-published: A character value
#'   | |-newest_comment_time_necro: A character value
#'   | |-newest_comment_time: A character value
#'   | |-featured_community: A logical value
#'   | |-featured_local: A logical value
#'   | |-hot_rank: A numeric value
#'   | `-hot_rank_active: A numeric value
#'   |-subscribed: One of "Subscribed", "NotSubscri...
#'   |-saved: A logical value
#'   |-read: A logical value
#'   |-creator_blocked: A logical value
#'   |-my_vote: (Optional) A numeric value
#'   `-unread_comments: A numeric value
#' }
#'
#' @export
lemmy_edit_post <- function(
    post_id, name = NULL, url = NULL, body = NULL, nsfw = NULL,
    language_id = NULL, auth, .lemmy_instance = getOption(
      "lemmy_instance",
      "https://lemmy.world"
    )) {
  stopifnot(length(post_id) == 1L)
  stopifnot(length(name) <= 1L)
  stopifnot(length(url) <= 1L)
  stopifnot(length(body) <= 1L)
  stopifnot(length(nsfw) <= 1L)
  stopifnot(length(language_id) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(post_id))
  stopifnot(is.null(name) || is.character(name))
  stopifnot(is.null(url) || is.character(url))
  stopifnot(is.null(body) || is.character(body))
  stopifnot(is.null(nsfw) || is.logical(nsfw))
  stopifnot(is.null(language_id) || is.numeric(language_id))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "PUT", endpoint = "post",
    post_id = post_id, name = name, url = url, body = body,
    nsfw = nsfw, language_id = language_id, auth = auth
  )
}
#' Delete a post.
#'
#' `HTTP.POST /post/delete`
#'
#' @param post_id A numeric value.
#' @param deleted A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-post_view: <list>
#'   |-post: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-url: (Optional) A character value
#'   | |-body: (Optional) A character value
#'   | |-creator_id: A numeric value
#'   | |-community_id: A numeric value
#'   | |-removed: A logical value
#'   | |-locked: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-embed_title: (Optional) A character value
#'   | |-embed_description: (Optional) A character value
#'   | |-thumbnail_url: (Optional) A character value
#'   | |-ap_id: A character value
#'   | |-local: A logical value
#'   | |-embed_video_url: (Optional) A character value
#'   | |-language_id: A numeric value
#'   | |-featured_community: A logical value
#'   | `-featured_local: A logical value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-community: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-title: A character value
#'   | |-description: (Optional) A character value
#'   | |-removed: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-actor_id: A character value
#'   | |-local: A logical value
#'   | |-icon: (Optional) A character value
#'   | |-banner: (Optional) A character value
#'   | |-followers_url: A character value
#'   | |-inbox_url: A character value
#'   | |-hidden: A logical value
#'   | |-posting_restricted_to_mods: A logical value
#'   | `-instance_id: A numeric value
#'   |-creator_banned_from_community: A logical value
#'   |-counts: <list>
#'   | |-id: A numeric value
#'   | |-post_id: A numeric value
#'   | |-comments: A numeric value
#'   | |-score: A numeric value
#'   | |-upvotes: A numeric value
#'   | |-downvotes: A numeric value
#'   | |-published: A character value
#'   | |-newest_comment_time_necro: A character value
#'   | |-newest_comment_time: A character value
#'   | |-featured_community: A logical value
#'   | |-featured_local: A logical value
#'   | |-hot_rank: A numeric value
#'   | `-hot_rank_active: A numeric value
#'   |-subscribed: One of "Subscribed", "NotSubscri...
#'   |-saved: A logical value
#'   |-read: A logical value
#'   |-creator_blocked: A logical value
#'   |-my_vote: (Optional) A numeric value
#'   `-unread_comments: A numeric value
#' }
#'
#' @export
lemmy_delete_post <- function(post_id, deleted, auth, .lemmy_instance = getOption(
                                "lemmy_instance",
                                "https://lemmy.world"
                              )) {
  stopifnot(length(post_id) == 1L)
  stopifnot(length(deleted) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(post_id))
  stopifnot(is.logical(deleted))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "post/delete",
    post_id = post_id, deleted = deleted, auth = auth
  )
}
#' A moderator remove for a post.
#'
#' `HTTP.POST /post/remove`
#'
#' @param post_id A numeric value.
#' @param removed A logical value.
#' @param reason (Optional) A character value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-post_view: <list>
#'   |-post: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-url: (Optional) A character value
#'   | |-body: (Optional) A character value
#'   | |-creator_id: A numeric value
#'   | |-community_id: A numeric value
#'   | |-removed: A logical value
#'   | |-locked: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-embed_title: (Optional) A character value
#'   | |-embed_description: (Optional) A character value
#'   | |-thumbnail_url: (Optional) A character value
#'   | |-ap_id: A character value
#'   | |-local: A logical value
#'   | |-embed_video_url: (Optional) A character value
#'   | |-language_id: A numeric value
#'   | |-featured_community: A logical value
#'   | `-featured_local: A logical value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-community: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-title: A character value
#'   | |-description: (Optional) A character value
#'   | |-removed: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-actor_id: A character value
#'   | |-local: A logical value
#'   | |-icon: (Optional) A character value
#'   | |-banner: (Optional) A character value
#'   | |-followers_url: A character value
#'   | |-inbox_url: A character value
#'   | |-hidden: A logical value
#'   | |-posting_restricted_to_mods: A logical value
#'   | `-instance_id: A numeric value
#'   |-creator_banned_from_community: A logical value
#'   |-counts: <list>
#'   | |-id: A numeric value
#'   | |-post_id: A numeric value
#'   | |-comments: A numeric value
#'   | |-score: A numeric value
#'   | |-upvotes: A numeric value
#'   | |-downvotes: A numeric value
#'   | |-published: A character value
#'   | |-newest_comment_time_necro: A character value
#'   | |-newest_comment_time: A character value
#'   | |-featured_community: A logical value
#'   | |-featured_local: A logical value
#'   | |-hot_rank: A numeric value
#'   | `-hot_rank_active: A numeric value
#'   |-subscribed: One of "Subscribed", "NotSubscri...
#'   |-saved: A logical value
#'   |-read: A logical value
#'   |-creator_blocked: A logical value
#'   |-my_vote: (Optional) A numeric value
#'   `-unread_comments: A numeric value
#' }
#'
#' @export
lemmy_remove_post <- function(post_id, removed, reason = NULL, auth, .lemmy_instance = getOption(
                                "lemmy_instance",
                                "https://lemmy.world"
                              )) {
  stopifnot(length(post_id) == 1L)
  stopifnot(length(removed) == 1L)
  stopifnot(length(reason) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(post_id))
  stopifnot(is.logical(removed))
  stopifnot(is.null(reason) || is.character(reason))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "post/remove",
    post_id = post_id, removed = removed, reason = reason,
    auth = auth
  )
}
#' Mark a post as read.
#'
#' `HTTP.POST /post/mark_as_read`
#'
#' @param post_id A numeric value.
#' @param read A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-post_view: <list>
#'   |-post: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-url: (Optional) A character value
#'   | |-body: (Optional) A character value
#'   | |-creator_id: A numeric value
#'   | |-community_id: A numeric value
#'   | |-removed: A logical value
#'   | |-locked: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-embed_title: (Optional) A character value
#'   | |-embed_description: (Optional) A character value
#'   | |-thumbnail_url: (Optional) A character value
#'   | |-ap_id: A character value
#'   | |-local: A logical value
#'   | |-embed_video_url: (Optional) A character value
#'   | |-language_id: A numeric value
#'   | |-featured_community: A logical value
#'   | `-featured_local: A logical value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-community: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-title: A character value
#'   | |-description: (Optional) A character value
#'   | |-removed: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-actor_id: A character value
#'   | |-local: A logical value
#'   | |-icon: (Optional) A character value
#'   | |-banner: (Optional) A character value
#'   | |-followers_url: A character value
#'   | |-inbox_url: A character value
#'   | |-hidden: A logical value
#'   | |-posting_restricted_to_mods: A logical value
#'   | `-instance_id: A numeric value
#'   |-creator_banned_from_community: A logical value
#'   |-counts: <list>
#'   | |-id: A numeric value
#'   | |-post_id: A numeric value
#'   | |-comments: A numeric value
#'   | |-score: A numeric value
#'   | |-upvotes: A numeric value
#'   | |-downvotes: A numeric value
#'   | |-published: A character value
#'   | |-newest_comment_time_necro: A character value
#'   | |-newest_comment_time: A character value
#'   | |-featured_community: A logical value
#'   | |-featured_local: A logical value
#'   | |-hot_rank: A numeric value
#'   | `-hot_rank_active: A numeric value
#'   |-subscribed: One of "Subscribed", "NotSubscri...
#'   |-saved: A logical value
#'   |-read: A logical value
#'   |-creator_blocked: A logical value
#'   |-my_vote: (Optional) A numeric value
#'   `-unread_comments: A numeric value
#' }
#'
#' @export
lemmy_mark_post_as_read <- function(post_id, read, auth, .lemmy_instance = getOption(
                                      "lemmy_instance",
                                      "https://lemmy.world"
                                    )) {
  stopifnot(length(post_id) == 1L)
  stopifnot(length(read) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(post_id))
  stopifnot(is.logical(read))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "post/mark_as_read",
    post_id = post_id, read = read, auth = auth
  )
}
#' A moderator can lock a post ( IE disable new comments ).
#'
#' `HTTP.POST /post/lock`
#'
#' @param post_id A numeric value.
#' @param locked A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-post_view: <list>
#'   |-post: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-url: (Optional) A character value
#'   | |-body: (Optional) A character value
#'   | |-creator_id: A numeric value
#'   | |-community_id: A numeric value
#'   | |-removed: A logical value
#'   | |-locked: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-embed_title: (Optional) A character value
#'   | |-embed_description: (Optional) A character value
#'   | |-thumbnail_url: (Optional) A character value
#'   | |-ap_id: A character value
#'   | |-local: A logical value
#'   | |-embed_video_url: (Optional) A character value
#'   | |-language_id: A numeric value
#'   | |-featured_community: A logical value
#'   | `-featured_local: A logical value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-community: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-title: A character value
#'   | |-description: (Optional) A character value
#'   | |-removed: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-actor_id: A character value
#'   | |-local: A logical value
#'   | |-icon: (Optional) A character value
#'   | |-banner: (Optional) A character value
#'   | |-followers_url: A character value
#'   | |-inbox_url: A character value
#'   | |-hidden: A logical value
#'   | |-posting_restricted_to_mods: A logical value
#'   | `-instance_id: A numeric value
#'   |-creator_banned_from_community: A logical value
#'   |-counts: <list>
#'   | |-id: A numeric value
#'   | |-post_id: A numeric value
#'   | |-comments: A numeric value
#'   | |-score: A numeric value
#'   | |-upvotes: A numeric value
#'   | |-downvotes: A numeric value
#'   | |-published: A character value
#'   | |-newest_comment_time_necro: A character value
#'   | |-newest_comment_time: A character value
#'   | |-featured_community: A logical value
#'   | |-featured_local: A logical value
#'   | |-hot_rank: A numeric value
#'   | `-hot_rank_active: A numeric value
#'   |-subscribed: One of "Subscribed", "NotSubscri...
#'   |-saved: A logical value
#'   |-read: A logical value
#'   |-creator_blocked: A logical value
#'   |-my_vote: (Optional) A numeric value
#'   `-unread_comments: A numeric value
#' }
#'
#' @export
lemmy_lock_post <- function(post_id, locked, auth, .lemmy_instance = getOption(
                              "lemmy_instance",
                              "https://lemmy.world"
                            )) {
  stopifnot(length(post_id) == 1L)
  stopifnot(length(locked) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(post_id))
  stopifnot(is.logical(locked))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "post/lock",
    post_id = post_id, locked = locked, auth = auth
  )
}
#' A moderator can feature a community post ( IE stick it to the top of a community ).
#'
#' `HTTP.POST /post/feature`
#'
#' @param post_id A numeric value.
#' @param featured A logical value.
#' @param feature_type One of "Local" or "Community".
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-post_view: <list>
#'   |-post: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-url: (Optional) A character value
#'   | |-body: (Optional) A character value
#'   | |-creator_id: A numeric value
#'   | |-community_id: A numeric value
#'   | |-removed: A logical value
#'   | |-locked: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-embed_title: (Optional) A character value
#'   | |-embed_description: (Optional) A character value
#'   | |-thumbnail_url: (Optional) A character value
#'   | |-ap_id: A character value
#'   | |-local: A logical value
#'   | |-embed_video_url: (Optional) A character value
#'   | |-language_id: A numeric value
#'   | |-featured_community: A logical value
#'   | `-featured_local: A logical value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-community: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-title: A character value
#'   | |-description: (Optional) A character value
#'   | |-removed: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-actor_id: A character value
#'   | |-local: A logical value
#'   | |-icon: (Optional) A character value
#'   | |-banner: (Optional) A character value
#'   | |-followers_url: A character value
#'   | |-inbox_url: A character value
#'   | |-hidden: A logical value
#'   | |-posting_restricted_to_mods: A logical value
#'   | `-instance_id: A numeric value
#'   |-creator_banned_from_community: A logical value
#'   |-counts: <list>
#'   | |-id: A numeric value
#'   | |-post_id: A numeric value
#'   | |-comments: A numeric value
#'   | |-score: A numeric value
#'   | |-upvotes: A numeric value
#'   | |-downvotes: A numeric value
#'   | |-published: A character value
#'   | |-newest_comment_time_necro: A character value
#'   | |-newest_comment_time: A character value
#'   | |-featured_community: A logical value
#'   | |-featured_local: A logical value
#'   | |-hot_rank: A numeric value
#'   | `-hot_rank_active: A numeric value
#'   |-subscribed: One of "Subscribed", "NotSubscri...
#'   |-saved: A logical value
#'   |-read: A logical value
#'   |-creator_blocked: A logical value
#'   |-my_vote: (Optional) A numeric value
#'   `-unread_comments: A numeric value
#' }
#'
#' @export
lemmy_feature_post <- function(post_id, featured, feature_type, auth, .lemmy_instance = getOption(
                                 "lemmy_instance",
                                 "https://lemmy.world"
                               )) {
  stopifnot(length(post_id) == 1L)
  stopifnot(length(featured) == 1L)
  stopifnot(length(feature_type) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(post_id))
  stopifnot(is.logical(featured))
  stopifnot(is.character(auth))
  stopifnot(feature_type %in% c("Local", "Community"))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "post/feature",
    post_id = post_id, featured = featured, feature_type = feature_type,
    auth = auth
  )
}
#' Get / fetch posts, with various filters.
#'
#' `HTTP.GET /post/list`
#'
#' @param type_ (Optional) One of "All", "Local", or "Subscribed".
#' @param sort (Optional) One of "Active", "Hot", "New", "Old", "TopDay", "TopWeek", "TopMonth", "TopYear", "TopAll", "MostComments", "NewComments", "TopHour", "TopSixHour", "TopTwelveHour", "TopThreeMonths", "TopSixMonths", or "TopNineMonths".
#' @param page (Optional) A numeric value.
#' @param limit (Optional) A numeric value.
#' @param community_id (Optional) A numeric value.
#' @param community_name (Optional) A character value.
#' @param saved_only (Optional) A logical value.
#' @param auth (Optional) A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-posts: <list>
#'   `-[Each element]: <list>
#'     |-post: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-url: (Optional) A character value
#'     | |-body: (Optional) A character value
#'     | |-creator_id: A numeric value
#'     | |-community_id: A numeric value
#'     | |-removed: A logical value
#'     | |-locked: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-nsfw: A logical value
#'     | |-embed_title: (Optional) A character value
#'     | |-embed_description: (Optional) A character value
#'     | |-thumbnail_url: (Optional) A character value
#'     | |-ap_id: A character value
#'     | |-local: A logical value
#'     | |-embed_video_url: (Optional) A character value
#'     | |-language_id: A numeric value
#'     | |-featured_community: A logical value
#'     | `-featured_local: A logical value
#'     |-creator: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-display_name: (Optional) A character value
#'     | |-avatar: (Optional) A character value
#'     | |-banned: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-actor_id: A character value
#'     | |-bio: (Optional) A character value
#'     | |-local: A logical value
#'     | |-banner: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-inbox_url: A character value
#'     | |-matrix_user_id: (Optional) A character value
#'     | |-admin: A logical value
#'     | |-bot_account: A logical value
#'     | |-ban_expires: (Optional) A character value
#'     | `-instance_id: A numeric value
#'     |-community: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-title: A character value
#'     | |-description: (Optional) A character value
#'     | |-removed: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-nsfw: A logical value
#'     | |-actor_id: A character value
#'     | |-local: A logical value
#'     | |-icon: (Optional) A character value
#'     | |-banner: (Optional) A character value
#'     | |-followers_url: A character value
#'     | |-inbox_url: A character value
#'     | |-hidden: A logical value
#'     | |-posting_restricted_to_mods: A logical value
#'     | `-instance_id: A numeric value
#'     |-creator_banned_from_community: A logical value
#'     |-counts: <list>
#'     | |-id: A numeric value
#'     | |-post_id: A numeric value
#'     | |-comments: A numeric value
#'     | |-score: A numeric value
#'     | |-upvotes: A numeric value
#'     | |-downvotes: A numeric value
#'     | |-published: A character value
#'     | |-newest_comment_time_necro: A character value
#'     | |-newest_comment_time: A character value
#'     | |-featured_community: A logical value
#'     | |-featured_local: A logical value
#'     | |-hot_rank: A numeric value
#'     | `-hot_rank_active: A numeric value
#'     |-subscribed: One of "Subscribed", "NotSubscri...
#'     |-saved: A logical value
#'     |-read: A logical value
#'     |-creator_blocked: A logical value
#'     |-my_vote: (Optional) A numeric value
#'     `-unread_comments: A numeric value
#' }
#'
#' @examplesIf remmy:::is_lemmy_world()
#' post_list <- lemmy_get_posts(community_name = "showerthoughts", sort = "TopAll", limit = 1)
#'
#' post_list$posts[[1]]$post$name
#'
#' @export
lemmy_get_posts <- function(
    type_ = NULL, sort = NULL, page = NULL, limit = NULL,
    community_id = NULL, community_name = NULL, saved_only = NULL,
    auth = NULL, .lemmy_instance = getOption(
      "lemmy_instance",
      "https://lemmy.world"
    )) {
  stopifnot(length(type_) <= 1L)
  stopifnot(length(sort) <= 1L)
  stopifnot(length(page) <= 1L)
  stopifnot(length(limit) <= 1L)
  stopifnot(length(community_id) <= 1L)
  stopifnot(length(community_name) <= 1L)
  stopifnot(length(saved_only) <= 1L)
  stopifnot(length(auth) <= 1L)
  stopifnot(is.null(page) || is.numeric(page))
  stopifnot(is.null(limit) || is.numeric(limit))
  stopifnot(is.null(community_id) || is.numeric(community_id))
  stopifnot(is.null(community_name) || is.character(community_name))
  stopifnot(is.null(saved_only) || is.logical(saved_only))
  stopifnot(is.null(auth) || is.character(auth))
  stopifnot(is.null(type_) || type_ %in% c(
    "All", "Local",
    "Subscribed"
  ))
  stopifnot(is.null(sort) || sort %in% c(
    "Active", "Hot", "New",
    "Old", "TopDay", "TopWeek", "TopMonth", "TopYear", "TopAll",
    "MostComments", "NewComments", "TopHour", "TopSixHour", "TopTwelveHour",
    "TopThreeMonths", "TopSixMonths", "TopNineMonths"
  ))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "post/list",
    type_ = type_, sort = sort, page = page, limit = limit,
    community_id = community_id, community_name = community_name,
    saved_only = saved_only, auth = auth
  )
}
#' Like / vote on a post.
#'
#' `HTTP.POST /post/like`
#'
#' @param post_id A numeric value.
#' @param score A numeric value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-post_view: <list>
#'   |-post: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-url: (Optional) A character value
#'   | |-body: (Optional) A character value
#'   | |-creator_id: A numeric value
#'   | |-community_id: A numeric value
#'   | |-removed: A logical value
#'   | |-locked: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-embed_title: (Optional) A character value
#'   | |-embed_description: (Optional) A character value
#'   | |-thumbnail_url: (Optional) A character value
#'   | |-ap_id: A character value
#'   | |-local: A logical value
#'   | |-embed_video_url: (Optional) A character value
#'   | |-language_id: A numeric value
#'   | |-featured_community: A logical value
#'   | `-featured_local: A logical value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-community: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-title: A character value
#'   | |-description: (Optional) A character value
#'   | |-removed: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-actor_id: A character value
#'   | |-local: A logical value
#'   | |-icon: (Optional) A character value
#'   | |-banner: (Optional) A character value
#'   | |-followers_url: A character value
#'   | |-inbox_url: A character value
#'   | |-hidden: A logical value
#'   | |-posting_restricted_to_mods: A logical value
#'   | `-instance_id: A numeric value
#'   |-creator_banned_from_community: A logical value
#'   |-counts: <list>
#'   | |-id: A numeric value
#'   | |-post_id: A numeric value
#'   | |-comments: A numeric value
#'   | |-score: A numeric value
#'   | |-upvotes: A numeric value
#'   | |-downvotes: A numeric value
#'   | |-published: A character value
#'   | |-newest_comment_time_necro: A character value
#'   | |-newest_comment_time: A character value
#'   | |-featured_community: A logical value
#'   | |-featured_local: A logical value
#'   | |-hot_rank: A numeric value
#'   | `-hot_rank_active: A numeric value
#'   |-subscribed: One of "Subscribed", "NotSubscri...
#'   |-saved: A logical value
#'   |-read: A logical value
#'   |-creator_blocked: A logical value
#'   |-my_vote: (Optional) A numeric value
#'   `-unread_comments: A numeric value
#' }
#'
#' @export
lemmy_like_post <- function(post_id, score, auth, .lemmy_instance = getOption(
                              "lemmy_instance",
                              "https://lemmy.world"
                            )) {
  stopifnot(length(post_id) == 1L)
  stopifnot(length(score) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(post_id))
  stopifnot(is.numeric(score))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "post/like",
    post_id = post_id, score = score, auth = auth
  )
}
#' Save a post.
#'
#' `HTTP.PUT /post/save`
#'
#' @param post_id A numeric value.
#' @param save A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-post_view: <list>
#'   |-post: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-url: (Optional) A character value
#'   | |-body: (Optional) A character value
#'   | |-creator_id: A numeric value
#'   | |-community_id: A numeric value
#'   | |-removed: A logical value
#'   | |-locked: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-embed_title: (Optional) A character value
#'   | |-embed_description: (Optional) A character value
#'   | |-thumbnail_url: (Optional) A character value
#'   | |-ap_id: A character value
#'   | |-local: A logical value
#'   | |-embed_video_url: (Optional) A character value
#'   | |-language_id: A numeric value
#'   | |-featured_community: A logical value
#'   | `-featured_local: A logical value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-community: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-title: A character value
#'   | |-description: (Optional) A character value
#'   | |-removed: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-actor_id: A character value
#'   | |-local: A logical value
#'   | |-icon: (Optional) A character value
#'   | |-banner: (Optional) A character value
#'   | |-followers_url: A character value
#'   | |-inbox_url: A character value
#'   | |-hidden: A logical value
#'   | |-posting_restricted_to_mods: A logical value
#'   | `-instance_id: A numeric value
#'   |-creator_banned_from_community: A logical value
#'   |-counts: <list>
#'   | |-id: A numeric value
#'   | |-post_id: A numeric value
#'   | |-comments: A numeric value
#'   | |-score: A numeric value
#'   | |-upvotes: A numeric value
#'   | |-downvotes: A numeric value
#'   | |-published: A character value
#'   | |-newest_comment_time_necro: A character value
#'   | |-newest_comment_time: A character value
#'   | |-featured_community: A logical value
#'   | |-featured_local: A logical value
#'   | |-hot_rank: A numeric value
#'   | `-hot_rank_active: A numeric value
#'   |-subscribed: One of "Subscribed", "NotSubscri...
#'   |-saved: A logical value
#'   |-read: A logical value
#'   |-creator_blocked: A logical value
#'   |-my_vote: (Optional) A numeric value
#'   `-unread_comments: A numeric value
#' }
#'
#' @export
lemmy_save_post <- function(post_id, save, auth, .lemmy_instance = getOption(
                              "lemmy_instance",
                              "https://lemmy.world"
                            )) {
  stopifnot(length(post_id) == 1L)
  stopifnot(length(save) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(post_id))
  stopifnot(is.logical(save))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "PUT", endpoint = "post/save",
    post_id = post_id, save = save, auth = auth
  )
}
#' Report a post.
#'
#' `HTTP.POST /post/report`
#'
#' @param post_id A numeric value.
#' @param reason A character value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-post_report_view: <list>
#'   |-post_report: <list>
#'   | |-id: A numeric value
#'   | |-creator_id: A numeric value
#'   | |-post_id: A numeric value
#'   | |-original_post_name: A character value
#'   | |-original_post_url: (Optional) A character value
#'   | |-original_post_body: (Optional) A character value
#'   | |-reason: A character value
#'   | |-resolved: A logical value
#'   | |-resolver_id: (Optional) A numeric value
#'   | |-published: A character value
#'   | `-updated: (Optional) A character value
#'   |-post: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-url: (Optional) A character value
#'   | |-body: (Optional) A character value
#'   | |-creator_id: A numeric value
#'   | |-community_id: A numeric value
#'   | |-removed: A logical value
#'   | |-locked: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-embed_title: (Optional) A character value
#'   | |-embed_description: (Optional) A character value
#'   | |-thumbnail_url: (Optional) A character value
#'   | |-ap_id: A character value
#'   | |-local: A logical value
#'   | |-embed_video_url: (Optional) A character value
#'   | |-language_id: A numeric value
#'   | |-featured_community: A logical value
#'   | `-featured_local: A logical value
#'   |-community: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-title: A character value
#'   | |-description: (Optional) A character value
#'   | |-removed: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-actor_id: A character value
#'   | |-local: A logical value
#'   | |-icon: (Optional) A character value
#'   | |-banner: (Optional) A character value
#'   | |-followers_url: A character value
#'   | |-inbox_url: A character value
#'   | |-hidden: A logical value
#'   | |-posting_restricted_to_mods: A logical value
#'   | `-instance_id: A numeric value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-post_creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-creator_banned_from_community: A logical value
#'   |-my_vote: (Optional) A numeric value
#'   |-counts: <list>
#'   | |-id: A numeric value
#'   | |-post_id: A numeric value
#'   | |-comments: A numeric value
#'   | |-score: A numeric value
#'   | |-upvotes: A numeric value
#'   | |-downvotes: A numeric value
#'   | |-published: A character value
#'   | |-newest_comment_time_necro: A character value
#'   | |-newest_comment_time: A character value
#'   | |-featured_community: A logical value
#'   | |-featured_local: A logical value
#'   | |-hot_rank: A numeric value
#'   | `-hot_rank_active: A numeric value
#'   `-resolver: <list>
#'     |-id: A numeric value
#'     |-name: A character value
#'     |-display_name: (Optional) A character value
#'     |-avatar: (Optional) A character value
#'     |-banned: A logical value
#'     |-published: A character value
#'     |-updated: (Optional) A character value
#'     |-actor_id: A character value
#'     |-bio: (Optional) A character value
#'     |-local: A logical value
#'     |-banner: (Optional) A character value
#'     |-deleted: A logical value
#'     |-inbox_url: A character value
#'     |-matrix_user_id: (Optional) A character value
#'     |-admin: A logical value
#'     |-bot_account: A logical value
#'     |-ban_expires: (Optional) A character value
#'     `-instance_id: A numeric value
#' }
#'
#' @export
lemmy_create_post_report <- function(post_id, reason, auth, .lemmy_instance = getOption(
                                       "lemmy_instance",
                                       "https://lemmy.world"
                                     )) {
  stopifnot(length(post_id) == 1L)
  stopifnot(length(reason) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(post_id))
  stopifnot(is.character(reason))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "post/report",
    post_id = post_id, reason = reason, auth = auth
  )
}
#' Resolve a post report. Only a mod can do this.
#'
#' `HTTP.PUT /post/report/resolve`
#'
#' @param report_id A numeric value.
#' @param resolved A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-post_report_view: <list>
#'   |-post_report: <list>
#'   | |-id: A numeric value
#'   | |-creator_id: A numeric value
#'   | |-post_id: A numeric value
#'   | |-original_post_name: A character value
#'   | |-original_post_url: (Optional) A character value
#'   | |-original_post_body: (Optional) A character value
#'   | |-reason: A character value
#'   | |-resolved: A logical value
#'   | |-resolver_id: (Optional) A numeric value
#'   | |-published: A character value
#'   | `-updated: (Optional) A character value
#'   |-post: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-url: (Optional) A character value
#'   | |-body: (Optional) A character value
#'   | |-creator_id: A numeric value
#'   | |-community_id: A numeric value
#'   | |-removed: A logical value
#'   | |-locked: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-embed_title: (Optional) A character value
#'   | |-embed_description: (Optional) A character value
#'   | |-thumbnail_url: (Optional) A character value
#'   | |-ap_id: A character value
#'   | |-local: A logical value
#'   | |-embed_video_url: (Optional) A character value
#'   | |-language_id: A numeric value
#'   | |-featured_community: A logical value
#'   | `-featured_local: A logical value
#'   |-community: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-title: A character value
#'   | |-description: (Optional) A character value
#'   | |-removed: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-actor_id: A character value
#'   | |-local: A logical value
#'   | |-icon: (Optional) A character value
#'   | |-banner: (Optional) A character value
#'   | |-followers_url: A character value
#'   | |-inbox_url: A character value
#'   | |-hidden: A logical value
#'   | |-posting_restricted_to_mods: A logical value
#'   | `-instance_id: A numeric value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-post_creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-creator_banned_from_community: A logical value
#'   |-my_vote: (Optional) A numeric value
#'   |-counts: <list>
#'   | |-id: A numeric value
#'   | |-post_id: A numeric value
#'   | |-comments: A numeric value
#'   | |-score: A numeric value
#'   | |-upvotes: A numeric value
#'   | |-downvotes: A numeric value
#'   | |-published: A character value
#'   | |-newest_comment_time_necro: A character value
#'   | |-newest_comment_time: A character value
#'   | |-featured_community: A logical value
#'   | |-featured_local: A logical value
#'   | |-hot_rank: A numeric value
#'   | `-hot_rank_active: A numeric value
#'   `-resolver: <list>
#'     |-id: A numeric value
#'     |-name: A character value
#'     |-display_name: (Optional) A character value
#'     |-avatar: (Optional) A character value
#'     |-banned: A logical value
#'     |-published: A character value
#'     |-updated: (Optional) A character value
#'     |-actor_id: A character value
#'     |-bio: (Optional) A character value
#'     |-local: A logical value
#'     |-banner: (Optional) A character value
#'     |-deleted: A logical value
#'     |-inbox_url: A character value
#'     |-matrix_user_id: (Optional) A character value
#'     |-admin: A logical value
#'     |-bot_account: A logical value
#'     |-ban_expires: (Optional) A character value
#'     `-instance_id: A numeric value
#' }
#'
#' @export
lemmy_resolve_post_report <- function(report_id, resolved, auth, .lemmy_instance = getOption(
                                        "lemmy_instance",
                                        "https://lemmy.world"
                                      )) {
  stopifnot(length(report_id) == 1L)
  stopifnot(length(resolved) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(report_id))
  stopifnot(is.logical(resolved))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "PUT", endpoint = "post/report/resolve",
    report_id = report_id, resolved = resolved, auth = auth
  )
}
#' List post reports.
#'
#' `HTTP.GET /post/report/list`
#'
#' @param page (Optional) A numeric value.
#' @param limit (Optional) A numeric value.
#' @param unresolved_only (Optional) A logical value.
#' @param community_id (Optional) A numeric value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-post_reports: <list>
#'   `-[Each element]: <list>
#'     |-post_report: <list>
#'     | |-id: A numeric value
#'     | |-creator_id: A numeric value
#'     | |-post_id: A numeric value
#'     | |-original_post_name: A character value
#'     | |-original_post_url: (Optional) A character value
#'     | |-original_post_body: (Optional) A character value
#'     | |-reason: A character value
#'     | |-resolved: A logical value
#'     | |-resolver_id: (Optional) A numeric value
#'     | |-published: A character value
#'     | `-updated: (Optional) A character value
#'     |-post: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-url: (Optional) A character value
#'     | |-body: (Optional) A character value
#'     | |-creator_id: A numeric value
#'     | |-community_id: A numeric value
#'     | |-removed: A logical value
#'     | |-locked: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-nsfw: A logical value
#'     | |-embed_title: (Optional) A character value
#'     | |-embed_description: (Optional) A character value
#'     | |-thumbnail_url: (Optional) A character value
#'     | |-ap_id: A character value
#'     | |-local: A logical value
#'     | |-embed_video_url: (Optional) A character value
#'     | |-language_id: A numeric value
#'     | |-featured_community: A logical value
#'     | `-featured_local: A logical value
#'     |-community: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-title: A character value
#'     | |-description: (Optional) A character value
#'     | |-removed: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-nsfw: A logical value
#'     | |-actor_id: A character value
#'     | |-local: A logical value
#'     | |-icon: (Optional) A character value
#'     | |-banner: (Optional) A character value
#'     | |-followers_url: A character value
#'     | |-inbox_url: A character value
#'     | |-hidden: A logical value
#'     | |-posting_restricted_to_mods: A logical value
#'     | `-instance_id: A numeric value
#'     |-creator: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-display_name: (Optional) A character value
#'     | |-avatar: (Optional) A character value
#'     | |-banned: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-actor_id: A character value
#'     | |-bio: (Optional) A character value
#'     | |-local: A logical value
#'     | |-banner: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-inbox_url: A character value
#'     | |-matrix_user_id: (Optional) A character value
#'     | |-admin: A logical value
#'     | |-bot_account: A logical value
#'     | |-ban_expires: (Optional) A character value
#'     | `-instance_id: A numeric value
#'     |-post_creator: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-display_name: (Optional) A character value
#'     | |-avatar: (Optional) A character value
#'     | |-banned: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-actor_id: A character value
#'     | |-bio: (Optional) A character value
#'     | |-local: A logical value
#'     | |-banner: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-inbox_url: A character value
#'     | |-matrix_user_id: (Optional) A character value
#'     | |-admin: A logical value
#'     | |-bot_account: A logical value
#'     | |-ban_expires: (Optional) A character value
#'     | `-instance_id: A numeric value
#'     |-creator_banned_from_community: A logical value
#'     |-my_vote: (Optional) A numeric value
#'     |-counts: <list>
#'     | |-id: A numeric value
#'     | |-post_id: A numeric value
#'     | |-comments: A numeric value
#'     | |-score: A numeric value
#'     | |-upvotes: A numeric value
#'     | |-downvotes: A numeric value
#'     | |-published: A character value
#'     | |-newest_comment_time_necro: A character value
#'     | |-newest_comment_time: A character value
#'     | |-featured_community: A logical value
#'     | |-featured_local: A logical value
#'     | |-hot_rank: A numeric value
#'     | `-hot_rank_active: A numeric value
#'     `-resolver: <list>
#'       |-id: A numeric value
#'       |-name: A character value
#'       |-display_name: (Optional) A character value
#'       |-avatar: (Optional) A character value
#'       |-banned: A logical value
#'       |-published: A character value
#'       |-updated: (Optional) A character value
#'       |-actor_id: A character value
#'       |-bio: (Optional) A character value
#'       |-local: A logical value
#'       |-banner: (Optional) A character value
#'       |-deleted: A logical value
#'       |-inbox_url: A character value
#'       |-matrix_user_id: (Optional) A character value
#'       |-admin: A logical value
#'       |-bot_account: A logical value
#'       |-ban_expires: (Optional) A character value
#'       `-instance_id: A numeric value
#' }
#'
#' @export
lemmy_list_post_reports <- function(
    page = NULL, limit = NULL, unresolved_only = NULL,
    community_id = NULL, auth, .lemmy_instance = getOption(
      "lemmy_instance",
      "https://lemmy.world"
    )) {
  stopifnot(length(page) <= 1L)
  stopifnot(length(limit) <= 1L)
  stopifnot(length(unresolved_only) <= 1L)
  stopifnot(length(community_id) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.null(page) || is.numeric(page))
  stopifnot(is.null(limit) || is.numeric(limit))
  stopifnot(is.null(unresolved_only) || is.logical(unresolved_only))
  stopifnot(is.null(community_id) || is.numeric(community_id))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "post/report/list",
    page = page, limit = limit, unresolved_only = unresolved_only,
    community_id = community_id, auth = auth
  )
}
#' Fetch metadata for any given site.
#'
#' `HTTP.GET /post/site_metadata`
#'
#' @param url A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-metadata: <list>
#'   |-title: (Optional) A character value
#'   |-description: (Optional) A character value
#'   |-image: (Optional) A character value
#'   `-embed_video_url: (Optional) A character value
#' }
#'
#' @examplesIf remmy:::is_lemmy_world()
#' site_metadata <- lemmy_get_site_metadata("https://feddit.de")
#'
#' site_metadata$metadata$title
#'
#' @export
lemmy_get_site_metadata <- function(url, .lemmy_instance = getOption(
                                      "lemmy_instance",
                                      "https://lemmy.world"
                                    )) {
  stopifnot(length(url) == 1L)
  stopifnot(is.character(url))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "post/site_metadata",
    url = url
  )
}
#' Create a comment.
#'
#' `HTTP.POST /comment`
#'
#' @param content A character value.
#' @param post_id A numeric value.
#' @param parent_id (Optional) A numeric value.
#' @param language_id (Optional) A numeric value.
#' @param form_id (Optional) A character value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 3:
#' \preformatted{<list>
#' |-comment_view: <list>
#' | |-comment: <list>
#' | | |-id: A numeric value
#' | | |-creator_id: A numeric value
#' | | |-post_id: A numeric value
#' | | |-content: A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-ap_id: A character value
#' | | |-local: A logical value
#' | | |-path: A character value
#' | | |-distinguished: A logical value
#' | | `-language_id: A numeric value
#' | |-creator: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-display_name: (Optional) A character value
#' | | |-avatar: (Optional) A character value
#' | | |-banned: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-actor_id: A character value
#' | | |-bio: (Optional) A character value
#' | | |-local: A logical value
#' | | |-banner: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-inbox_url: A character value
#' | | |-matrix_user_id: (Optional) A character value
#' | | |-admin: A logical value
#' | | |-bot_account: A logical value
#' | | |-ban_expires: (Optional) A character value
#' | | `-instance_id: A numeric value
#' | |-post: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-url: (Optional) A character value
#' | | |-body: (Optional) A character value
#' | | |-creator_id: A numeric value
#' | | |-community_id: A numeric value
#' | | |-removed: A logical value
#' | | |-locked: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-embed_title: (Optional) A character value
#' | | |-embed_description: (Optional) A character value
#' | | |-thumbnail_url: (Optional) A character value
#' | | |-ap_id: A character value
#' | | |-local: A logical value
#' | | |-embed_video_url: (Optional) A character value
#' | | |-language_id: A numeric value
#' | | |-featured_community: A logical value
#' | | `-featured_local: A logical value
#' | |-community: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-title: A character value
#' | | |-description: (Optional) A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-actor_id: A character value
#' | | |-local: A logical value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-followers_url: A character value
#' | | |-inbox_url: A character value
#' | | |-hidden: A logical value
#' | | |-posting_restricted_to_mods: A logical value
#' | | `-instance_id: A numeric value
#' | |-counts: <list>
#' | | |-id: A numeric value
#' | | |-comment_id: A numeric value
#' | | |-score: A numeric value
#' | | |-upvotes: A numeric value
#' | | |-downvotes: A numeric value
#' | | |-published: A character value
#' | | |-child_count: A numeric value
#' | | `-hot_rank: A numeric value
#' | |-creator_banned_from_community: A logical value
#' | |-subscribed: One of "Subscribed", "NotSubscri...
#' | |-saved: A logical value
#' | |-creator_blocked: A logical value
#' | `-my_vote: (Optional) A numeric value
#' |-recipient_ids: A numeric vector
#' `-form_id: (Optional) A character value
#' }
#'
#' @export
lemmy_create_comment <- function(
    content, post_id, parent_id = NULL, language_id = NULL,
    form_id = NULL, auth, .lemmy_instance = getOption(
      "lemmy_instance",
      "https://lemmy.world"
    )) {
  stopifnot(length(content) == 1L)
  stopifnot(length(post_id) == 1L)
  stopifnot(length(parent_id) <= 1L)
  stopifnot(length(language_id) <= 1L)
  stopifnot(length(form_id) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.character(content))
  stopifnot(is.numeric(post_id))
  stopifnot(is.null(parent_id) || is.numeric(parent_id))
  stopifnot(is.null(language_id) || is.numeric(language_id))
  stopifnot(is.null(form_id) || is.character(form_id))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "comment",
    content = content, post_id = post_id, parent_id = parent_id,
    language_id = language_id, form_id = form_id, auth = auth
  )
}
#' Edit a comment.
#'
#' `HTTP.PUT /comment`
#'
#' @param comment_id A numeric value.
#' @param content (Optional) A character value.
#' @param language_id (Optional) A numeric value.
#' @param form_id (Optional) A character value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 3:
#' \preformatted{<list>
#' |-comment_view: <list>
#' | |-comment: <list>
#' | | |-id: A numeric value
#' | | |-creator_id: A numeric value
#' | | |-post_id: A numeric value
#' | | |-content: A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-ap_id: A character value
#' | | |-local: A logical value
#' | | |-path: A character value
#' | | |-distinguished: A logical value
#' | | `-language_id: A numeric value
#' | |-creator: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-display_name: (Optional) A character value
#' | | |-avatar: (Optional) A character value
#' | | |-banned: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-actor_id: A character value
#' | | |-bio: (Optional) A character value
#' | | |-local: A logical value
#' | | |-banner: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-inbox_url: A character value
#' | | |-matrix_user_id: (Optional) A character value
#' | | |-admin: A logical value
#' | | |-bot_account: A logical value
#' | | |-ban_expires: (Optional) A character value
#' | | `-instance_id: A numeric value
#' | |-post: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-url: (Optional) A character value
#' | | |-body: (Optional) A character value
#' | | |-creator_id: A numeric value
#' | | |-community_id: A numeric value
#' | | |-removed: A logical value
#' | | |-locked: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-embed_title: (Optional) A character value
#' | | |-embed_description: (Optional) A character value
#' | | |-thumbnail_url: (Optional) A character value
#' | | |-ap_id: A character value
#' | | |-local: A logical value
#' | | |-embed_video_url: (Optional) A character value
#' | | |-language_id: A numeric value
#' | | |-featured_community: A logical value
#' | | `-featured_local: A logical value
#' | |-community: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-title: A character value
#' | | |-description: (Optional) A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-actor_id: A character value
#' | | |-local: A logical value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-followers_url: A character value
#' | | |-inbox_url: A character value
#' | | |-hidden: A logical value
#' | | |-posting_restricted_to_mods: A logical value
#' | | `-instance_id: A numeric value
#' | |-counts: <list>
#' | | |-id: A numeric value
#' | | |-comment_id: A numeric value
#' | | |-score: A numeric value
#' | | |-upvotes: A numeric value
#' | | |-downvotes: A numeric value
#' | | |-published: A character value
#' | | |-child_count: A numeric value
#' | | `-hot_rank: A numeric value
#' | |-creator_banned_from_community: A logical value
#' | |-subscribed: One of "Subscribed", "NotSubscri...
#' | |-saved: A logical value
#' | |-creator_blocked: A logical value
#' | `-my_vote: (Optional) A numeric value
#' |-recipient_ids: A numeric vector
#' `-form_id: (Optional) A character value
#' }
#'
#' @export
lemmy_edit_comment <- function(
    comment_id, content = NULL, language_id = NULL, form_id = NULL,
    auth, .lemmy_instance = getOption("lemmy_instance", "https://lemmy.world")) {
  stopifnot(length(comment_id) == 1L)
  stopifnot(length(content) <= 1L)
  stopifnot(length(language_id) <= 1L)
  stopifnot(length(form_id) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(comment_id))
  stopifnot(is.null(content) || is.character(content))
  stopifnot(is.null(language_id) || is.numeric(language_id))
  stopifnot(is.null(form_id) || is.character(form_id))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "PUT", endpoint = "comment",
    comment_id = comment_id, content = content, language_id = language_id,
    form_id = form_id, auth = auth
  )
}
#' Delete a comment.
#'
#' `HTTP.POST /comment/delete`
#'
#' @param comment_id A numeric value.
#' @param deleted A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 3:
#' \preformatted{<list>
#' |-comment_view: <list>
#' | |-comment: <list>
#' | | |-id: A numeric value
#' | | |-creator_id: A numeric value
#' | | |-post_id: A numeric value
#' | | |-content: A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-ap_id: A character value
#' | | |-local: A logical value
#' | | |-path: A character value
#' | | |-distinguished: A logical value
#' | | `-language_id: A numeric value
#' | |-creator: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-display_name: (Optional) A character value
#' | | |-avatar: (Optional) A character value
#' | | |-banned: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-actor_id: A character value
#' | | |-bio: (Optional) A character value
#' | | |-local: A logical value
#' | | |-banner: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-inbox_url: A character value
#' | | |-matrix_user_id: (Optional) A character value
#' | | |-admin: A logical value
#' | | |-bot_account: A logical value
#' | | |-ban_expires: (Optional) A character value
#' | | `-instance_id: A numeric value
#' | |-post: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-url: (Optional) A character value
#' | | |-body: (Optional) A character value
#' | | |-creator_id: A numeric value
#' | | |-community_id: A numeric value
#' | | |-removed: A logical value
#' | | |-locked: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-embed_title: (Optional) A character value
#' | | |-embed_description: (Optional) A character value
#' | | |-thumbnail_url: (Optional) A character value
#' | | |-ap_id: A character value
#' | | |-local: A logical value
#' | | |-embed_video_url: (Optional) A character value
#' | | |-language_id: A numeric value
#' | | |-featured_community: A logical value
#' | | `-featured_local: A logical value
#' | |-community: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-title: A character value
#' | | |-description: (Optional) A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-actor_id: A character value
#' | | |-local: A logical value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-followers_url: A character value
#' | | |-inbox_url: A character value
#' | | |-hidden: A logical value
#' | | |-posting_restricted_to_mods: A logical value
#' | | `-instance_id: A numeric value
#' | |-counts: <list>
#' | | |-id: A numeric value
#' | | |-comment_id: A numeric value
#' | | |-score: A numeric value
#' | | |-upvotes: A numeric value
#' | | |-downvotes: A numeric value
#' | | |-published: A character value
#' | | |-child_count: A numeric value
#' | | `-hot_rank: A numeric value
#' | |-creator_banned_from_community: A logical value
#' | |-subscribed: One of "Subscribed", "NotSubscri...
#' | |-saved: A logical value
#' | |-creator_blocked: A logical value
#' | `-my_vote: (Optional) A numeric value
#' |-recipient_ids: A numeric vector
#' `-form_id: (Optional) A character value
#' }
#'
#' @export
lemmy_delete_comment <- function(comment_id, deleted, auth, .lemmy_instance = getOption(
                                   "lemmy_instance",
                                   "https://lemmy.world"
                                 )) {
  stopifnot(length(comment_id) == 1L)
  stopifnot(length(deleted) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(comment_id))
  stopifnot(is.logical(deleted))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "comment/delete",
    comment_id = comment_id, deleted = deleted, auth = auth
  )
}
#' A moderator remove for a comment.
#'
#' `HTTP.POST /comment/remove`
#'
#' @param comment_id A numeric value.
#' @param removed A logical value.
#' @param reason (Optional) A character value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 3:
#' \preformatted{<list>
#' |-comment_view: <list>
#' | |-comment: <list>
#' | | |-id: A numeric value
#' | | |-creator_id: A numeric value
#' | | |-post_id: A numeric value
#' | | |-content: A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-ap_id: A character value
#' | | |-local: A logical value
#' | | |-path: A character value
#' | | |-distinguished: A logical value
#' | | `-language_id: A numeric value
#' | |-creator: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-display_name: (Optional) A character value
#' | | |-avatar: (Optional) A character value
#' | | |-banned: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-actor_id: A character value
#' | | |-bio: (Optional) A character value
#' | | |-local: A logical value
#' | | |-banner: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-inbox_url: A character value
#' | | |-matrix_user_id: (Optional) A character value
#' | | |-admin: A logical value
#' | | |-bot_account: A logical value
#' | | |-ban_expires: (Optional) A character value
#' | | `-instance_id: A numeric value
#' | |-post: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-url: (Optional) A character value
#' | | |-body: (Optional) A character value
#' | | |-creator_id: A numeric value
#' | | |-community_id: A numeric value
#' | | |-removed: A logical value
#' | | |-locked: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-embed_title: (Optional) A character value
#' | | |-embed_description: (Optional) A character value
#' | | |-thumbnail_url: (Optional) A character value
#' | | |-ap_id: A character value
#' | | |-local: A logical value
#' | | |-embed_video_url: (Optional) A character value
#' | | |-language_id: A numeric value
#' | | |-featured_community: A logical value
#' | | `-featured_local: A logical value
#' | |-community: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-title: A character value
#' | | |-description: (Optional) A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-actor_id: A character value
#' | | |-local: A logical value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-followers_url: A character value
#' | | |-inbox_url: A character value
#' | | |-hidden: A logical value
#' | | |-posting_restricted_to_mods: A logical value
#' | | `-instance_id: A numeric value
#' | |-counts: <list>
#' | | |-id: A numeric value
#' | | |-comment_id: A numeric value
#' | | |-score: A numeric value
#' | | |-upvotes: A numeric value
#' | | |-downvotes: A numeric value
#' | | |-published: A character value
#' | | |-child_count: A numeric value
#' | | `-hot_rank: A numeric value
#' | |-creator_banned_from_community: A logical value
#' | |-subscribed: One of "Subscribed", "NotSubscri...
#' | |-saved: A logical value
#' | |-creator_blocked: A logical value
#' | `-my_vote: (Optional) A numeric value
#' |-recipient_ids: A numeric vector
#' `-form_id: (Optional) A character value
#' }
#'
#' @export
lemmy_remove_comment <- function(comment_id, removed, reason = NULL, auth, .lemmy_instance = getOption(
                                   "lemmy_instance",
                                   "https://lemmy.world"
                                 )) {
  stopifnot(length(comment_id) == 1L)
  stopifnot(length(removed) == 1L)
  stopifnot(length(reason) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(comment_id))
  stopifnot(is.logical(removed))
  stopifnot(is.null(reason) || is.character(reason))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "comment/remove",
    comment_id = comment_id, removed = removed, reason = reason,
    auth = auth
  )
}
#' Mark a comment as read.
#'
#' `HTTP.POST /comment/mark_as_read`
#'
#' @param comment_reply_id A numeric value.
#' @param read A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-comment_reply_view: <list>
#'   |-comment_reply: <list>
#'   | |-id: A numeric value
#'   | |-recipient_id: A numeric value
#'   | |-comment_id: A numeric value
#'   | |-read: A logical value
#'   | `-published: A character value
#'   |-comment: <list>
#'   | |-id: A numeric value
#'   | |-creator_id: A numeric value
#'   | |-post_id: A numeric value
#'   | |-content: A character value
#'   | |-removed: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-ap_id: A character value
#'   | |-local: A logical value
#'   | |-path: A character value
#'   | |-distinguished: A logical value
#'   | `-language_id: A numeric value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-post: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-url: (Optional) A character value
#'   | |-body: (Optional) A character value
#'   | |-creator_id: A numeric value
#'   | |-community_id: A numeric value
#'   | |-removed: A logical value
#'   | |-locked: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-embed_title: (Optional) A character value
#'   | |-embed_description: (Optional) A character value
#'   | |-thumbnail_url: (Optional) A character value
#'   | |-ap_id: A character value
#'   | |-local: A logical value
#'   | |-embed_video_url: (Optional) A character value
#'   | |-language_id: A numeric value
#'   | |-featured_community: A logical value
#'   | `-featured_local: A logical value
#'   |-community: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-title: A character value
#'   | |-description: (Optional) A character value
#'   | |-removed: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-actor_id: A character value
#'   | |-local: A logical value
#'   | |-icon: (Optional) A character value
#'   | |-banner: (Optional) A character value
#'   | |-followers_url: A character value
#'   | |-inbox_url: A character value
#'   | |-hidden: A logical value
#'   | |-posting_restricted_to_mods: A logical value
#'   | `-instance_id: A numeric value
#'   |-recipient: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-counts: <list>
#'   | |-id: A numeric value
#'   | |-comment_id: A numeric value
#'   | |-score: A numeric value
#'   | |-upvotes: A numeric value
#'   | |-downvotes: A numeric value
#'   | |-published: A character value
#'   | |-child_count: A numeric value
#'   | `-hot_rank: A numeric value
#'   |-creator_banned_from_community: A logical value
#'   |-subscribed: One of "Subscribed", "NotSubscri...
#'   |-saved: A logical value
#'   |-creator_blocked: A logical value
#'   `-my_vote: (Optional) A numeric value
#' }
#'
#' @export
lemmy_mark_comment_reply_as_read <- function(comment_reply_id, read, auth, .lemmy_instance = getOption(
                                               "lemmy_instance",
                                               "https://lemmy.world"
                                             )) {
  stopifnot(length(comment_reply_id) == 1L)
  stopifnot(length(read) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(comment_reply_id))
  stopifnot(is.logical(read))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "comment/mark_as_read",
    comment_reply_id = comment_reply_id, read = read, auth = auth
  )
}
#' Like / vote on a comment.
#'
#' `HTTP.POST /comment/like`
#'
#' @param comment_id A numeric value.
#' @param score A numeric value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 3:
#' \preformatted{<list>
#' |-comment_view: <list>
#' | |-comment: <list>
#' | | |-id: A numeric value
#' | | |-creator_id: A numeric value
#' | | |-post_id: A numeric value
#' | | |-content: A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-ap_id: A character value
#' | | |-local: A logical value
#' | | |-path: A character value
#' | | |-distinguished: A logical value
#' | | `-language_id: A numeric value
#' | |-creator: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-display_name: (Optional) A character value
#' | | |-avatar: (Optional) A character value
#' | | |-banned: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-actor_id: A character value
#' | | |-bio: (Optional) A character value
#' | | |-local: A logical value
#' | | |-banner: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-inbox_url: A character value
#' | | |-matrix_user_id: (Optional) A character value
#' | | |-admin: A logical value
#' | | |-bot_account: A logical value
#' | | |-ban_expires: (Optional) A character value
#' | | `-instance_id: A numeric value
#' | |-post: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-url: (Optional) A character value
#' | | |-body: (Optional) A character value
#' | | |-creator_id: A numeric value
#' | | |-community_id: A numeric value
#' | | |-removed: A logical value
#' | | |-locked: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-embed_title: (Optional) A character value
#' | | |-embed_description: (Optional) A character value
#' | | |-thumbnail_url: (Optional) A character value
#' | | |-ap_id: A character value
#' | | |-local: A logical value
#' | | |-embed_video_url: (Optional) A character value
#' | | |-language_id: A numeric value
#' | | |-featured_community: A logical value
#' | | `-featured_local: A logical value
#' | |-community: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-title: A character value
#' | | |-description: (Optional) A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-actor_id: A character value
#' | | |-local: A logical value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-followers_url: A character value
#' | | |-inbox_url: A character value
#' | | |-hidden: A logical value
#' | | |-posting_restricted_to_mods: A logical value
#' | | `-instance_id: A numeric value
#' | |-counts: <list>
#' | | |-id: A numeric value
#' | | |-comment_id: A numeric value
#' | | |-score: A numeric value
#' | | |-upvotes: A numeric value
#' | | |-downvotes: A numeric value
#' | | |-published: A character value
#' | | |-child_count: A numeric value
#' | | `-hot_rank: A numeric value
#' | |-creator_banned_from_community: A logical value
#' | |-subscribed: One of "Subscribed", "NotSubscri...
#' | |-saved: A logical value
#' | |-creator_blocked: A logical value
#' | `-my_vote: (Optional) A numeric value
#' |-recipient_ids: A numeric vector
#' `-form_id: (Optional) A character value
#' }
#'
#' @export
lemmy_like_comment <- function(comment_id, score, auth, .lemmy_instance = getOption(
                                 "lemmy_instance",
                                 "https://lemmy.world"
                               )) {
  stopifnot(length(comment_id) == 1L)
  stopifnot(length(score) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(comment_id))
  stopifnot(is.numeric(score))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "comment/like",
    comment_id = comment_id, score = score, auth = auth
  )
}
#' Save a comment.
#'
#' `HTTP.PUT /comment/save`
#'
#' @param comment_id A numeric value.
#' @param save A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 3:
#' \preformatted{<list>
#' |-comment_view: <list>
#' | |-comment: <list>
#' | | |-id: A numeric value
#' | | |-creator_id: A numeric value
#' | | |-post_id: A numeric value
#' | | |-content: A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-ap_id: A character value
#' | | |-local: A logical value
#' | | |-path: A character value
#' | | |-distinguished: A logical value
#' | | `-language_id: A numeric value
#' | |-creator: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-display_name: (Optional) A character value
#' | | |-avatar: (Optional) A character value
#' | | |-banned: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-actor_id: A character value
#' | | |-bio: (Optional) A character value
#' | | |-local: A logical value
#' | | |-banner: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-inbox_url: A character value
#' | | |-matrix_user_id: (Optional) A character value
#' | | |-admin: A logical value
#' | | |-bot_account: A logical value
#' | | |-ban_expires: (Optional) A character value
#' | | `-instance_id: A numeric value
#' | |-post: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-url: (Optional) A character value
#' | | |-body: (Optional) A character value
#' | | |-creator_id: A numeric value
#' | | |-community_id: A numeric value
#' | | |-removed: A logical value
#' | | |-locked: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-embed_title: (Optional) A character value
#' | | |-embed_description: (Optional) A character value
#' | | |-thumbnail_url: (Optional) A character value
#' | | |-ap_id: A character value
#' | | |-local: A logical value
#' | | |-embed_video_url: (Optional) A character value
#' | | |-language_id: A numeric value
#' | | |-featured_community: A logical value
#' | | `-featured_local: A logical value
#' | |-community: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-title: A character value
#' | | |-description: (Optional) A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-actor_id: A character value
#' | | |-local: A logical value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-followers_url: A character value
#' | | |-inbox_url: A character value
#' | | |-hidden: A logical value
#' | | |-posting_restricted_to_mods: A logical value
#' | | `-instance_id: A numeric value
#' | |-counts: <list>
#' | | |-id: A numeric value
#' | | |-comment_id: A numeric value
#' | | |-score: A numeric value
#' | | |-upvotes: A numeric value
#' | | |-downvotes: A numeric value
#' | | |-published: A character value
#' | | |-child_count: A numeric value
#' | | `-hot_rank: A numeric value
#' | |-creator_banned_from_community: A logical value
#' | |-subscribed: One of "Subscribed", "NotSubscri...
#' | |-saved: A logical value
#' | |-creator_blocked: A logical value
#' | `-my_vote: (Optional) A numeric value
#' |-recipient_ids: A numeric vector
#' `-form_id: (Optional) A character value
#' }
#'
#' @export
lemmy_save_comment <- function(comment_id, save, auth, .lemmy_instance = getOption(
                                 "lemmy_instance",
                                 "https://lemmy.world"
                               )) {
  stopifnot(length(comment_id) == 1L)
  stopifnot(length(save) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(comment_id))
  stopifnot(is.logical(save))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "PUT", endpoint = "comment/save",
    comment_id = comment_id, save = save, auth = auth
  )
}
#' Distinguishes a comment (speak as moderator)
#'
#' `HTTP.POST /comment/distinguish`
#'
#' @param comment_id A numeric value.
#' @param distinguished A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 3:
#' \preformatted{<list>
#' |-comment_view: <list>
#' | |-comment: <list>
#' | | |-id: A numeric value
#' | | |-creator_id: A numeric value
#' | | |-post_id: A numeric value
#' | | |-content: A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-ap_id: A character value
#' | | |-local: A logical value
#' | | |-path: A character value
#' | | |-distinguished: A logical value
#' | | `-language_id: A numeric value
#' | |-creator: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-display_name: (Optional) A character value
#' | | |-avatar: (Optional) A character value
#' | | |-banned: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-actor_id: A character value
#' | | |-bio: (Optional) A character value
#' | | |-local: A logical value
#' | | |-banner: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-inbox_url: A character value
#' | | |-matrix_user_id: (Optional) A character value
#' | | |-admin: A logical value
#' | | |-bot_account: A logical value
#' | | |-ban_expires: (Optional) A character value
#' | | `-instance_id: A numeric value
#' | |-post: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-url: (Optional) A character value
#' | | |-body: (Optional) A character value
#' | | |-creator_id: A numeric value
#' | | |-community_id: A numeric value
#' | | |-removed: A logical value
#' | | |-locked: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-embed_title: (Optional) A character value
#' | | |-embed_description: (Optional) A character value
#' | | |-thumbnail_url: (Optional) A character value
#' | | |-ap_id: A character value
#' | | |-local: A logical value
#' | | |-embed_video_url: (Optional) A character value
#' | | |-language_id: A numeric value
#' | | |-featured_community: A logical value
#' | | `-featured_local: A logical value
#' | |-community: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-title: A character value
#' | | |-description: (Optional) A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-actor_id: A character value
#' | | |-local: A logical value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-followers_url: A character value
#' | | |-inbox_url: A character value
#' | | |-hidden: A logical value
#' | | |-posting_restricted_to_mods: A logical value
#' | | `-instance_id: A numeric value
#' | |-counts: <list>
#' | | |-id: A numeric value
#' | | |-comment_id: A numeric value
#' | | |-score: A numeric value
#' | | |-upvotes: A numeric value
#' | | |-downvotes: A numeric value
#' | | |-published: A character value
#' | | |-child_count: A numeric value
#' | | `-hot_rank: A numeric value
#' | |-creator_banned_from_community: A logical value
#' | |-subscribed: One of "Subscribed", "NotSubscri...
#' | |-saved: A logical value
#' | |-creator_blocked: A logical value
#' | `-my_vote: (Optional) A numeric value
#' |-recipient_ids: A numeric vector
#' `-form_id: (Optional) A character value
#' }
#'
#' @export
lemmy_distinguish_comment <- function(comment_id, distinguished, auth, .lemmy_instance = getOption(
                                        "lemmy_instance",
                                        "https://lemmy.world"
                                      )) {
  stopifnot(length(comment_id) == 1L)
  stopifnot(length(distinguished) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(comment_id))
  stopifnot(is.logical(distinguished))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "comment/distinguish",
    comment_id = comment_id, distinguished = distinguished,
    auth = auth
  )
}
#' Get / fetch comments.
#'
#' `HTTP.GET /comment/list`
#'
#' @param type_ (Optional) One of "All", "Local", or "Subscribed".
#' @param sort (Optional) One of "Hot", "New", "Old", or "Top".
#' @param max_depth (Optional) A numeric value.
#' @param page (Optional) A numeric value.
#' @param limit (Optional) A numeric value.
#' @param community_id (Optional) A numeric value.
#' @param community_name (Optional) A character value.
#' @param post_id (Optional) A numeric value.
#' @param parent_id (Optional) A numeric value.
#' @param saved_only (Optional) A logical value.
#' @param auth (Optional) A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-comments: <list>
#'   `-[Each element]: <list>
#'     |-comment: <list>
#'     | |-id: A numeric value
#'     | |-creator_id: A numeric value
#'     | |-post_id: A numeric value
#'     | |-content: A character value
#'     | |-removed: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-ap_id: A character value
#'     | |-local: A logical value
#'     | |-path: A character value
#'     | |-distinguished: A logical value
#'     | `-language_id: A numeric value
#'     |-creator: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-display_name: (Optional) A character value
#'     | |-avatar: (Optional) A character value
#'     | |-banned: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-actor_id: A character value
#'     | |-bio: (Optional) A character value
#'     | |-local: A logical value
#'     | |-banner: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-inbox_url: A character value
#'     | |-matrix_user_id: (Optional) A character value
#'     | |-admin: A logical value
#'     | |-bot_account: A logical value
#'     | |-ban_expires: (Optional) A character value
#'     | `-instance_id: A numeric value
#'     |-post: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-url: (Optional) A character value
#'     | |-body: (Optional) A character value
#'     | |-creator_id: A numeric value
#'     | |-community_id: A numeric value
#'     | |-removed: A logical value
#'     | |-locked: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-nsfw: A logical value
#'     | |-embed_title: (Optional) A character value
#'     | |-embed_description: (Optional) A character value
#'     | |-thumbnail_url: (Optional) A character value
#'     | |-ap_id: A character value
#'     | |-local: A logical value
#'     | |-embed_video_url: (Optional) A character value
#'     | |-language_id: A numeric value
#'     | |-featured_community: A logical value
#'     | `-featured_local: A logical value
#'     |-community: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-title: A character value
#'     | |-description: (Optional) A character value
#'     | |-removed: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-nsfw: A logical value
#'     | |-actor_id: A character value
#'     | |-local: A logical value
#'     | |-icon: (Optional) A character value
#'     | |-banner: (Optional) A character value
#'     | |-followers_url: A character value
#'     | |-inbox_url: A character value
#'     | |-hidden: A logical value
#'     | |-posting_restricted_to_mods: A logical value
#'     | `-instance_id: A numeric value
#'     |-counts: <list>
#'     | |-id: A numeric value
#'     | |-comment_id: A numeric value
#'     | |-score: A numeric value
#'     | |-upvotes: A numeric value
#'     | |-downvotes: A numeric value
#'     | |-published: A character value
#'     | |-child_count: A numeric value
#'     | `-hot_rank: A numeric value
#'     |-creator_banned_from_community: A logical value
#'     |-subscribed: One of "Subscribed", "NotSubscri...
#'     |-saved: A logical value
#'     |-creator_blocked: A logical value
#'     `-my_vote: (Optional) A numeric value
#' }
#'
#' @examplesIf remmy:::is_lemmy_world()
#' comment_list <- lemmy_get_comments(limit = 1, sort = "Top")
#'
#' comment_list$comments[[1]]$community$name
#'
#' comment_list$comments[[1]]$post$name
#'
#' comment_list$comments[[1]]$comment$content
#'
#' @export
lemmy_get_comments <- function(
    type_ = NULL, sort = NULL, max_depth = NULL, page = NULL,
    limit = NULL, community_id = NULL, community_name = NULL,
    post_id = NULL, parent_id = NULL, saved_only = NULL, auth = NULL,
    .lemmy_instance = getOption("lemmy_instance", "https://lemmy.world")) {
  stopifnot(length(type_) <= 1L)
  stopifnot(length(sort) <= 1L)
  stopifnot(length(max_depth) <= 1L)
  stopifnot(length(page) <= 1L)
  stopifnot(length(limit) <= 1L)
  stopifnot(length(community_id) <= 1L)
  stopifnot(length(community_name) <= 1L)
  stopifnot(length(post_id) <= 1L)
  stopifnot(length(parent_id) <= 1L)
  stopifnot(length(saved_only) <= 1L)
  stopifnot(length(auth) <= 1L)
  stopifnot(is.null(max_depth) || is.numeric(max_depth))
  stopifnot(is.null(page) || is.numeric(page))
  stopifnot(is.null(limit) || is.numeric(limit))
  stopifnot(is.null(community_id) || is.numeric(community_id))
  stopifnot(is.null(community_name) || is.character(community_name))
  stopifnot(is.null(post_id) || is.numeric(post_id))
  stopifnot(is.null(parent_id) || is.numeric(parent_id))
  stopifnot(is.null(saved_only) || is.logical(saved_only))
  stopifnot(is.null(auth) || is.character(auth))
  stopifnot(is.null(type_) || type_ %in% c(
    "All", "Local",
    "Subscribed"
  ))
  stopifnot(is.null(sort) || sort %in% c(
    "Hot", "New", "Old",
    "Top"
  ))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "comment/list",
    type_ = type_, sort = sort, max_depth = max_depth, page = page,
    limit = limit, community_id = community_id, community_name = community_name,
    post_id = post_id, parent_id = parent_id, saved_only = saved_only,
    auth = auth
  )
}
#' Get / fetch comment.
#'
#' `HTTP.GET /comment`
#'
#' @param id A numeric value.
#' @param auth (Optional) A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 3:
#' \preformatted{<list>
#' |-comment_view: <list>
#' | |-comment: <list>
#' | | |-id: A numeric value
#' | | |-creator_id: A numeric value
#' | | |-post_id: A numeric value
#' | | |-content: A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-ap_id: A character value
#' | | |-local: A logical value
#' | | |-path: A character value
#' | | |-distinguished: A logical value
#' | | `-language_id: A numeric value
#' | |-creator: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-display_name: (Optional) A character value
#' | | |-avatar: (Optional) A character value
#' | | |-banned: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-actor_id: A character value
#' | | |-bio: (Optional) A character value
#' | | |-local: A logical value
#' | | |-banner: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-inbox_url: A character value
#' | | |-matrix_user_id: (Optional) A character value
#' | | |-admin: A logical value
#' | | |-bot_account: A logical value
#' | | |-ban_expires: (Optional) A character value
#' | | `-instance_id: A numeric value
#' | |-post: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-url: (Optional) A character value
#' | | |-body: (Optional) A character value
#' | | |-creator_id: A numeric value
#' | | |-community_id: A numeric value
#' | | |-removed: A logical value
#' | | |-locked: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-embed_title: (Optional) A character value
#' | | |-embed_description: (Optional) A character value
#' | | |-thumbnail_url: (Optional) A character value
#' | | |-ap_id: A character value
#' | | |-local: A logical value
#' | | |-embed_video_url: (Optional) A character value
#' | | |-language_id: A numeric value
#' | | |-featured_community: A logical value
#' | | `-featured_local: A logical value
#' | |-community: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-title: A character value
#' | | |-description: (Optional) A character value
#' | | |-removed: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-nsfw: A logical value
#' | | |-actor_id: A character value
#' | | |-local: A logical value
#' | | |-icon: (Optional) A character value
#' | | |-banner: (Optional) A character value
#' | | |-followers_url: A character value
#' | | |-inbox_url: A character value
#' | | |-hidden: A logical value
#' | | |-posting_restricted_to_mods: A logical value
#' | | `-instance_id: A numeric value
#' | |-counts: <list>
#' | | |-id: A numeric value
#' | | |-comment_id: A numeric value
#' | | |-score: A numeric value
#' | | |-upvotes: A numeric value
#' | | |-downvotes: A numeric value
#' | | |-published: A character value
#' | | |-child_count: A numeric value
#' | | `-hot_rank: A numeric value
#' | |-creator_banned_from_community: A logical value
#' | |-subscribed: One of "Subscribed", "NotSubscri...
#' | |-saved: A logical value
#' | |-creator_blocked: A logical value
#' | `-my_vote: (Optional) A numeric value
#' |-recipient_ids: A numeric vector
#' `-form_id: (Optional) A character value
#' }
#'
#' @examplesIf remmy:::is_lemmy_world()
#' comment_data <- lemmy_get_comment(546564)
#'
#' comment_data$comment_view$comment$content
#'
#' comment_data$comment_view$counts$score
#'
#' @export
lemmy_get_comment <- function(id, auth = NULL, .lemmy_instance = getOption(
                                "lemmy_instance",
                                "https://lemmy.world"
                              )) {
  stopifnot(length(id) == 1L)
  stopifnot(length(auth) <= 1L)
  stopifnot(is.numeric(id))
  stopifnot(is.null(auth) || is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "comment",
    id = id, auth = auth
  )
}
#' Report a comment.
#'
#' `HTTP.POST /comment/report`
#'
#' @param comment_id A numeric value.
#' @param reason A character value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-comment_report_view: <list>
#'   |-comment_report: <list>
#'   | |-id: A numeric value
#'   | |-creator_id: A numeric value
#'   | |-comment_id: A numeric value
#'   | |-original_comment_text: A character value
#'   | |-reason: A character value
#'   | |-resolved: A logical value
#'   | |-resolver_id: (Optional) A numeric value
#'   | |-published: A character value
#'   | `-updated: (Optional) A character value
#'   |-comment: <list>
#'   | |-id: A numeric value
#'   | |-creator_id: A numeric value
#'   | |-post_id: A numeric value
#'   | |-content: A character value
#'   | |-removed: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-ap_id: A character value
#'   | |-local: A logical value
#'   | |-path: A character value
#'   | |-distinguished: A logical value
#'   | `-language_id: A numeric value
#'   |-post: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-url: (Optional) A character value
#'   | |-body: (Optional) A character value
#'   | |-creator_id: A numeric value
#'   | |-community_id: A numeric value
#'   | |-removed: A logical value
#'   | |-locked: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-embed_title: (Optional) A character value
#'   | |-embed_description: (Optional) A character value
#'   | |-thumbnail_url: (Optional) A character value
#'   | |-ap_id: A character value
#'   | |-local: A logical value
#'   | |-embed_video_url: (Optional) A character value
#'   | |-language_id: A numeric value
#'   | |-featured_community: A logical value
#'   | `-featured_local: A logical value
#'   |-community: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-title: A character value
#'   | |-description: (Optional) A character value
#'   | |-removed: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-actor_id: A character value
#'   | |-local: A logical value
#'   | |-icon: (Optional) A character value
#'   | |-banner: (Optional) A character value
#'   | |-followers_url: A character value
#'   | |-inbox_url: A character value
#'   | |-hidden: A logical value
#'   | |-posting_restricted_to_mods: A logical value
#'   | `-instance_id: A numeric value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-comment_creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-counts: <list>
#'   | |-id: A numeric value
#'   | |-comment_id: A numeric value
#'   | |-score: A numeric value
#'   | |-upvotes: A numeric value
#'   | |-downvotes: A numeric value
#'   | |-published: A character value
#'   | |-child_count: A numeric value
#'   | `-hot_rank: A numeric value
#'   |-creator_banned_from_community: A logical value
#'   |-my_vote: (Optional) A numeric value
#'   `-resolver: <list>
#'     |-id: A numeric value
#'     |-name: A character value
#'     |-display_name: (Optional) A character value
#'     |-avatar: (Optional) A character value
#'     |-banned: A logical value
#'     |-published: A character value
#'     |-updated: (Optional) A character value
#'     |-actor_id: A character value
#'     |-bio: (Optional) A character value
#'     |-local: A logical value
#'     |-banner: (Optional) A character value
#'     |-deleted: A logical value
#'     |-inbox_url: A character value
#'     |-matrix_user_id: (Optional) A character value
#'     |-admin: A logical value
#'     |-bot_account: A logical value
#'     |-ban_expires: (Optional) A character value
#'     `-instance_id: A numeric value
#' }
#'
#' @export
lemmy_create_comment_report <- function(comment_id, reason, auth, .lemmy_instance = getOption(
                                          "lemmy_instance",
                                          "https://lemmy.world"
                                        )) {
  stopifnot(length(comment_id) == 1L)
  stopifnot(length(reason) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(comment_id))
  stopifnot(is.character(reason))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "comment/report",
    comment_id = comment_id, reason = reason, auth = auth
  )
}
#' Resolve a comment report. Only a mod can do this.
#'
#' `HTTP.PUT /comment/report/resolve`
#'
#' @param report_id A numeric value.
#' @param resolved A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-comment_report_view: <list>
#'   |-comment_report: <list>
#'   | |-id: A numeric value
#'   | |-creator_id: A numeric value
#'   | |-comment_id: A numeric value
#'   | |-original_comment_text: A character value
#'   | |-reason: A character value
#'   | |-resolved: A logical value
#'   | |-resolver_id: (Optional) A numeric value
#'   | |-published: A character value
#'   | `-updated: (Optional) A character value
#'   |-comment: <list>
#'   | |-id: A numeric value
#'   | |-creator_id: A numeric value
#'   | |-post_id: A numeric value
#'   | |-content: A character value
#'   | |-removed: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-ap_id: A character value
#'   | |-local: A logical value
#'   | |-path: A character value
#'   | |-distinguished: A logical value
#'   | `-language_id: A numeric value
#'   |-post: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-url: (Optional) A character value
#'   | |-body: (Optional) A character value
#'   | |-creator_id: A numeric value
#'   | |-community_id: A numeric value
#'   | |-removed: A logical value
#'   | |-locked: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-embed_title: (Optional) A character value
#'   | |-embed_description: (Optional) A character value
#'   | |-thumbnail_url: (Optional) A character value
#'   | |-ap_id: A character value
#'   | |-local: A logical value
#'   | |-embed_video_url: (Optional) A character value
#'   | |-language_id: A numeric value
#'   | |-featured_community: A logical value
#'   | `-featured_local: A logical value
#'   |-community: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-title: A character value
#'   | |-description: (Optional) A character value
#'   | |-removed: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-actor_id: A character value
#'   | |-local: A logical value
#'   | |-icon: (Optional) A character value
#'   | |-banner: (Optional) A character value
#'   | |-followers_url: A character value
#'   | |-inbox_url: A character value
#'   | |-hidden: A logical value
#'   | |-posting_restricted_to_mods: A logical value
#'   | `-instance_id: A numeric value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-comment_creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-counts: <list>
#'   | |-id: A numeric value
#'   | |-comment_id: A numeric value
#'   | |-score: A numeric value
#'   | |-upvotes: A numeric value
#'   | |-downvotes: A numeric value
#'   | |-published: A character value
#'   | |-child_count: A numeric value
#'   | `-hot_rank: A numeric value
#'   |-creator_banned_from_community: A logical value
#'   |-my_vote: (Optional) A numeric value
#'   `-resolver: <list>
#'     |-id: A numeric value
#'     |-name: A character value
#'     |-display_name: (Optional) A character value
#'     |-avatar: (Optional) A character value
#'     |-banned: A logical value
#'     |-published: A character value
#'     |-updated: (Optional) A character value
#'     |-actor_id: A character value
#'     |-bio: (Optional) A character value
#'     |-local: A logical value
#'     |-banner: (Optional) A character value
#'     |-deleted: A logical value
#'     |-inbox_url: A character value
#'     |-matrix_user_id: (Optional) A character value
#'     |-admin: A logical value
#'     |-bot_account: A logical value
#'     |-ban_expires: (Optional) A character value
#'     `-instance_id: A numeric value
#' }
#'
#' @export
lemmy_resolve_comment_report <- function(report_id, resolved, auth, .lemmy_instance = getOption(
                                           "lemmy_instance",
                                           "https://lemmy.world"
                                         )) {
  stopifnot(length(report_id) == 1L)
  stopifnot(length(resolved) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(report_id))
  stopifnot(is.logical(resolved))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "PUT", endpoint = "comment/report/resolve",
    report_id = report_id, resolved = resolved, auth = auth
  )
}
#' List comment reports.
#'
#' `HTTP.GET /comment/report/list`
#'
#' @param page (Optional) A numeric value.
#' @param limit (Optional) A numeric value.
#' @param unresolved_only (Optional) A logical value.
#' @param community_id (Optional) A numeric value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-comment_reports: <list>
#'   `-[Each element]: <list>
#'     |-comment_report: <list>
#'     | |-id: A numeric value
#'     | |-creator_id: A numeric value
#'     | |-comment_id: A numeric value
#'     | |-original_comment_text: A character value
#'     | |-reason: A character value
#'     | |-resolved: A logical value
#'     | |-resolver_id: (Optional) A numeric value
#'     | |-published: A character value
#'     | `-updated: (Optional) A character value
#'     |-comment: <list>
#'     | |-id: A numeric value
#'     | |-creator_id: A numeric value
#'     | |-post_id: A numeric value
#'     | |-content: A character value
#'     | |-removed: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-ap_id: A character value
#'     | |-local: A logical value
#'     | |-path: A character value
#'     | |-distinguished: A logical value
#'     | `-language_id: A numeric value
#'     |-post: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-url: (Optional) A character value
#'     | |-body: (Optional) A character value
#'     | |-creator_id: A numeric value
#'     | |-community_id: A numeric value
#'     | |-removed: A logical value
#'     | |-locked: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-nsfw: A logical value
#'     | |-embed_title: (Optional) A character value
#'     | |-embed_description: (Optional) A character value
#'     | |-thumbnail_url: (Optional) A character value
#'     | |-ap_id: A character value
#'     | |-local: A logical value
#'     | |-embed_video_url: (Optional) A character value
#'     | |-language_id: A numeric value
#'     | |-featured_community: A logical value
#'     | `-featured_local: A logical value
#'     |-community: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-title: A character value
#'     | |-description: (Optional) A character value
#'     | |-removed: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-nsfw: A logical value
#'     | |-actor_id: A character value
#'     | |-local: A logical value
#'     | |-icon: (Optional) A character value
#'     | |-banner: (Optional) A character value
#'     | |-followers_url: A character value
#'     | |-inbox_url: A character value
#'     | |-hidden: A logical value
#'     | |-posting_restricted_to_mods: A logical value
#'     | `-instance_id: A numeric value
#'     |-creator: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-display_name: (Optional) A character value
#'     | |-avatar: (Optional) A character value
#'     | |-banned: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-actor_id: A character value
#'     | |-bio: (Optional) A character value
#'     | |-local: A logical value
#'     | |-banner: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-inbox_url: A character value
#'     | |-matrix_user_id: (Optional) A character value
#'     | |-admin: A logical value
#'     | |-bot_account: A logical value
#'     | |-ban_expires: (Optional) A character value
#'     | `-instance_id: A numeric value
#'     |-comment_creator: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-display_name: (Optional) A character value
#'     | |-avatar: (Optional) A character value
#'     | |-banned: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-actor_id: A character value
#'     | |-bio: (Optional) A character value
#'     | |-local: A logical value
#'     | |-banner: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-inbox_url: A character value
#'     | |-matrix_user_id: (Optional) A character value
#'     | |-admin: A logical value
#'     | |-bot_account: A logical value
#'     | |-ban_expires: (Optional) A character value
#'     | `-instance_id: A numeric value
#'     |-counts: <list>
#'     | |-id: A numeric value
#'     | |-comment_id: A numeric value
#'     | |-score: A numeric value
#'     | |-upvotes: A numeric value
#'     | |-downvotes: A numeric value
#'     | |-published: A character value
#'     | |-child_count: A numeric value
#'     | `-hot_rank: A numeric value
#'     |-creator_banned_from_community: A logical value
#'     |-my_vote: (Optional) A numeric value
#'     `-resolver: <list>
#'       |-id: A numeric value
#'       |-name: A character value
#'       |-display_name: (Optional) A character value
#'       |-avatar: (Optional) A character value
#'       |-banned: A logical value
#'       |-published: A character value
#'       |-updated: (Optional) A character value
#'       |-actor_id: A character value
#'       |-bio: (Optional) A character value
#'       |-local: A logical value
#'       |-banner: (Optional) A character value
#'       |-deleted: A logical value
#'       |-inbox_url: A character value
#'       |-matrix_user_id: (Optional) A character value
#'       |-admin: A logical value
#'       |-bot_account: A logical value
#'       |-ban_expires: (Optional) A character value
#'       `-instance_id: A numeric value
#' }
#'
#' @export
lemmy_list_comment_reports <- function(
    page = NULL, limit = NULL, unresolved_only = NULL,
    community_id = NULL, auth, .lemmy_instance = getOption(
      "lemmy_instance",
      "https://lemmy.world"
    )) {
  stopifnot(length(page) <= 1L)
  stopifnot(length(limit) <= 1L)
  stopifnot(length(unresolved_only) <= 1L)
  stopifnot(length(community_id) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.null(page) || is.numeric(page))
  stopifnot(is.null(limit) || is.numeric(limit))
  stopifnot(is.null(unresolved_only) || is.logical(unresolved_only))
  stopifnot(is.null(community_id) || is.numeric(community_id))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "comment/report/list",
    page = page, limit = limit, unresolved_only = unresolved_only,
    community_id = community_id, auth = auth
  )
}
#' Get / fetch private messages.
#'
#' `HTTP.GET /private_message/list`
#'
#' @param unread_only (Optional) A logical value.
#' @param page (Optional) A numeric value.
#' @param limit (Optional) A numeric value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-private_messages: <list>
#'   `-[Each element]: <list>
#'     |-private_message: <list>
#'     | |-id: A numeric value
#'     | |-creator_id: A numeric value
#'     | |-recipient_id: A numeric value
#'     | |-content: A character value
#'     | |-deleted: A logical value
#'     | |-read: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-ap_id: A character value
#'     | `-local: A logical value
#'     |-creator: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-display_name: (Optional) A character value
#'     | |-avatar: (Optional) A character value
#'     | |-banned: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-actor_id: A character value
#'     | |-bio: (Optional) A character value
#'     | |-local: A logical value
#'     | |-banner: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-inbox_url: A character value
#'     | |-matrix_user_id: (Optional) A character value
#'     | |-admin: A logical value
#'     | |-bot_account: A logical value
#'     | |-ban_expires: (Optional) A character value
#'     | `-instance_id: A numeric value
#'     `-recipient: <list>
#'       |-id: A numeric value
#'       |-name: A character value
#'       |-display_name: (Optional) A character value
#'       |-avatar: (Optional) A character value
#'       |-banned: A logical value
#'       |-published: A character value
#'       |-updated: (Optional) A character value
#'       |-actor_id: A character value
#'       |-bio: (Optional) A character value
#'       |-local: A logical value
#'       |-banner: (Optional) A character value
#'       |-deleted: A logical value
#'       |-inbox_url: A character value
#'       |-matrix_user_id: (Optional) A character value
#'       |-admin: A logical value
#'       |-bot_account: A logical value
#'       |-ban_expires: (Optional) A character value
#'       `-instance_id: A numeric value
#' }
#'
#' @export
lemmy_get_private_messages <- function(
    unread_only = NULL, page = NULL, limit = NULL, auth,
    .lemmy_instance = getOption("lemmy_instance", "https://lemmy.world")) {
  stopifnot(length(unread_only) <= 1L)
  stopifnot(length(page) <= 1L)
  stopifnot(length(limit) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.null(unread_only) || is.logical(unread_only))
  stopifnot(is.null(page) || is.numeric(page))
  stopifnot(is.null(limit) || is.numeric(limit))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "private_message/list",
    unread_only = unread_only, page = page, limit = limit,
    auth = auth
  )
}
#' Create a private message.
#'
#' `HTTP.POST /private_message`
#'
#' @param content A character value.
#' @param recipient_id A numeric value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-private_message_view: <list>
#'   |-private_message: <list>
#'   | |-id: A numeric value
#'   | |-creator_id: A numeric value
#'   | |-recipient_id: A numeric value
#'   | |-content: A character value
#'   | |-deleted: A logical value
#'   | |-read: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-ap_id: A character value
#'   | `-local: A logical value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   `-recipient: <list>
#'     |-id: A numeric value
#'     |-name: A character value
#'     |-display_name: (Optional) A character value
#'     |-avatar: (Optional) A character value
#'     |-banned: A logical value
#'     |-published: A character value
#'     |-updated: (Optional) A character value
#'     |-actor_id: A character value
#'     |-bio: (Optional) A character value
#'     |-local: A logical value
#'     |-banner: (Optional) A character value
#'     |-deleted: A logical value
#'     |-inbox_url: A character value
#'     |-matrix_user_id: (Optional) A character value
#'     |-admin: A logical value
#'     |-bot_account: A logical value
#'     |-ban_expires: (Optional) A character value
#'     `-instance_id: A numeric value
#' }
#'
#' @export
lemmy_create_private_message <- function(content, recipient_id, auth, .lemmy_instance = getOption(
                                           "lemmy_instance",
                                           "https://lemmy.world"
                                         )) {
  stopifnot(length(content) == 1L)
  stopifnot(length(recipient_id) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.character(content))
  stopifnot(is.numeric(recipient_id))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "private_message",
    content = content, recipient_id = recipient_id, auth = auth
  )
}
#' Edit a private message.
#'
#' `HTTP.PUT /private_message`
#'
#' @param private_message_id A numeric value.
#' @param content A character value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-private_message_view: <list>
#'   |-private_message: <list>
#'   | |-id: A numeric value
#'   | |-creator_id: A numeric value
#'   | |-recipient_id: A numeric value
#'   | |-content: A character value
#'   | |-deleted: A logical value
#'   | |-read: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-ap_id: A character value
#'   | `-local: A logical value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   `-recipient: <list>
#'     |-id: A numeric value
#'     |-name: A character value
#'     |-display_name: (Optional) A character value
#'     |-avatar: (Optional) A character value
#'     |-banned: A logical value
#'     |-published: A character value
#'     |-updated: (Optional) A character value
#'     |-actor_id: A character value
#'     |-bio: (Optional) A character value
#'     |-local: A logical value
#'     |-banner: (Optional) A character value
#'     |-deleted: A logical value
#'     |-inbox_url: A character value
#'     |-matrix_user_id: (Optional) A character value
#'     |-admin: A logical value
#'     |-bot_account: A logical value
#'     |-ban_expires: (Optional) A character value
#'     `-instance_id: A numeric value
#' }
#'
#' @export
lemmy_edit_private_message <- function(private_message_id, content, auth, .lemmy_instance = getOption(
                                         "lemmy_instance",
                                         "https://lemmy.world"
                                       )) {
  stopifnot(length(private_message_id) == 1L)
  stopifnot(length(content) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(private_message_id))
  stopifnot(is.character(content))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "PUT", endpoint = "private_message",
    private_message_id = private_message_id, content = content,
    auth = auth
  )
}
#' Delete a private message.
#'
#' `HTTP.POST /private_message/delete`
#'
#' @param private_message_id A numeric value.
#' @param deleted A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-private_message_view: <list>
#'   |-private_message: <list>
#'   | |-id: A numeric value
#'   | |-creator_id: A numeric value
#'   | |-recipient_id: A numeric value
#'   | |-content: A character value
#'   | |-deleted: A logical value
#'   | |-read: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-ap_id: A character value
#'   | `-local: A logical value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   `-recipient: <list>
#'     |-id: A numeric value
#'     |-name: A character value
#'     |-display_name: (Optional) A character value
#'     |-avatar: (Optional) A character value
#'     |-banned: A logical value
#'     |-published: A character value
#'     |-updated: (Optional) A character value
#'     |-actor_id: A character value
#'     |-bio: (Optional) A character value
#'     |-local: A logical value
#'     |-banner: (Optional) A character value
#'     |-deleted: A logical value
#'     |-inbox_url: A character value
#'     |-matrix_user_id: (Optional) A character value
#'     |-admin: A logical value
#'     |-bot_account: A logical value
#'     |-ban_expires: (Optional) A character value
#'     `-instance_id: A numeric value
#' }
#'
#' @export
lemmy_delete_private_message <- function(private_message_id, deleted, auth, .lemmy_instance = getOption(
                                           "lemmy_instance",
                                           "https://lemmy.world"
                                         )) {
  stopifnot(length(private_message_id) == 1L)
  stopifnot(length(deleted) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(private_message_id))
  stopifnot(is.logical(deleted))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "private_message/delete",
    private_message_id = private_message_id, deleted = deleted,
    auth = auth
  )
}
#' Mark a private message as read.
#'
#' `HTTP.POST /private_message/mark_as_read`
#'
#' @param private_message_id A numeric value.
#' @param read A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-private_message_view: <list>
#'   |-private_message: <list>
#'   | |-id: A numeric value
#'   | |-creator_id: A numeric value
#'   | |-recipient_id: A numeric value
#'   | |-content: A character value
#'   | |-deleted: A logical value
#'   | |-read: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-ap_id: A character value
#'   | `-local: A logical value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   `-recipient: <list>
#'     |-id: A numeric value
#'     |-name: A character value
#'     |-display_name: (Optional) A character value
#'     |-avatar: (Optional) A character value
#'     |-banned: A logical value
#'     |-published: A character value
#'     |-updated: (Optional) A character value
#'     |-actor_id: A character value
#'     |-bio: (Optional) A character value
#'     |-local: A logical value
#'     |-banner: (Optional) A character value
#'     |-deleted: A logical value
#'     |-inbox_url: A character value
#'     |-matrix_user_id: (Optional) A character value
#'     |-admin: A logical value
#'     |-bot_account: A logical value
#'     |-ban_expires: (Optional) A character value
#'     `-instance_id: A numeric value
#' }
#'
#' @export
lemmy_mark_private_message_as_read <- function(private_message_id, read, auth, .lemmy_instance = getOption(
                                                 "lemmy_instance",
                                                 "https://lemmy.world"
                                               )) {
  stopifnot(length(private_message_id) == 1L)
  stopifnot(length(read) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(private_message_id))
  stopifnot(is.logical(read))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "private_message/mark_as_read",
    private_message_id = private_message_id, read = read,
    auth = auth
  )
}
#' Create a report for a private message.
#'
#' `HTTP.POST /private_message/report`
#'
#' @param private_message_id A numeric value.
#' @param reason A character value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-private_message_report_view: <list>
#'   |-private_message_report: <list>
#'   | |-id: A numeric value
#'   | |-creator_id: A numeric value
#'   | |-private_message_id: A numeric value
#'   | |-original_pm_text: A character value
#'   | |-reason: A character value
#'   | |-resolved: A logical value
#'   | |-resolver_id: (Optional) A numeric value
#'   | |-published: A character value
#'   | `-updated: (Optional) A character value
#'   |-private_message: <list>
#'   | |-id: A numeric value
#'   | |-creator_id: A numeric value
#'   | |-recipient_id: A numeric value
#'   | |-content: A character value
#'   | |-deleted: A logical value
#'   | |-read: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-ap_id: A character value
#'   | `-local: A logical value
#'   |-private_message_creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   `-resolver: <list>
#'     |-id: A numeric value
#'     |-name: A character value
#'     |-display_name: (Optional) A character value
#'     |-avatar: (Optional) A character value
#'     |-banned: A logical value
#'     |-published: A character value
#'     |-updated: (Optional) A character value
#'     |-actor_id: A character value
#'     |-bio: (Optional) A character value
#'     |-local: A logical value
#'     |-banner: (Optional) A character value
#'     |-deleted: A logical value
#'     |-inbox_url: A character value
#'     |-matrix_user_id: (Optional) A character value
#'     |-admin: A logical value
#'     |-bot_account: A logical value
#'     |-ban_expires: (Optional) A character value
#'     `-instance_id: A numeric value
#' }
#'
#' @export
lemmy_create_private_message_report <- function(private_message_id, reason, auth, .lemmy_instance = getOption(
                                                  "lemmy_instance",
                                                  "https://lemmy.world"
                                                )) {
  stopifnot(length(private_message_id) == 1L)
  stopifnot(length(reason) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(private_message_id))
  stopifnot(is.character(reason))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "private_message/report",
    private_message_id = private_message_id, reason = reason,
    auth = auth
  )
}
#' Resolve a report for a private message.
#'
#' `HTTP.PUT /private_message/report/resolve`
#'
#' @param report_id A numeric value.
#' @param resolved A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-private_message_report_view: <list>
#'   |-private_message_report: <list>
#'   | |-id: A numeric value
#'   | |-creator_id: A numeric value
#'   | |-private_message_id: A numeric value
#'   | |-original_pm_text: A character value
#'   | |-reason: A character value
#'   | |-resolved: A logical value
#'   | |-resolver_id: (Optional) A numeric value
#'   | |-published: A character value
#'   | `-updated: (Optional) A character value
#'   |-private_message: <list>
#'   | |-id: A numeric value
#'   | |-creator_id: A numeric value
#'   | |-recipient_id: A numeric value
#'   | |-content: A character value
#'   | |-deleted: A logical value
#'   | |-read: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-ap_id: A character value
#'   | `-local: A logical value
#'   |-private_message_creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   `-resolver: <list>
#'     |-id: A numeric value
#'     |-name: A character value
#'     |-display_name: (Optional) A character value
#'     |-avatar: (Optional) A character value
#'     |-banned: A logical value
#'     |-published: A character value
#'     |-updated: (Optional) A character value
#'     |-actor_id: A character value
#'     |-bio: (Optional) A character value
#'     |-local: A logical value
#'     |-banner: (Optional) A character value
#'     |-deleted: A logical value
#'     |-inbox_url: A character value
#'     |-matrix_user_id: (Optional) A character value
#'     |-admin: A logical value
#'     |-bot_account: A logical value
#'     |-ban_expires: (Optional) A character value
#'     `-instance_id: A numeric value
#' }
#'
#' @export
lemmy_resolve_private_message_report <- function(report_id, resolved, auth, .lemmy_instance = getOption(
                                                   "lemmy_instance",
                                                   "https://lemmy.world"
                                                 )) {
  stopifnot(length(report_id) == 1L)
  stopifnot(length(resolved) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(report_id))
  stopifnot(is.logical(resolved))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "PUT", endpoint = "private_message/report/resolve",
    report_id = report_id, resolved = resolved, auth = auth
  )
}
#' List private message reports.
#'
#' `HTTP.GET /private_message/report/list`
#'
#' @param page (Optional) A numeric value.
#' @param limit (Optional) A numeric value.
#' @param unresolved_only (Optional) A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-private_message_reports: <list>
#'   `-[Each element]: <list>
#'     |-private_message_report: <list>
#'     | |-id: A numeric value
#'     | |-creator_id: A numeric value
#'     | |-private_message_id: A numeric value
#'     | |-original_pm_text: A character value
#'     | |-reason: A character value
#'     | |-resolved: A logical value
#'     | |-resolver_id: (Optional) A numeric value
#'     | |-published: A character value
#'     | `-updated: (Optional) A character value
#'     |-private_message: <list>
#'     | |-id: A numeric value
#'     | |-creator_id: A numeric value
#'     | |-recipient_id: A numeric value
#'     | |-content: A character value
#'     | |-deleted: A logical value
#'     | |-read: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-ap_id: A character value
#'     | `-local: A logical value
#'     |-private_message_creator: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-display_name: (Optional) A character value
#'     | |-avatar: (Optional) A character value
#'     | |-banned: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-actor_id: A character value
#'     | |-bio: (Optional) A character value
#'     | |-local: A logical value
#'     | |-banner: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-inbox_url: A character value
#'     | |-matrix_user_id: (Optional) A character value
#'     | |-admin: A logical value
#'     | |-bot_account: A logical value
#'     | |-ban_expires: (Optional) A character value
#'     | `-instance_id: A numeric value
#'     |-creator: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-display_name: (Optional) A character value
#'     | |-avatar: (Optional) A character value
#'     | |-banned: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-actor_id: A character value
#'     | |-bio: (Optional) A character value
#'     | |-local: A logical value
#'     | |-banner: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-inbox_url: A character value
#'     | |-matrix_user_id: (Optional) A character value
#'     | |-admin: A logical value
#'     | |-bot_account: A logical value
#'     | |-ban_expires: (Optional) A character value
#'     | `-instance_id: A numeric value
#'     `-resolver: <list>
#'       |-id: A numeric value
#'       |-name: A character value
#'       |-display_name: (Optional) A character value
#'       |-avatar: (Optional) A character value
#'       |-banned: A logical value
#'       |-published: A character value
#'       |-updated: (Optional) A character value
#'       |-actor_id: A character value
#'       |-bio: (Optional) A character value
#'       |-local: A logical value
#'       |-banner: (Optional) A character value
#'       |-deleted: A logical value
#'       |-inbox_url: A character value
#'       |-matrix_user_id: (Optional) A character value
#'       |-admin: A logical value
#'       |-bot_account: A logical value
#'       |-ban_expires: (Optional) A character value
#'       `-instance_id: A numeric value
#' }
#'
#' @export
lemmy_list_private_message_reports <- function(
    page = NULL, limit = NULL, unresolved_only = NULL,
    auth, .lemmy_instance = getOption("lemmy_instance", "https://lemmy.world")) {
  stopifnot(length(page) <= 1L)
  stopifnot(length(limit) <= 1L)
  stopifnot(length(unresolved_only) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.null(page) || is.numeric(page))
  stopifnot(is.null(limit) || is.numeric(limit))
  stopifnot(is.null(unresolved_only) || is.logical(unresolved_only))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "private_message/report/list",
    page = page, limit = limit, unresolved_only = unresolved_only,
    auth = auth
  )
}
#' Register a new user.
#'
#' `HTTP.POST /user/register`
#'
#' @param username A character value.
#' @param password A character value.
#' @param password_verify A character value.
#' @param show_nsfw A logical value.
#' @param email (Optional) A character value.
#' @param captcha_uuid (Optional) A character value.
#' @param captcha_answer (Optional) A character value.
#' @param honeypot (Optional) A character value.
#' @param answer (Optional) A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 3:
#' \preformatted{<list>
#' |-jwt: (Optional) A character value
#' |-registration_created: A logical value
#' `-verify_email_sent: A logical value
#' }
#'
#' @export
lemmy_register <- function(
    username, password, password_verify, show_nsfw, email = NULL,
    captcha_uuid = NULL, captcha_answer = NULL, honeypot = NULL,
    answer = NULL, .lemmy_instance = getOption(
      "lemmy_instance",
      "https://lemmy.world"
    )) {
  stopifnot(length(username) == 1L)
  stopifnot(length(password) == 1L)
  stopifnot(length(password_verify) == 1L)
  stopifnot(length(show_nsfw) == 1L)
  stopifnot(length(email) <= 1L)
  stopifnot(length(captcha_uuid) <= 1L)
  stopifnot(length(captcha_answer) <= 1L)
  stopifnot(length(honeypot) <= 1L)
  stopifnot(length(answer) <= 1L)
  stopifnot(is.character(username))
  stopifnot(is.character(password))
  stopifnot(is.character(password_verify))
  stopifnot(is.logical(show_nsfw))
  stopifnot(is.null(email) || is.character(email))
  stopifnot(is.null(captcha_uuid) || is.character(captcha_uuid))
  stopifnot(is.null(captcha_answer) || is.character(captcha_answer))
  stopifnot(is.null(honeypot) || is.character(honeypot))
  stopifnot(is.null(answer) || is.character(answer))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "user/register",
    username = username, password = password, password_verify = password_verify,
    show_nsfw = show_nsfw, email = email, captcha_uuid = captcha_uuid,
    captcha_answer = captcha_answer, honeypot = honeypot,
    answer = answer
  )
}
#' Log into lemmy.
#'
#' `HTTP.POST /user/login`
#'
#' @param username_or_email A character value.
#' @param password A character value.
#' @param totp_2fa_token (Optional) A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 3:
#' \preformatted{<list>
#' |-jwt: (Optional) A character value
#' |-registration_created: A logical value
#' `-verify_email_sent: A logical value
#' }
#'
#' @export
lemmy_login <- function(
    username_or_email, password, totp_2fa_token = NULL,
    .lemmy_instance = getOption("lemmy_instance", "https://lemmy.world")) {
  stopifnot(length(username_or_email) == 1L)
  stopifnot(length(password) == 1L)
  stopifnot(length(totp_2fa_token) <= 1L)
  stopifnot(is.character(username_or_email))
  stopifnot(is.character(password))
  stopifnot(is.null(totp_2fa_token) || is.character(totp_2fa_token))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "user/login",
    username_or_email = username_or_email, password = password,
    totp_2fa_token = totp_2fa_token
  )
}
#' Get the details for a person.
#'
#' `HTTP.GET /user`
#'
#' @param person_id (Optional) A numeric value.
#' @param username (Optional) A character value.
#' @param sort (Optional) One of "Active", "Hot", "New", "Old", "TopDay", "TopWeek", "TopMonth", "TopYear", "TopAll", "MostComments", "NewComments", "TopHour", "TopSixHour", "TopTwelveHour", "TopThreeMonths", "TopSixMonths", or "TopNineMonths".
#' @param page (Optional) A numeric value.
#' @param limit (Optional) A numeric value.
#' @param community_id (Optional) A numeric value.
#' @param saved_only (Optional) A logical value.
#' @param auth (Optional) A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 4:
#' \preformatted{<list>
#' |-person_view: <list>
#' | |-person: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-display_name: (Optional) A character value
#' | | |-avatar: (Optional) A character value
#' | | |-banned: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-actor_id: A character value
#' | | |-bio: (Optional) A character value
#' | | |-local: A logical value
#' | | |-banner: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-inbox_url: A character value
#' | | |-matrix_user_id: (Optional) A character value
#' | | |-admin: A logical value
#' | | |-bot_account: A logical value
#' | | |-ban_expires: (Optional) A character value
#' | | `-instance_id: A numeric value
#' | `-counts: <list>
#' |   |-id: A numeric value
#' |   |-person_id: A numeric value
#' |   |-post_count: A numeric value
#' |   |-post_score: A numeric value
#' |   |-comment_count: A numeric value
#' |   `-comment_score: A numeric value
#' |-comments: <list>
#' | `-[Each element]: <list>
#' |   |-comment: <list>
#' |   | |-id: A numeric value
#' |   | |-creator_id: A numeric value
#' |   | |-post_id: A numeric value
#' |   | |-content: A character value
#' |   | |-removed: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-ap_id: A character value
#' |   | |-local: A logical value
#' |   | |-path: A character value
#' |   | |-distinguished: A logical value
#' |   | `-language_id: A numeric value
#' |   |-creator: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-display_name: (Optional) A character value
#' |   | |-avatar: (Optional) A character value
#' |   | |-banned: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-actor_id: A character value
#' |   | |-bio: (Optional) A character value
#' |   | |-local: A logical value
#' |   | |-banner: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-inbox_url: A character value
#' |   | |-matrix_user_id: (Optional) A character value
#' |   | |-admin: A logical value
#' |   | |-bot_account: A logical value
#' |   | |-ban_expires: (Optional) A character value
#' |   | `-instance_id: A numeric value
#' |   |-post: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-url: (Optional) A character value
#' |   | |-body: (Optional) A character value
#' |   | |-creator_id: A numeric value
#' |   | |-community_id: A numeric value
#' |   | |-removed: A logical value
#' |   | |-locked: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-nsfw: A logical value
#' |   | |-embed_title: (Optional) A character value
#' |   | |-embed_description: (Optional) A character value
#' |   | |-thumbnail_url: (Optional) A character value
#' |   | |-ap_id: A character value
#' |   | |-local: A logical value
#' |   | |-embed_video_url: (Optional) A character value
#' |   | |-language_id: A numeric value
#' |   | |-featured_community: A logical value
#' |   | `-featured_local: A logical value
#' |   |-community: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-title: A character value
#' |   | |-description: (Optional) A character value
#' |   | |-removed: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-nsfw: A logical value
#' |   | |-actor_id: A character value
#' |   | |-local: A logical value
#' |   | |-icon: (Optional) A character value
#' |   | |-banner: (Optional) A character value
#' |   | |-followers_url: A character value
#' |   | |-inbox_url: A character value
#' |   | |-hidden: A logical value
#' |   | |-posting_restricted_to_mods: A logical value
#' |   | `-instance_id: A numeric value
#' |   |-counts: <list>
#' |   | |-id: A numeric value
#' |   | |-comment_id: A numeric value
#' |   | |-score: A numeric value
#' |   | |-upvotes: A numeric value
#' |   | |-downvotes: A numeric value
#' |   | |-published: A character value
#' |   | |-child_count: A numeric value
#' |   | `-hot_rank: A numeric value
#' |   |-creator_banned_from_community: A logical value
#' |   |-subscribed: One of "Subscribed", "NotSubscri...
#' |   |-saved: A logical value
#' |   |-creator_blocked: A logical value
#' |   `-my_vote: (Optional) A numeric value
#' |-posts: <list>
#' | `-[Each element]: <list>
#' |   |-post: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-url: (Optional) A character value
#' |   | |-body: (Optional) A character value
#' |   | |-creator_id: A numeric value
#' |   | |-community_id: A numeric value
#' |   | |-removed: A logical value
#' |   | |-locked: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-nsfw: A logical value
#' |   | |-embed_title: (Optional) A character value
#' |   | |-embed_description: (Optional) A character value
#' |   | |-thumbnail_url: (Optional) A character value
#' |   | |-ap_id: A character value
#' |   | |-local: A logical value
#' |   | |-embed_video_url: (Optional) A character value
#' |   | |-language_id: A numeric value
#' |   | |-featured_community: A logical value
#' |   | `-featured_local: A logical value
#' |   |-creator: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-display_name: (Optional) A character value
#' |   | |-avatar: (Optional) A character value
#' |   | |-banned: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-actor_id: A character value
#' |   | |-bio: (Optional) A character value
#' |   | |-local: A logical value
#' |   | |-banner: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-inbox_url: A character value
#' |   | |-matrix_user_id: (Optional) A character value
#' |   | |-admin: A logical value
#' |   | |-bot_account: A logical value
#' |   | |-ban_expires: (Optional) A character value
#' |   | `-instance_id: A numeric value
#' |   |-community: <list>
#' |   | |-id: A numeric value
#' |   | |-name: A character value
#' |   | |-title: A character value
#' |   | |-description: (Optional) A character value
#' |   | |-removed: A logical value
#' |   | |-published: A character value
#' |   | |-updated: (Optional) A character value
#' |   | |-deleted: A logical value
#' |   | |-nsfw: A logical value
#' |   | |-actor_id: A character value
#' |   | |-local: A logical value
#' |   | |-icon: (Optional) A character value
#' |   | |-banner: (Optional) A character value
#' |   | |-followers_url: A character value
#' |   | |-inbox_url: A character value
#' |   | |-hidden: A logical value
#' |   | |-posting_restricted_to_mods: A logical value
#' |   | `-instance_id: A numeric value
#' |   |-creator_banned_from_community: A logical value
#' |   |-counts: <list>
#' |   | |-id: A numeric value
#' |   | |-post_id: A numeric value
#' |   | |-comments: A numeric value
#' |   | |-score: A numeric value
#' |   | |-upvotes: A numeric value
#' |   | |-downvotes: A numeric value
#' |   | |-published: A character value
#' |   | |-newest_comment_time_necro: A character value
#' |   | |-newest_comment_time: A character value
#' |   | |-featured_community: A logical value
#' |   | |-featured_local: A logical value
#' |   | |-hot_rank: A numeric value
#' |   | `-hot_rank_active: A numeric value
#' |   |-subscribed: One of "Subscribed", "NotSubscri...
#' |   |-saved: A logical value
#' |   |-read: A logical value
#' |   |-creator_blocked: A logical value
#' |   |-my_vote: (Optional) A numeric value
#' |   `-unread_comments: A numeric value
#' `-moderates: <list>
#'   `-[Each element]: <list>
#'     |-community: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-title: A character value
#'     | |-description: (Optional) A character value
#'     | |-removed: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-nsfw: A logical value
#'     | |-actor_id: A character value
#'     | |-local: A logical value
#'     | |-icon: (Optional) A character value
#'     | |-banner: (Optional) A character value
#'     | |-followers_url: A character value
#'     | |-inbox_url: A character value
#'     | |-hidden: A logical value
#'     | |-posting_restricted_to_mods: A logical value
#'     | `-instance_id: A numeric value
#'     `-moderator: <list>
#'       |-id: A numeric value
#'       |-name: A character value
#'       |-display_name: (Optional) A character value
#'       |-avatar: (Optional) A character value
#'       |-banned: A logical value
#'       |-published: A character value
#'       |-updated: (Optional) A character value
#'       |-actor_id: A character value
#'       |-bio: (Optional) A character value
#'       |-local: A logical value
#'       |-banner: (Optional) A character value
#'       |-deleted: A logical value
#'       |-inbox_url: A character value
#'       |-matrix_user_id: (Optional) A character value
#'       |-admin: A logical value
#'       |-bot_account: A logical value
#'       |-ban_expires: (Optional) A character value
#'       `-instance_id: A numeric value
#' }
#'
#' @examplesIf remmy:::is_lemmy_world()
#' person_data <- lemmy_get_person_details(username = "ruud")
#'
#' person_data$person_view$person$bio
#'
#' sapply(person_data$moderates, function(x) x$community$name)
#'
#' @export
lemmy_get_person_details <- function(
    person_id = NULL, username = NULL, sort = NULL, page = NULL,
    limit = NULL, community_id = NULL, saved_only = NULL, auth = NULL,
    .lemmy_instance = getOption("lemmy_instance", "https://lemmy.world")) {
  stopifnot(length(person_id) <= 1L)
  stopifnot(length(username) <= 1L)
  stopifnot(length(sort) <= 1L)
  stopifnot(length(page) <= 1L)
  stopifnot(length(limit) <= 1L)
  stopifnot(length(community_id) <= 1L)
  stopifnot(length(saved_only) <= 1L)
  stopifnot(length(auth) <= 1L)
  stopifnot(is.null(person_id) || is.numeric(person_id))
  stopifnot(is.null(username) || is.character(username))
  stopifnot(is.null(page) || is.numeric(page))
  stopifnot(is.null(limit) || is.numeric(limit))
  stopifnot(is.null(community_id) || is.numeric(community_id))
  stopifnot(is.null(saved_only) || is.logical(saved_only))
  stopifnot(is.null(auth) || is.character(auth))
  stopifnot(is.null(sort) || sort %in% c(
    "Active", "Hot", "New",
    "Old", "TopDay", "TopWeek", "TopMonth", "TopYear", "TopAll",
    "MostComments", "NewComments", "TopHour", "TopSixHour", "TopTwelveHour",
    "TopThreeMonths", "TopSixMonths", "TopNineMonths"
  ))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "user",
    person_id = person_id, username = username, sort = sort,
    page = page, limit = limit, community_id = community_id,
    saved_only = saved_only, auth = auth
  )
}
#' Get mentions for your user.
#'
#' `HTTP.GET /user/mention`
#'
#' @param sort (Optional) One of "Hot", "New", "Old", or "Top".
#' @param page (Optional) A numeric value.
#' @param limit (Optional) A numeric value.
#' @param unread_only (Optional) A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-mentions: <list>
#'   `-[Each element]: <list>
#'     |-person_mention: <list>
#'     | |-id: A numeric value
#'     | |-recipient_id: A numeric value
#'     | |-comment_id: A numeric value
#'     | |-read: A logical value
#'     | `-published: A character value
#'     |-comment: <list>
#'     | |-id: A numeric value
#'     | |-creator_id: A numeric value
#'     | |-post_id: A numeric value
#'     | |-content: A character value
#'     | |-removed: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-ap_id: A character value
#'     | |-local: A logical value
#'     | |-path: A character value
#'     | |-distinguished: A logical value
#'     | `-language_id: A numeric value
#'     |-creator: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-display_name: (Optional) A character value
#'     | |-avatar: (Optional) A character value
#'     | |-banned: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-actor_id: A character value
#'     | |-bio: (Optional) A character value
#'     | |-local: A logical value
#'     | |-banner: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-inbox_url: A character value
#'     | |-matrix_user_id: (Optional) A character value
#'     | |-admin: A logical value
#'     | |-bot_account: A logical value
#'     | |-ban_expires: (Optional) A character value
#'     | `-instance_id: A numeric value
#'     |-post: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-url: (Optional) A character value
#'     | |-body: (Optional) A character value
#'     | |-creator_id: A numeric value
#'     | |-community_id: A numeric value
#'     | |-removed: A logical value
#'     | |-locked: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-nsfw: A logical value
#'     | |-embed_title: (Optional) A character value
#'     | |-embed_description: (Optional) A character value
#'     | |-thumbnail_url: (Optional) A character value
#'     | |-ap_id: A character value
#'     | |-local: A logical value
#'     | |-embed_video_url: (Optional) A character value
#'     | |-language_id: A numeric value
#'     | |-featured_community: A logical value
#'     | `-featured_local: A logical value
#'     |-community: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-title: A character value
#'     | |-description: (Optional) A character value
#'     | |-removed: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-nsfw: A logical value
#'     | |-actor_id: A character value
#'     | |-local: A logical value
#'     | |-icon: (Optional) A character value
#'     | |-banner: (Optional) A character value
#'     | |-followers_url: A character value
#'     | |-inbox_url: A character value
#'     | |-hidden: A logical value
#'     | |-posting_restricted_to_mods: A logical value
#'     | `-instance_id: A numeric value
#'     |-recipient: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-display_name: (Optional) A character value
#'     | |-avatar: (Optional) A character value
#'     | |-banned: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-actor_id: A character value
#'     | |-bio: (Optional) A character value
#'     | |-local: A logical value
#'     | |-banner: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-inbox_url: A character value
#'     | |-matrix_user_id: (Optional) A character value
#'     | |-admin: A logical value
#'     | |-bot_account: A logical value
#'     | |-ban_expires: (Optional) A character value
#'     | `-instance_id: A numeric value
#'     |-counts: <list>
#'     | |-id: A numeric value
#'     | |-comment_id: A numeric value
#'     | |-score: A numeric value
#'     | |-upvotes: A numeric value
#'     | |-downvotes: A numeric value
#'     | |-published: A character value
#'     | |-child_count: A numeric value
#'     | `-hot_rank: A numeric value
#'     |-creator_banned_from_community: A logical value
#'     |-subscribed: One of "Subscribed", "NotSubscri...
#'     |-saved: A logical value
#'     |-creator_blocked: A logical value
#'     `-my_vote: (Optional) A numeric value
#' }
#'
#' @export
lemmy_get_person_mentions <- function(
    sort = NULL, page = NULL, limit = NULL, unread_only = NULL,
    auth, .lemmy_instance = getOption("lemmy_instance", "https://lemmy.world")) {
  stopifnot(length(sort) <= 1L)
  stopifnot(length(page) <= 1L)
  stopifnot(length(limit) <= 1L)
  stopifnot(length(unread_only) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.null(page) || is.numeric(page))
  stopifnot(is.null(limit) || is.numeric(limit))
  stopifnot(is.null(unread_only) || is.logical(unread_only))
  stopifnot(is.character(auth))
  stopifnot(is.null(sort) || sort %in% c(
    "Hot", "New", "Old",
    "Top"
  ))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "user/mention",
    sort = sort, page = page, limit = limit, unread_only = unread_only,
    auth = auth
  )
}
#' Mark a person mention as read.
#'
#' `HTTP.POST /user/mention/mark_as_read`
#'
#' @param person_mention_id A numeric value.
#' @param read A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-person_mention_view: <list>
#'   |-person_mention: <list>
#'   | |-id: A numeric value
#'   | |-recipient_id: A numeric value
#'   | |-comment_id: A numeric value
#'   | |-read: A logical value
#'   | `-published: A character value
#'   |-comment: <list>
#'   | |-id: A numeric value
#'   | |-creator_id: A numeric value
#'   | |-post_id: A numeric value
#'   | |-content: A character value
#'   | |-removed: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-ap_id: A character value
#'   | |-local: A logical value
#'   | |-path: A character value
#'   | |-distinguished: A logical value
#'   | `-language_id: A numeric value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-post: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-url: (Optional) A character value
#'   | |-body: (Optional) A character value
#'   | |-creator_id: A numeric value
#'   | |-community_id: A numeric value
#'   | |-removed: A logical value
#'   | |-locked: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-embed_title: (Optional) A character value
#'   | |-embed_description: (Optional) A character value
#'   | |-thumbnail_url: (Optional) A character value
#'   | |-ap_id: A character value
#'   | |-local: A logical value
#'   | |-embed_video_url: (Optional) A character value
#'   | |-language_id: A numeric value
#'   | |-featured_community: A logical value
#'   | `-featured_local: A logical value
#'   |-community: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-title: A character value
#'   | |-description: (Optional) A character value
#'   | |-removed: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-nsfw: A logical value
#'   | |-actor_id: A character value
#'   | |-local: A logical value
#'   | |-icon: (Optional) A character value
#'   | |-banner: (Optional) A character value
#'   | |-followers_url: A character value
#'   | |-inbox_url: A character value
#'   | |-hidden: A logical value
#'   | |-posting_restricted_to_mods: A logical value
#'   | `-instance_id: A numeric value
#'   |-recipient: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   |-counts: <list>
#'   | |-id: A numeric value
#'   | |-comment_id: A numeric value
#'   | |-score: A numeric value
#'   | |-upvotes: A numeric value
#'   | |-downvotes: A numeric value
#'   | |-published: A character value
#'   | |-child_count: A numeric value
#'   | `-hot_rank: A numeric value
#'   |-creator_banned_from_community: A logical value
#'   |-subscribed: One of "Subscribed", "NotSubscri...
#'   |-saved: A logical value
#'   |-creator_blocked: A logical value
#'   `-my_vote: (Optional) A numeric value
#' }
#'
#' @export
lemmy_mark_person_mention_as_read <- function(person_mention_id, read, auth, .lemmy_instance = getOption(
                                                "lemmy_instance",
                                                "https://lemmy.world"
                                              )) {
  stopifnot(length(person_mention_id) == 1L)
  stopifnot(length(read) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(person_mention_id))
  stopifnot(is.logical(read))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "user/mention/mark_as_read",
    person_mention_id = person_mention_id, read = read, auth = auth
  )
}
#' Get comment replies.
#'
#' `HTTP.GET /user/replies`
#'
#' @param sort (Optional) One of "Hot", "New", "Old", or "Top".
#' @param page (Optional) A numeric value.
#' @param limit (Optional) A numeric value.
#' @param unread_only (Optional) A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-replies: <list>
#'   `-[Each element]: <list>
#'     |-comment_reply: <list>
#'     | |-id: A numeric value
#'     | |-recipient_id: A numeric value
#'     | |-comment_id: A numeric value
#'     | |-read: A logical value
#'     | `-published: A character value
#'     |-comment: <list>
#'     | |-id: A numeric value
#'     | |-creator_id: A numeric value
#'     | |-post_id: A numeric value
#'     | |-content: A character value
#'     | |-removed: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-ap_id: A character value
#'     | |-local: A logical value
#'     | |-path: A character value
#'     | |-distinguished: A logical value
#'     | `-language_id: A numeric value
#'     |-creator: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-display_name: (Optional) A character value
#'     | |-avatar: (Optional) A character value
#'     | |-banned: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-actor_id: A character value
#'     | |-bio: (Optional) A character value
#'     | |-local: A logical value
#'     | |-banner: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-inbox_url: A character value
#'     | |-matrix_user_id: (Optional) A character value
#'     | |-admin: A logical value
#'     | |-bot_account: A logical value
#'     | |-ban_expires: (Optional) A character value
#'     | `-instance_id: A numeric value
#'     |-post: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-url: (Optional) A character value
#'     | |-body: (Optional) A character value
#'     | |-creator_id: A numeric value
#'     | |-community_id: A numeric value
#'     | |-removed: A logical value
#'     | |-locked: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-nsfw: A logical value
#'     | |-embed_title: (Optional) A character value
#'     | |-embed_description: (Optional) A character value
#'     | |-thumbnail_url: (Optional) A character value
#'     | |-ap_id: A character value
#'     | |-local: A logical value
#'     | |-embed_video_url: (Optional) A character value
#'     | |-language_id: A numeric value
#'     | |-featured_community: A logical value
#'     | `-featured_local: A logical value
#'     |-community: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-title: A character value
#'     | |-description: (Optional) A character value
#'     | |-removed: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-nsfw: A logical value
#'     | |-actor_id: A character value
#'     | |-local: A logical value
#'     | |-icon: (Optional) A character value
#'     | |-banner: (Optional) A character value
#'     | |-followers_url: A character value
#'     | |-inbox_url: A character value
#'     | |-hidden: A logical value
#'     | |-posting_restricted_to_mods: A logical value
#'     | `-instance_id: A numeric value
#'     |-recipient: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-display_name: (Optional) A character value
#'     | |-avatar: (Optional) A character value
#'     | |-banned: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-actor_id: A character value
#'     | |-bio: (Optional) A character value
#'     | |-local: A logical value
#'     | |-banner: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-inbox_url: A character value
#'     | |-matrix_user_id: (Optional) A character value
#'     | |-admin: A logical value
#'     | |-bot_account: A logical value
#'     | |-ban_expires: (Optional) A character value
#'     | `-instance_id: A numeric value
#'     |-counts: <list>
#'     | |-id: A numeric value
#'     | |-comment_id: A numeric value
#'     | |-score: A numeric value
#'     | |-upvotes: A numeric value
#'     | |-downvotes: A numeric value
#'     | |-published: A character value
#'     | |-child_count: A numeric value
#'     | `-hot_rank: A numeric value
#'     |-creator_banned_from_community: A logical value
#'     |-subscribed: One of "Subscribed", "NotSubscri...
#'     |-saved: A logical value
#'     |-creator_blocked: A logical value
#'     `-my_vote: (Optional) A numeric value
#' }
#'
#' @export
lemmy_get_replies <- function(
    sort = NULL, page = NULL, limit = NULL, unread_only = NULL,
    auth, .lemmy_instance = getOption("lemmy_instance", "https://lemmy.world")) {
  stopifnot(length(sort) <= 1L)
  stopifnot(length(page) <= 1L)
  stopifnot(length(limit) <= 1L)
  stopifnot(length(unread_only) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.null(page) || is.numeric(page))
  stopifnot(is.null(limit) || is.numeric(limit))
  stopifnot(is.null(unread_only) || is.logical(unread_only))
  stopifnot(is.character(auth))
  stopifnot(is.null(sort) || sort %in% c(
    "Hot", "New", "Old",
    "Top"
  ))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "user/replies",
    sort = sort, page = page, limit = limit, unread_only = unread_only,
    auth = auth
  )
}
#' Ban a person from your site.
#'
#' `HTTP.POST /user/ban`
#'
#' @param person_id A numeric value.
#' @param ban A logical value.
#' @param remove_data (Optional) A logical value.
#' @param reason (Optional) A character value.
#' @param expires (Optional) A numeric value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 2:
#' \preformatted{<list>
#' |-person_view: <list>
#' | |-person: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-display_name: (Optional) A character value
#' | | |-avatar: (Optional) A character value
#' | | |-banned: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-actor_id: A character value
#' | | |-bio: (Optional) A character value
#' | | |-local: A logical value
#' | | |-banner: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-inbox_url: A character value
#' | | |-matrix_user_id: (Optional) A character value
#' | | |-admin: A logical value
#' | | |-bot_account: A logical value
#' | | |-ban_expires: (Optional) A character value
#' | | `-instance_id: A numeric value
#' | `-counts: <list>
#' |   |-id: A numeric value
#' |   |-person_id: A numeric value
#' |   |-post_count: A numeric value
#' |   |-post_score: A numeric value
#' |   |-comment_count: A numeric value
#' |   `-comment_score: A numeric value
#' `-banned: A logical value
#' }
#'
#' @export
lemmy_ban_person <- function(
    person_id, ban, remove_data = NULL, reason = NULL,
    expires = NULL, auth, .lemmy_instance = getOption(
      "lemmy_instance",
      "https://lemmy.world"
    )) {
  stopifnot(length(person_id) == 1L)
  stopifnot(length(ban) == 1L)
  stopifnot(length(remove_data) <= 1L)
  stopifnot(length(reason) <= 1L)
  stopifnot(length(expires) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(person_id))
  stopifnot(is.logical(ban))
  stopifnot(is.null(remove_data) || is.logical(remove_data))
  stopifnot(is.null(reason) || is.character(reason))
  stopifnot(is.null(expires) || is.numeric(expires))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "user/ban",
    person_id = person_id, ban = ban, remove_data = remove_data,
    reason = reason, expires = expires, auth = auth
  )
}
#' Get a list of banned users
#'
#' `HTTP.GET /user/banned`
#'
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-banned: <list>
#'   `-[Each element]: <list>
#'     |-person: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-display_name: (Optional) A character value
#'     | |-avatar: (Optional) A character value
#'     | |-banned: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-actor_id: A character value
#'     | |-bio: (Optional) A character value
#'     | |-local: A logical value
#'     | |-banner: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-inbox_url: A character value
#'     | |-matrix_user_id: (Optional) A character value
#'     | |-admin: A logical value
#'     | |-bot_account: A logical value
#'     | |-ban_expires: (Optional) A character value
#'     | `-instance_id: A numeric value
#'     `-counts: <list>
#'       |-id: A numeric value
#'       |-person_id: A numeric value
#'       |-post_count: A numeric value
#'       |-post_score: A numeric value
#'       |-comment_count: A numeric value
#'       `-comment_score: A numeric value
#' }
#'
#' @export
lemmy_get_banned_persons <- function(auth, .lemmy_instance = getOption(
                                       "lemmy_instance",
                                       "https://lemmy.world"
                                     )) {
  stopifnot(length(auth) == 1L)
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "user/banned",
    auth = auth
  )
}
#' Block a person.
#'
#' `HTTP.POST /user/block`
#'
#' @param person_id A numeric value.
#' @param block A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 2:
#' \preformatted{<list>
#' |-person_view: <list>
#' | |-person: <list>
#' | | |-id: A numeric value
#' | | |-name: A character value
#' | | |-display_name: (Optional) A character value
#' | | |-avatar: (Optional) A character value
#' | | |-banned: A logical value
#' | | |-published: A character value
#' | | |-updated: (Optional) A character value
#' | | |-actor_id: A character value
#' | | |-bio: (Optional) A character value
#' | | |-local: A logical value
#' | | |-banner: (Optional) A character value
#' | | |-deleted: A logical value
#' | | |-inbox_url: A character value
#' | | |-matrix_user_id: (Optional) A character value
#' | | |-admin: A logical value
#' | | |-bot_account: A logical value
#' | | |-ban_expires: (Optional) A character value
#' | | `-instance_id: A numeric value
#' | `-counts: <list>
#' |   |-id: A numeric value
#' |   |-person_id: A numeric value
#' |   |-post_count: A numeric value
#' |   |-post_score: A numeric value
#' |   |-comment_count: A numeric value
#' |   `-comment_score: A numeric value
#' `-blocked: A logical value
#' }
#'
#' @export
lemmy_block_person <- function(person_id, block, auth, .lemmy_instance = getOption(
                                 "lemmy_instance",
                                 "https://lemmy.world"
                               )) {
  stopifnot(length(person_id) == 1L)
  stopifnot(length(block) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(person_id))
  stopifnot(is.logical(block))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "user/block",
    person_id = person_id, block = block, auth = auth
  )
}
#' Fetch a Captcha.
#'
#' `HTTP.GET /user/get_captcha`
#'
#' @param auth (Optional) A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-ok: <list>
#'   |-png: A character value
#'   |-wav: A character value
#'   `-uuid: A character value
#' }
#'
#' @export
lemmy_get_captcha <- function(auth = NULL, .lemmy_instance = getOption(
                                "lemmy_instance",
                                "https://lemmy.world"
                              )) {
  stopifnot(length(auth) <= 1L)
  stopifnot(is.null(auth) || is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "user/get_captcha",
    auth = auth
  )
}
#' Delete your account.
#'
#' `HTTP.POST /user/delete_account`
#'
#' @param password A character value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 0:
#' \preformatted{<list>

#' }
#'
#' @export
lemmy_delete_account <- function(password, auth, .lemmy_instance = getOption(
                                   "lemmy_instance",
                                   "https://lemmy.world"
                                 )) {
  stopifnot(length(password) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.character(password))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "user/delete_account",
    password = password, auth = auth
  )
}
#' Reset your password.
#'
#' `HTTP.POST /user/password_reset`
#'
#' @param email A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 0:
#' \preformatted{<list>

#' }
#'
#' @export
lemmy_password_reset <- function(email, .lemmy_instance = getOption(
                                   "lemmy_instance",
                                   "https://lemmy.world"
                                 )) {
  stopifnot(length(email) == 1L)
  stopifnot(is.character(email))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "user/password_reset",
    email = email
  )
}
#' Change your password from an email / token based reset.
#'
#' `HTTP.POST /user/password_change`
#'
#' @param token A character value.
#' @param password A character value.
#' @param password_verify A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 3:
#' \preformatted{<list>
#' |-jwt: (Optional) A character value
#' |-registration_created: A logical value
#' `-verify_email_sent: A logical value
#' }
#'
#' @export
lemmy_password_change_after_reset <- function(token, password, password_verify, .lemmy_instance = getOption(
                                                "lemmy_instance",
                                                "https://lemmy.world"
                                              )) {
  stopifnot(length(token) == 1L)
  stopifnot(length(password) == 1L)
  stopifnot(length(password_verify) == 1L)
  stopifnot(is.character(token))
  stopifnot(is.character(password))
  stopifnot(is.character(password_verify))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "user/password_change",
    token = token, password = password, password_verify = password_verify
  )
}
#' Mark all replies as read.
#'
#' `HTTP.POST /user/mark_all_as_read`
#'
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-replies: <list>
#'   `-[Each element]: <list>
#'     |-comment_reply: <list>
#'     | |-id: A numeric value
#'     | |-recipient_id: A numeric value
#'     | |-comment_id: A numeric value
#'     | |-read: A logical value
#'     | `-published: A character value
#'     |-comment: <list>
#'     | |-id: A numeric value
#'     | |-creator_id: A numeric value
#'     | |-post_id: A numeric value
#'     | |-content: A character value
#'     | |-removed: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-ap_id: A character value
#'     | |-local: A logical value
#'     | |-path: A character value
#'     | |-distinguished: A logical value
#'     | `-language_id: A numeric value
#'     |-creator: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-display_name: (Optional) A character value
#'     | |-avatar: (Optional) A character value
#'     | |-banned: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-actor_id: A character value
#'     | |-bio: (Optional) A character value
#'     | |-local: A logical value
#'     | |-banner: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-inbox_url: A character value
#'     | |-matrix_user_id: (Optional) A character value
#'     | |-admin: A logical value
#'     | |-bot_account: A logical value
#'     | |-ban_expires: (Optional) A character value
#'     | `-instance_id: A numeric value
#'     |-post: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-url: (Optional) A character value
#'     | |-body: (Optional) A character value
#'     | |-creator_id: A numeric value
#'     | |-community_id: A numeric value
#'     | |-removed: A logical value
#'     | |-locked: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-nsfw: A logical value
#'     | |-embed_title: (Optional) A character value
#'     | |-embed_description: (Optional) A character value
#'     | |-thumbnail_url: (Optional) A character value
#'     | |-ap_id: A character value
#'     | |-local: A logical value
#'     | |-embed_video_url: (Optional) A character value
#'     | |-language_id: A numeric value
#'     | |-featured_community: A logical value
#'     | `-featured_local: A logical value
#'     |-community: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-title: A character value
#'     | |-description: (Optional) A character value
#'     | |-removed: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-nsfw: A logical value
#'     | |-actor_id: A character value
#'     | |-local: A logical value
#'     | |-icon: (Optional) A character value
#'     | |-banner: (Optional) A character value
#'     | |-followers_url: A character value
#'     | |-inbox_url: A character value
#'     | |-hidden: A logical value
#'     | |-posting_restricted_to_mods: A logical value
#'     | `-instance_id: A numeric value
#'     |-recipient: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-display_name: (Optional) A character value
#'     | |-avatar: (Optional) A character value
#'     | |-banned: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-actor_id: A character value
#'     | |-bio: (Optional) A character value
#'     | |-local: A logical value
#'     | |-banner: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-inbox_url: A character value
#'     | |-matrix_user_id: (Optional) A character value
#'     | |-admin: A logical value
#'     | |-bot_account: A logical value
#'     | |-ban_expires: (Optional) A character value
#'     | `-instance_id: A numeric value
#'     |-counts: <list>
#'     | |-id: A numeric value
#'     | |-comment_id: A numeric value
#'     | |-score: A numeric value
#'     | |-upvotes: A numeric value
#'     | |-downvotes: A numeric value
#'     | |-published: A character value
#'     | |-child_count: A numeric value
#'     | `-hot_rank: A numeric value
#'     |-creator_banned_from_community: A logical value
#'     |-subscribed: One of "Subscribed", "NotSubscri...
#'     |-saved: A logical value
#'     |-creator_blocked: A logical value
#'     `-my_vote: (Optional) A numeric value
#' }
#'
#' @export
lemmy_mark_all_as_read <- function(auth, .lemmy_instance = getOption(
                                     "lemmy_instance",
                                     "https://lemmy.world"
                                   )) {
  stopifnot(length(auth) == 1L)
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "user/mark_all_as_read",
    auth = auth
  )
}
#' Save your user settings.
#'
#' `HTTP.PUT /user/save_user_settings`
#'
#' @param show_nsfw (Optional) A logical value.
#' @param show_scores (Optional) A logical value.
#' @param theme (Optional) A character value.
#' @param default_sort_type (Optional) One of "Active", "Hot", "New", "Old", "TopDay", "TopWeek", "TopMonth", "TopYear", "TopAll", "MostComments", "NewComments", "TopHour", "TopSixHour", "TopTwelveHour", "TopThreeMonths", "TopSixMonths", or "TopNineMonths".
#' @param default_listing_type (Optional) One of "All", "Local", or "Subscribed".
#' @param interface_language (Optional) A character value.
#' @param avatar (Optional) A character value.
#' @param banner (Optional) A character value.
#' @param display_name (Optional) A character value.
#' @param email (Optional) A character value.
#' @param bio (Optional) A character value.
#' @param matrix_user_id (Optional) A character value.
#' @param show_avatars (Optional) A logical value.
#' @param send_notifications_to_email (Optional) A logical value.
#' @param bot_account (Optional) A logical value.
#' @param show_bot_accounts (Optional) A logical value.
#' @param show_read_posts (Optional) A logical value.
#' @param show_new_post_notifs (Optional) A logical value.
#' @param discussion_languages (Optional) A numeric vector.
#' @param generate_totp_2fa (Optional) A logical value.
#' @param auth A character value.
#' @param open_links_in_new_tab (Optional) A logical value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 3:
#' \preformatted{<list>
#' |-jwt: (Optional) A character value
#' |-registration_created: A logical value
#' `-verify_email_sent: A logical value
#' }
#'
#' @export
lemmy_save_user_settings <- function(
    show_nsfw = NULL, show_scores = NULL, theme = NULL,
    default_sort_type = NULL, default_listing_type = NULL, interface_language = NULL,
    avatar = NULL, banner = NULL, display_name = NULL, email = NULL,
    bio = NULL, matrix_user_id = NULL, show_avatars = NULL, send_notifications_to_email = NULL,
    bot_account = NULL, show_bot_accounts = NULL, show_read_posts = NULL,
    show_new_post_notifs = NULL, discussion_languages = NULL,
    generate_totp_2fa = NULL, auth, open_links_in_new_tab = NULL,
    .lemmy_instance = getOption("lemmy_instance", "https://lemmy.world")) {
  stopifnot(length(show_nsfw) <= 1L)
  stopifnot(length(show_scores) <= 1L)
  stopifnot(length(theme) <= 1L)
  stopifnot(length(default_sort_type) <= 1L)
  stopifnot(length(default_listing_type) <= 1L)
  stopifnot(length(interface_language) <= 1L)
  stopifnot(length(avatar) <= 1L)
  stopifnot(length(banner) <= 1L)
  stopifnot(length(display_name) <= 1L)
  stopifnot(length(email) <= 1L)
  stopifnot(length(bio) <= 1L)
  stopifnot(length(matrix_user_id) <= 1L)
  stopifnot(length(show_avatars) <= 1L)
  stopifnot(length(send_notifications_to_email) <= 1L)
  stopifnot(length(bot_account) <= 1L)
  stopifnot(length(show_bot_accounts) <= 1L)
  stopifnot(length(show_read_posts) <= 1L)
  stopifnot(length(show_new_post_notifs) <= 1L)
  stopifnot(length(generate_totp_2fa) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(length(open_links_in_new_tab) <= 1L)
  stopifnot(is.null(show_nsfw) || is.logical(show_nsfw))
  stopifnot(is.null(show_scores) || is.logical(show_scores))
  stopifnot(is.null(theme) || is.character(theme))
  stopifnot(is.null(interface_language) || is.character(interface_language))
  stopifnot(is.null(avatar) || is.character(avatar))
  stopifnot(is.null(banner) || is.character(banner))
  stopifnot(is.null(display_name) || is.character(display_name))
  stopifnot(is.null(email) || is.character(email))
  stopifnot(is.null(bio) || is.character(bio))
  stopifnot(is.null(matrix_user_id) || is.character(matrix_user_id))
  stopifnot(is.null(show_avatars) || is.logical(show_avatars))
  stopifnot(is.null(send_notifications_to_email) || is.logical(send_notifications_to_email))
  stopifnot(is.null(bot_account) || is.logical(bot_account))
  stopifnot(is.null(show_bot_accounts) || is.logical(show_bot_accounts))
  stopifnot(is.null(show_read_posts) || is.logical(show_read_posts))
  stopifnot(is.null(show_new_post_notifs) || is.logical(show_new_post_notifs))
  stopifnot(is.null(discussion_languages) || is.numeric(discussion_languages))
  stopifnot(is.null(generate_totp_2fa) || is.logical(generate_totp_2fa))
  stopifnot(is.character(auth))
  stopifnot(is.null(open_links_in_new_tab) || is.logical(open_links_in_new_tab))
  stopifnot(is.null(default_sort_type) || default_sort_type %in%
    c(
      "Active", "Hot", "New", "Old", "TopDay", "TopWeek",
      "TopMonth", "TopYear", "TopAll", "MostComments", "NewComments",
      "TopHour", "TopSixHour", "TopTwelveHour", "TopThreeMonths",
      "TopSixMonths", "TopNineMonths"
    ))
  stopifnot(is.null(default_listing_type) || default_listing_type %in%
    c("All", "Local", "Subscribed"))
  wrapper(
    base_url = .lemmy_instance, req_type = "PUT", endpoint = "user/save_user_settings",
    show_nsfw = show_nsfw, show_scores = show_scores, theme = theme,
    default_sort_type = default_sort_type, default_listing_type = default_listing_type,
    interface_language = interface_language, avatar = avatar,
    banner = banner, display_name = display_name, email = email,
    bio = bio, matrix_user_id = matrix_user_id, show_avatars = show_avatars,
    send_notifications_to_email = send_notifications_to_email,
    bot_account = bot_account, show_bot_accounts = show_bot_accounts,
    show_read_posts = show_read_posts, show_new_post_notifs = show_new_post_notifs,
    discussion_languages = discussion_languages, generate_totp_2fa = generate_totp_2fa,
    auth = auth, open_links_in_new_tab = open_links_in_new_tab
  )
}
#' Change your user password.
#'
#' `HTTP.PUT /user/change_password`
#'
#' @param new_password A character value.
#' @param new_password_verify A character value.
#' @param old_password A character value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 3:
#' \preformatted{<list>
#' |-jwt: (Optional) A character value
#' |-registration_created: A logical value
#' `-verify_email_sent: A logical value
#' }
#'
#' @export
lemmy_change_password <- function(
    new_password, new_password_verify, old_password, auth,
    .lemmy_instance = getOption("lemmy_instance", "https://lemmy.world")) {
  stopifnot(length(new_password) == 1L)
  stopifnot(length(new_password_verify) == 1L)
  stopifnot(length(old_password) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.character(new_password))
  stopifnot(is.character(new_password_verify))
  stopifnot(is.character(old_password))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "PUT", endpoint = "user/change_password",
    new_password = new_password, new_password_verify = new_password_verify,
    old_password = old_password, auth = auth
  )
}
#' Get counts for your reports
#'
#' `HTTP.GET /user/report_count`
#'
#' @param community_id (Optional) A numeric value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 4:
#' \preformatted{<list>
#' |-community_id: (Optional) A numeric value
#' |-comment_reports: A numeric value
#' |-post_reports: A numeric value
#' `-private_message_reports: (Optional) A numeric value
#' }
#'
#' @export
lemmy_get_report_count <- function(community_id = NULL, auth, .lemmy_instance = getOption(
                                     "lemmy_instance",
                                     "https://lemmy.world"
                                   )) {
  stopifnot(length(community_id) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.null(community_id) || is.numeric(community_id))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "user/report_count",
    community_id = community_id, auth = auth
  )
}
#' Get your unread counts
#'
#' `HTTP.GET /user/unread_count`
#'
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 3:
#' \preformatted{<list>
#' |-replies: A numeric value
#' |-mentions: A numeric value
#' `-private_messages: A numeric value
#' }
#'
#' @export
lemmy_get_unread_count <- function(auth, .lemmy_instance = getOption(
                                     "lemmy_instance",
                                     "https://lemmy.world"
                                   )) {
  stopifnot(length(auth) == 1L)
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "user/unread_count",
    auth = auth
  )
}
#' Verify your email
#'
#' `HTTP.POST /user/verify_email`
#'
#' @param token A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 0:
#' \preformatted{<list>

#' }
#'
#' @export
lemmy_verify_email <- function(token, .lemmy_instance = getOption(
                                 "lemmy_instance",
                                 "https://lemmy.world"
                               )) {
  stopifnot(length(token) == 1L)
  stopifnot(is.character(token))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "user/verify_email",
    token = token
  )
}
#' Add an admin to your site.
#'
#' `HTTP.POST /admin/add`
#'
#' @param person_id A numeric value.
#' @param added A logical value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-admins: <list>
#'   `-[Each element]: <list>
#'     |-person: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-display_name: (Optional) A character value
#'     | |-avatar: (Optional) A character value
#'     | |-banned: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-actor_id: A character value
#'     | |-bio: (Optional) A character value
#'     | |-local: A logical value
#'     | |-banner: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-inbox_url: A character value
#'     | |-matrix_user_id: (Optional) A character value
#'     | |-admin: A logical value
#'     | |-bot_account: A logical value
#'     | |-ban_expires: (Optional) A character value
#'     | `-instance_id: A numeric value
#'     `-counts: <list>
#'       |-id: A numeric value
#'       |-person_id: A numeric value
#'       |-post_count: A numeric value
#'       |-post_score: A numeric value
#'       |-comment_count: A numeric value
#'       `-comment_score: A numeric value
#' }
#'
#' @export
lemmy_add_admin <- function(person_id, added, auth, .lemmy_instance = getOption(
                              "lemmy_instance",
                              "https://lemmy.world"
                            )) {
  stopifnot(length(person_id) == 1L)
  stopifnot(length(added) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(person_id))
  stopifnot(is.logical(added))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "admin/add",
    person_id = person_id, added = added, auth = auth
  )
}
#' Get the unread registration applications count.
#'
#' `HTTP.GET /admin/registration_application/count`
#'
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-registration_applications: A numeric value
#' }
#'
#' @export
lemmy_get_unread_registration_application_count <- function(auth, .lemmy_instance = getOption(
                                                              "lemmy_instance",
                                                              "https://lemmy.world"
                                                            )) {
  stopifnot(length(auth) == 1L)
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "admin/registration_application/count",
    auth = auth
  )
}
#' List the registration applications.
#'
#' `HTTP.GET /admin/registration_application/list`
#'
#' @param unread_only (Optional) A logical value.
#' @param page (Optional) A numeric value.
#' @param limit (Optional) A numeric value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-registration_applications: <list>
#'   `-[Each element]: <list>
#'     |-registration_application: <list>
#'     | |-id: A numeric value
#'     | |-local_user_id: A numeric value
#'     | |-answer: A character value
#'     | |-admin_id: (Optional) A numeric value
#'     | |-deny_reason: (Optional) A character value
#'     | `-published: A character value
#'     |-creator_local_user: <list>
#'     | |-id: A numeric value
#'     | |-person_id: A numeric value
#'     | |-email: (Optional) A character value
#'     | |-show_nsfw: A logical value
#'     | |-theme: A character value
#'     | |-default_sort_type: One of "Active", "Hot", "New", "...
#'     | |-default_listing_type: One of "All", "Local", or "Subsc...
#'     | |-interface_language: A character value
#'     | |-show_avatars: A logical value
#'     | |-send_notifications_to_email: A logical value
#'     | |-validator_time: A character value
#'     | |-show_scores: A logical value
#'     | |-show_bot_accounts: A logical value
#'     | |-show_read_posts: A logical value
#'     | |-show_new_post_notifs: A logical value
#'     | |-email_verified: A logical value
#'     | |-accepted_application: A logical value
#'     | |-totp_2fa_url: (Optional) A character value
#'     | `-open_links_in_new_tab: A logical value
#'     |-creator: <list>
#'     | |-id: A numeric value
#'     | |-name: A character value
#'     | |-display_name: (Optional) A character value
#'     | |-avatar: (Optional) A character value
#'     | |-banned: A logical value
#'     | |-published: A character value
#'     | |-updated: (Optional) A character value
#'     | |-actor_id: A character value
#'     | |-bio: (Optional) A character value
#'     | |-local: A logical value
#'     | |-banner: (Optional) A character value
#'     | |-deleted: A logical value
#'     | |-inbox_url: A character value
#'     | |-matrix_user_id: (Optional) A character value
#'     | |-admin: A logical value
#'     | |-bot_account: A logical value
#'     | |-ban_expires: (Optional) A character value
#'     | `-instance_id: A numeric value
#'     `-admin: <list>
#'       |-id: A numeric value
#'       |-name: A character value
#'       |-display_name: (Optional) A character value
#'       |-avatar: (Optional) A character value
#'       |-banned: A logical value
#'       |-published: A character value
#'       |-updated: (Optional) A character value
#'       |-actor_id: A character value
#'       |-bio: (Optional) A character value
#'       |-local: A logical value
#'       |-banner: (Optional) A character value
#'       |-deleted: A logical value
#'       |-inbox_url: A character value
#'       |-matrix_user_id: (Optional) A character value
#'       |-admin: A logical value
#'       |-bot_account: A logical value
#'       |-ban_expires: (Optional) A character value
#'       `-instance_id: A numeric value
#' }
#'
#' @export
lemmy_list_registration_applications <- function(
    unread_only = NULL, page = NULL, limit = NULL, auth,
    .lemmy_instance = getOption("lemmy_instance", "https://lemmy.world")) {
  stopifnot(length(unread_only) <= 1L)
  stopifnot(length(page) <= 1L)
  stopifnot(length(limit) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.null(unread_only) || is.logical(unread_only))
  stopifnot(is.null(page) || is.numeric(page))
  stopifnot(is.null(limit) || is.numeric(limit))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "admin/registration_application/list",
    unread_only = unread_only, page = page, limit = limit,
    auth = auth
  )
}
#' Approve a registration application
#'
#' `HTTP.PUT /admin/registration_application/approve`
#'
#' @param id A numeric value.
#' @param approve A logical value.
#' @param deny_reason (Optional) A character value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-registration_application: <list>
#'   |-registration_application: <list>
#'   | |-id: A numeric value
#'   | |-local_user_id: A numeric value
#'   | |-answer: A character value
#'   | |-admin_id: (Optional) A numeric value
#'   | |-deny_reason: (Optional) A character value
#'   | `-published: A character value
#'   |-creator_local_user: <list>
#'   | |-id: A numeric value
#'   | |-person_id: A numeric value
#'   | |-email: (Optional) A character value
#'   | |-show_nsfw: A logical value
#'   | |-theme: A character value
#'   | |-default_sort_type: One of "Active", "Hot", "New", "...
#'   | |-default_listing_type: One of "All", "Local", or "Subsc...
#'   | |-interface_language: A character value
#'   | |-show_avatars: A logical value
#'   | |-send_notifications_to_email: A logical value
#'   | |-validator_time: A character value
#'   | |-show_scores: A logical value
#'   | |-show_bot_accounts: A logical value
#'   | |-show_read_posts: A logical value
#'   | |-show_new_post_notifs: A logical value
#'   | |-email_verified: A logical value
#'   | |-accepted_application: A logical value
#'   | |-totp_2fa_url: (Optional) A character value
#'   | `-open_links_in_new_tab: A logical value
#'   |-creator: <list>
#'   | |-id: A numeric value
#'   | |-name: A character value
#'   | |-display_name: (Optional) A character value
#'   | |-avatar: (Optional) A character value
#'   | |-banned: A logical value
#'   | |-published: A character value
#'   | |-updated: (Optional) A character value
#'   | |-actor_id: A character value
#'   | |-bio: (Optional) A character value
#'   | |-local: A logical value
#'   | |-banner: (Optional) A character value
#'   | |-deleted: A logical value
#'   | |-inbox_url: A character value
#'   | |-matrix_user_id: (Optional) A character value
#'   | |-admin: A logical value
#'   | |-bot_account: A logical value
#'   | |-ban_expires: (Optional) A character value
#'   | `-instance_id: A numeric value
#'   `-admin: <list>
#'     |-id: A numeric value
#'     |-name: A character value
#'     |-display_name: (Optional) A character value
#'     |-avatar: (Optional) A character value
#'     |-banned: A logical value
#'     |-published: A character value
#'     |-updated: (Optional) A character value
#'     |-actor_id: A character value
#'     |-bio: (Optional) A character value
#'     |-local: A logical value
#'     |-banner: (Optional) A character value
#'     |-deleted: A logical value
#'     |-inbox_url: A character value
#'     |-matrix_user_id: (Optional) A character value
#'     |-admin: A logical value
#'     |-bot_account: A logical value
#'     |-ban_expires: (Optional) A character value
#'     `-instance_id: A numeric value
#' }
#'
#' @export
lemmy_approve_registration_application <- function(id, approve, deny_reason = NULL, auth, .lemmy_instance = getOption(
                                                     "lemmy_instance",
                                                     "https://lemmy.world"
                                                   )) {
  stopifnot(length(id) == 1L)
  stopifnot(length(approve) == 1L)
  stopifnot(length(deny_reason) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(id))
  stopifnot(is.logical(approve))
  stopifnot(is.null(deny_reason) || is.character(deny_reason))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "PUT", endpoint = "admin/registration_application/approve",
    id = id, approve = approve, deny_reason = deny_reason,
    auth = auth
  )
}
#' Purge / Delete a person from the database.
#'
#' `HTTP.POST /admin/purge/person`
#'
#' @param person_id A numeric value.
#' @param reason (Optional) A character value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-success: A logical value
#' }
#'
#' @export
lemmy_purge_person <- function(person_id, reason = NULL, auth, .lemmy_instance = getOption(
                                 "lemmy_instance",
                                 "https://lemmy.world"
                               )) {
  stopifnot(length(person_id) == 1L)
  stopifnot(length(reason) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(person_id))
  stopifnot(is.null(reason) || is.character(reason))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "admin/purge/person",
    person_id = person_id, reason = reason, auth = auth
  )
}
#' Purge / Delete a community from the database.
#'
#' `HTTP.POST /admin/purge/community`
#'
#' @param community_id A numeric value.
#' @param reason (Optional) A character value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-success: A logical value
#' }
#'
#' @export
lemmy_purge_community <- function(community_id, reason = NULL, auth, .lemmy_instance = getOption(
                                    "lemmy_instance",
                                    "https://lemmy.world"
                                  )) {
  stopifnot(length(community_id) == 1L)
  stopifnot(length(reason) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(community_id))
  stopifnot(is.null(reason) || is.character(reason))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "admin/purge/community",
    community_id = community_id, reason = reason, auth = auth
  )
}
#' Purge / Delete a post from the database.
#'
#' `HTTP.POST /admin/purge/post`
#'
#' @param post_id A numeric value.
#' @param reason (Optional) A character value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-success: A logical value
#' }
#'
#' @export
lemmy_purge_post <- function(post_id, reason = NULL, auth, .lemmy_instance = getOption(
                               "lemmy_instance",
                               "https://lemmy.world"
                             )) {
  stopifnot(length(post_id) == 1L)
  stopifnot(length(reason) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(post_id))
  stopifnot(is.null(reason) || is.character(reason))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "admin/purge/post",
    post_id = post_id, reason = reason, auth = auth
  )
}
#' Purge / Delete a comment from the database.
#'
#' `HTTP.POST /admin/purge/comment`
#'
#' @param comment_id A numeric value.
#' @param reason (Optional) A character value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-success: A logical value
#' }
#'
#' @export
lemmy_purge_comment <- function(comment_id, reason = NULL, auth, .lemmy_instance = getOption(
                                  "lemmy_instance",
                                  "https://lemmy.world"
                                )) {
  stopifnot(length(comment_id) == 1L)
  stopifnot(length(reason) <= 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(comment_id))
  stopifnot(is.null(reason) || is.character(reason))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "admin/purge/comment",
    comment_id = comment_id, reason = reason, auth = auth
  )
}
#' Create a new custom emoji
#'
#' `HTTP.POST /custom_emoji`
#'
#' @param category A character value.
#' @param shortcode A character value.
#' @param image_url A character value.
#' @param alt_text A character value.
#' @param keywords A character vector.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-custom_emoji: <list>
#'   |-custom_emoji: <list>
#'   | |-id: A numeric value
#'   | |-local_site_id: A numeric value
#'   | |-shortcode: A character value
#'   | |-image_url: A character value
#'   | |-alt_text: A character value
#'   | |-category: A character value
#'   | |-published: A character value
#'   | `-updated: (Optional) A character value
#'   `-keywords: <list>
#'     `-[Each element]: <list>
#'       |-id: A numeric value
#'       |-custom_emoji_id: A numeric value
#'       `-keyword: A character value
#' }
#'
#' @export
lemmy_create_custom_emoji <- function(
    category, shortcode, image_url, alt_text, keywords,
    auth, .lemmy_instance = getOption("lemmy_instance", "https://lemmy.world")) {
  stopifnot(length(category) == 1L)
  stopifnot(length(shortcode) == 1L)
  stopifnot(length(image_url) == 1L)
  stopifnot(length(alt_text) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.character(category))
  stopifnot(is.character(shortcode))
  stopifnot(is.character(image_url))
  stopifnot(is.character(alt_text))
  stopifnot(is.character(keywords))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "custom_emoji",
    category = category, shortcode = shortcode, image_url = image_url,
    alt_text = alt_text, keywords = keywords, auth = auth
  )
}
#' Edit an existing custom emoji
#'
#' `HTTP.PUT /custom_emoji`
#'
#' @param id A numeric value.
#' @param category A character value.
#' @param image_url A character value.
#' @param alt_text A character value.
#' @param keywords A character vector.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-custom_emoji: <list>
#'   |-custom_emoji: <list>
#'   | |-id: A numeric value
#'   | |-local_site_id: A numeric value
#'   | |-shortcode: A character value
#'   | |-image_url: A character value
#'   | |-alt_text: A character value
#'   | |-category: A character value
#'   | |-published: A character value
#'   | `-updated: (Optional) A character value
#'   `-keywords: <list>
#'     `-[Each element]: <list>
#'       |-id: A numeric value
#'       |-custom_emoji_id: A numeric value
#'       `-keyword: A character value
#' }
#'
#' @export
lemmy_edit_custom_emoji <- function(
    id, category, image_url, alt_text, keywords, auth,
    .lemmy_instance = getOption("lemmy_instance", "https://lemmy.world")) {
  stopifnot(length(id) == 1L)
  stopifnot(length(category) == 1L)
  stopifnot(length(image_url) == 1L)
  stopifnot(length(alt_text) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(id))
  stopifnot(is.character(category))
  stopifnot(is.character(image_url))
  stopifnot(is.character(alt_text))
  stopifnot(is.character(keywords))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "PUT", endpoint = "custom_emoji",
    id = id, category = category, image_url = image_url,
    alt_text = alt_text, keywords = keywords, auth = auth
  )
}
#' Delete a custom emoji
#'
#' `HTTP.Post /custom_emoji/delete`
#'
#' @param id A numeric value.
#' @param auth A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 2:
#' \preformatted{<list>
#' |-id: A numeric value
#' `-success: A logical value
#' }
#'
#' @export
lemmy_delete_custom_emoji <- function(id, auth, .lemmy_instance = getOption(
                                        "lemmy_instance",
                                        "https://lemmy.world"
                                      )) {
  stopifnot(length(id) == 1L)
  stopifnot(length(auth) == 1L)
  stopifnot(is.numeric(id))
  stopifnot(is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "POST", endpoint = "custom_emoji/delete",
    id = id, auth = auth
  )
}
#' Fetch federated instances.
#'
#' `HTTP.Get /federated_instances`
#'
#' @param auth (Optional) A character value.
#' @param .lemmy_instance Default: "https://lemmy.world". Change the default instance by setting the `lemmy_instance` [options()].
#'
#' @returns A `list` of length 1:
#' \preformatted{<list>
#' `-federated_instances: <list>
#'   |-linked: <list>
#'   | `-[Each element]: <list>
#'   |   |-id: A numeric value
#'   |   |-domain: A character value
#'   |   |-published: A character value
#'   |   |-updated: (Optional) A character value
#'   |   |-software: (Optional) A character value
#'   |   `-version: (Optional) A character value
#'   |-allowed: <list>
#'   | `-[Each element]: <list>
#'   |   |-id: A numeric value
#'   |   |-domain: A character value
#'   |   |-published: A character value
#'   |   |-updated: (Optional) A character value
#'   |   |-software: (Optional) A character value
#'   |   `-version: (Optional) A character value
#'   `-blocked: <list>
#'     `-[Each element]: <list>
#'       |-id: A numeric value
#'       |-domain: A character value
#'       |-published: A character value
#'       |-updated: (Optional) A character value
#'       |-software: (Optional) A character value
#'       `-version: (Optional) A character value
#' }
#'
#' @examplesIf remmy:::is_lemmy_world()
#' instances <- lemmy_get_federated_instances()
#'
#' length(instances$federated_instances$linked)
#'
#' some_instance <- instances$federated_instances$linked[[732]]
#'
#' some_instance$domain
#'
#' some_instance$published
#'
#' @export
lemmy_get_federated_instances <- function(auth = NULL, .lemmy_instance = getOption(
                                            "lemmy_instance",
                                            "https://lemmy.world"
                                          )) {
  stopifnot(length(auth) <= 1L)
  stopifnot(is.null(auth) || is.character(auth))
  wrapper(
    base_url = .lemmy_instance, req_type = "GET", endpoint = "federated_instances",
    auth = auth
  )
}
