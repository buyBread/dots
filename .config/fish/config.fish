set fish_greeting # empty

set -g fish_prompt_pwd_dir_length 3

function fish_prompt
    # `pwd` is full path
    echo (set_color green)(prompt_pwd)(set_color normal) "\$ "
end

set -g __fish_git_prompt_showupstream verbose
set -g __fish_git_prompt_showcolorhints

function fish_right_prompt
    echo (fish_git_prompt) (set_color normal)(date '+%H:%M:%S')
end

# https://github.com/flatpak/flatpak/issues/3109#issuecomment-1074271891
if command -vq flatpak
    set -ga fish_user_paths ~/.local/share/flatpak/exports/bin /var/lib/flatpak/exports/bin
    set -gx --path XDG_DATA_DIRS /usr/local/share/ /usr/share/ ~/.local/share/flatpak/exports/share
    
    for install_dir in (flatpak --installations)
        set -gxa XDG_DATA_DIRS $install_dir/exports/share
    end
end

# useless to me
export PYTHONDONTWRITEBYTECODE=1
