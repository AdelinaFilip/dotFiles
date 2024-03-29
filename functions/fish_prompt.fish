set normal (set_color normal) set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

if not set -q __git_cb
    set __git_cb (git branch ^/dev/null | grep \* | sed 's/* //')
end

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'


function fish_prompt
  set_color white
  printf 'Adelina' $HOST
  set_color yellow
  echo -n (date "+[%H:%M:%S]")
  set_color $fish_color_cwd
  printf ' %s' (prompt_pwd)
  set last_status $status
  set_color red
  printf ' %s' (git branch ^/dev/null | grep \* | sed 's/* //')
  printf '\n→ '

  set_color normal
end
