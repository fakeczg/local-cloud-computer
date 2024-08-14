#!/bin/fish
# 设置普通文本颜色为纯白色，加粗显示，确保所有普通文本都清晰可见
set -U fish_color_normal FFFFFF --bold

# 设置命令部分颜色为亮黄色，加粗显示，确保命令部分非常醒目
set -U fish_color_command FFD700 --bold

# 设置引用部分颜色为青色，加粗显示，确保引用部分非常突出
set -U fish_color_quote 00FFFF --bold

# 设置重定向部分颜色为橙红色，加粗显示，确保显眼
set -U fish_color_redirection FF4500 --bold

# 设置命令结束符号颜色为纯红色，加粗显示，非常突出
set -U fish_color_end FF0000 --bold

# 设置错误信息颜色为明亮的红色，加粗显示，非常明显
set -U fish_color_error FF3333 --bold

# 设置参数部分颜色为亮绿色，加粗显示，与命令部分区分明显
set -U fish_color_param 00FF00 --bold

# 设置注释部分颜色为灰色，加粗显示，确保区分明显
set -U fish_color_comment A9A9A9 --bold # 调整为稍亮的灰色，确保在暗色背景下可读性良好

# 设置匹配部分颜色为纯蓝色，加粗显示，确保匹配部分非常清晰
set -U fish_color_match 0000FF --bold

# 设置选中文本的背景颜色为亮黄色，加粗显示，确保高对比度选择
set -U fish_color_selection --background=FFD700 --bold

# 设置搜索匹配部分的背景颜色为亮绿色，加粗显示，确保搜索匹配部分清晰可见
set -U fish_color_search_match --background=00FF00 --bold

# 设置当前历史记录为粗体显示，增加可见性
set -U fish_color_history_current --bold

# 设置操作符颜色为纯白色，加粗显示，增强区分度
set -U fish_color_operator FFFFFF --bold

# 设置转义字符颜色为亮黄色，加粗显示，确保明显
set -U fish_color_escape FFFF00 --bold

# 设置当前工作目录颜色为亮绿色，加粗显示，保持一致性
set -U fish_color_cwd 00FF00 --bold

# 设置根目录颜色为纯红色，加粗显示，非常突出
set -U fish_color_cwd_root FF0000 --bold

# 设置有效路径下划线加粗显示，强调路径的重要性
set -U fish_color_valid_path --underline --bold

# 设置自动建议颜色为稍亮的灰色，加粗显示，确保不与其他颜色冲突
set -U fish_color_autosuggestion A9A9A9 --bold

# 设置用户部分颜色为青色，加粗显示，确保极高对比度
set -U fish_color_user 00FFFF --bold

# 设置主机名颜色为纯白色，加粗显示，确保清晰
set -U fish_color_host FFFFFF --bold

# 设置取消命令颜色为反转颜色并加粗显示，确保突出
set -U fish_color_cancel --reverse --bold

# 设置分页器背景为纯黑色，加粗显示，确保对比度
set -U fish_pager_color_background --background=000000 --bold

# 设置分页器前缀为纯白色，加粗并下划线显示，增强对比度
set -U fish_pager_color_prefix FFFFFF --bold --underline

# 设置进度条为纯白色文本，纯蓝色背景，加粗显示，确保可见性
set -U fish_pager_color_progress FFFFFF --background=0000FF --bold

# 设置分页器完成部分为纯白色文本，加粗显示
set -U fish_pager_color_completion FFFFFF --bold

# 设置描述部分为灰色，加粗显示
set -U fish_pager_color_description A9A9A9 --bold

# 设置选中项的背景颜色为亮黄色，加粗显示，确保醒目
set -U fish_pager_color_selected_background --background=FFD700 --bold

# 设置选中项前缀为纯白色，加粗显示，增强对比度
set -U fish_pager_color_selected_prefix FFFFFF --bold

# 设置选中项完成部分为纯白色，加粗显示
set -U fish_pager_color_selected_completion FFFFFF --bold

# 设置选中项描述部分为纯白色，加粗显示
set -U fish_pager_color_selected_description FFFFFF --bold

# 设置关键字颜色为纯白色，加粗显示，确保最大化对比度
set -U fish_color_keyword FFFFFF --bold

# 设置选项颜色为亮黄色，加粗显示，确保突出
set -U fish_color_option FFFF00 --bold

# 设置次要前缀为纯白色，加粗显示
set -U fish_pager_color_secondary_prefix FFFFFF --bold

# 设置次要完成部分为纯白色，加粗显示
set -U fish_pager_color_secondary_completion FFFFFF --bold

# 设置次要部分背景颜色为纯黑色，加粗显示
set -U fish_pager_color_secondary_background --background=000000 --bold

# 设置远程主机颜色为纯白色，加粗显示，确保醒目
set -U fish_color_host_remote FFFFFF --bold

# 设置次要描述部分为纯白色，加粗显示
set -U fish_pager_color_secondary_description FFFFFF --bold
