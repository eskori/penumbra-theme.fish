function penumbra_load_theme
    set --query penumbra_path || set --local penumbra_path $__fish_config_dir

    switch $penumbra_variant
        case dark
            source $penumbra_path/conf.d/penumbra-dark.fish && enable_penumbra_theme_dark
            and colorize "penumbra %s dark %s enabled!\n"
        case '*'
            echo 'Invalid variant!'
    end
end

function colorize \
    --argument-names text
    printf $text (set_color $fish_color_quote --reverse) (set_color normal)
end

function _penumbra_save_current_theme
    set --local previous_theme_file $__fish_config_dir/functions/_penumbra_restore_previous_theme.fish
    
    test -e $previous_theme_file && command rm -f $previous_theme_file
    touch $previous_theme_file

    echo 'function _penumbra_restore_previous_theme' > $previous_theme_file
    set color_variables (set --names | grep fish_color)
    for color_name in $color_variables
        set --local color_value $$color_name
        printf "\tset --universal $color_name $color_value\n" >> $previous_theme_file
    end
    echo 'end' >> $previous_theme_file
end

function _penumbra_install --on-event penumbra_install
    _penumbra_save_current_theme
    and echo 'Previous theme saved! 🎉'
end

function _penumbra_uninstall --on-event penumbra_uninstall
    functions --erase enable_penumbra_theme_light
    functions --erase enable_penumbra_theme_dark
    functions --erase enable_penumbra_theme_mirage

    set --local previous_theme_file $__fish_config_dir/functions/_penumbra_restore_previous_theme.fish
    source $previous_theme_file && _penumbra_restore_previous_theme
    command rm -f $previous_theme_file
    functions --erase _penumbra_restore_previous_theme
    set --erase penumbra_variant
end

function penumbra_display_colorscheme
    set color_vars (set --names | grep fish_color)
    for color_var in $color_vars
        printf "%-30s %s\n" \
            $color_var \
            (set_color $$color_var --reverse)"$$color_var"(set_color normal)
    end
end