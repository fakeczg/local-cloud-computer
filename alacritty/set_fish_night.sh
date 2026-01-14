#!/bin/fish
# ===== Fish Night · Eye-Friendly High Contrast =====

set -U fish_color_normal E6EDF3

set -U fish_color_command F0F6FC --bold
set -U fish_color_keyword F0F6FC --bold

set -U fish_color_param 58A6FF --bold
set -U fish_color_option 58A6FF --bold

set -U fish_color_quote 3FB950 --bold
set -U fish_color_comment 8B949E

set -U fish_color_redirection F85149 --bold
set -U fish_color_operator E6EDF3 --bold
set -U fish_color_error FF7B72 --bold
set -U fish_color_escape D29922 --bold

set -U fish_color_match --background=FFD33D 0F1419 --bold
set -U fish_color_search_match --background=58A6FF 0F1419 --bold
set -U fish_color_selection 0F1419 --bold --background=FFD33D

set -U fish_color_autosuggestion 6E7681

set -U fish_color_cwd 58A6FF --bold
set -U fish_color_cwd_root F85149 --bold
set -U fish_color_valid_path --underline --bold

set -U fish_color_user E6EDF3 --bold
set -U fish_color_host 8B949E
set -U fish_color_host_remote BC8CFF --bold

set -U fish_pager_color_background --background=0F1419
set -U fish_pager_color_prefix F0F6FC --bold --underline
set -U fish_pager_color_completion F0F6FC
set -U fish_pager_color_description 8B949E
set -U fish_pager_color_progress F0F6FC --background=264F78
set -U fish_pager_color_selected_background --background=FFD33D --bold
