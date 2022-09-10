function enable_penumbra_theme_dark
    # penumbra uses 8 colour palettes
    set --universal fish_color_autosuggestion BEBEBE # penumbra:sky+            autosuggestions
    set --universal fish_color_command        5794D0 # penumbra:blue            commands
    set --universal fish_color_comment        636363 # penumbra:sky-            code comments
    set --universal fish_color_cwd            5794D0 # penumbra:blue            current working directory in the default prompt
    set --universal fish_color_end            BA823A # penumbra:orange          process separators like ';' and '&'
    set --universal fish_color_error          CA736C # penumbra:red             highlight potential errors
    set --universal fish_color_escape         00A2AF # penumbra:cyan            highlight character escapes like '\n' and '\x70'
    set --universal fish_color_match          CA736C # penumbra:red             highlight matching parenthesis
    set --universal fish_color_normal         8F8F8F # penumbra:sky             default color
    set --universal fish_color_operator       BA823A # penumbra:orange          parameter expansion operators like '*' and '~'
    set --universal fish_color_param          8F8F8F # penumbra:sky             command parameters
    set --universal fish_color_quote          47A477 # penumbra:green           quoted blocks of text
    set --universal fish_color_redirection    9481CC # penumbra:purple          IO redirections
    set --universal fish_color_search_match   --background BA823A # penumbra:orange     highlight history search matches and the selected pager item (must be a background)
    set --universal fish_color_selection      BA823A # penumbra:orange          when selecting text (in vi visual mode)

    # color for fish default prompts item
    set --universal fish_color_cancel         0A0E14 # penumbra:sun        the '^C' indicator on a canceled command
    set --universal fish_color_host           9481CC # penumbra:purple     current host system in some of fish default prompts
    set --universal fish_color_host_remote    9481CC # penumbra:purple     current host system in some of fish default prompts, if fish is running remotely (via ssh or similar)
    set --universal fish_color_user           FF8F40 # penumbra:orange     current username in some of fish default prompts
end
