#!/bin/fish
set -U fish_color_normal 2E3440 --bold                                  # 深灰色文本加粗，用于普通文本，确保清晰
set -U fish_color_command 002B36 --bold                                 # 深蓝黑色加粗，命令部分极高对比度
set -U fish_color_quote 586E75 --bold                                   # 深灰蓝色加粗，引用部分保持醒目但不刺眼
set -U fish_color_redirection DC322F --bold                             # 鲜红色加粗，用于重定向，确保显眼
set -U fish_color_end B48EAD --bold                                     # 柔和紫色加粗，命令结束符号，区分度高且柔和
set -U fish_color_error FF4500 --bold                                   # 明亮的橙色加粗，用于错误信息，非常明显
set -U fish_color_param 5E81AC --bold                                   # 柔和蓝色加粗，用于参数部分，确保与命令区分明显
set -U fish_color_comment 93A1A1 --bold                                 # 灰蓝色加粗，用于注释部分，区分明显
set -U fish_color_match --background=FFD700 --bold                      # 亮黄色背景加粗，确保匹配部分非常清晰
set -U fish_color_selection black --bold --background=FFD700            # 黑色文本加粗，亮黄色背景，高对比度选择
set -U fish_color_search_match black --bold --background=5E81AC         # 黑色文字加粗，蓝色背景，用于搜索匹配
set -U fish_color_history_current --bold                                # 粗体，用于当前历史记录，增加可见性
set -U fish_color_operator 073642 --bold                                # 深蓝绿色加粗，用于操作符，增强区分度
set -U fish_color_escape 859900 --bold                                  # 亮绿色加粗，用于转义字符，非常醒目
set -U fish_color_cwd 586E75 --bold                                     # 深灰蓝色加粗，用于当前工作目录，保持一致性
set -U fish_color_cwd_root DC322F --bold                                # 鲜红色加粗，用于根目录，非常突出
set -U fish_color_valid_path --underline --bold                         # 下划线加粗，用于有效路径，强调路径的重要性
set -U fish_color_autosuggestion 4C566A --bold                          # 深灰色加粗，用于自动建议，确保与其他颜色区分明显
set -U fish_color_user 268BD2 --bold                                    # 亮蓝色加粗，用于用户部分，极高对比度
set -U fish_color_host 002B36 --bold                                    # 深蓝黑色加粗，用于主机名，确保清晰
set -U fish_color_cancel --reverse --bold                               # 反转颜色加粗，用于取消命令，确保突出
set -U fish_pager_color_background --background=FFFFFF                  # 纯白色背景，用于分页器，确保对比度
set -U fish_pager_color_prefix 002B36 --bold --underline                # 深蓝黑色前缀加粗，增加对比度，强调
set -U fish_pager_color_progress 002B36 --bold --background=268BD2      # 深蓝黑色进度条加粗，亮蓝色背景，确保可见性
set -U fish_pager_color_completion 002B36 --bold                        # 深蓝黑色文本加粗，用于完成部分
set -U fish_pager_color_description 073642 --bold                       # 深蓝绿色加粗，用于描述部分
set -U fish_pager_color_selected_background --background=FFD700 --bold  # 亮黄色背景加粗，用于选中项，确保醒目
set -U fish_pager_color_selected_prefix 002B36 --bold                   # 深蓝黑色前缀加粗，增强对比度
set -U fish_pager_color_selected_completion 002B36 --bold               # 深蓝黑色完成文本加粗，确保清晰可见
set -U fish_pager_color_selected_description 002B36 --bold              # 深蓝黑色描述文本加粗，增加对比度
set -U fish_color_host_remote 002B36 --bold                             # 深蓝黑色加粗，用于远程主机，确保醒目
set -U fish_pager_color_secondary_background --background=FFFFFF --bold # 纯白色背景加粗，用于次要部分
set -U fish_pager_color_secondary_prefix 002B36 --bold                  # 深蓝黑色前缀加粗，确保对比度
set -U fish_color_keyword 002B36 --bold                                 # 深蓝黑色加粗，用于关键字，最大化对比度
set -U fish_pager_color_secondary_description 073642 --bold             # 深蓝绿色加粗，用于次要描述
set -U fish_color_option 268BD2 --bold                                  # 亮蓝色加粗，用于选项，确保突出
set -U fish_pager_color_secondary_completion 002B36 --bold              # 深蓝黑色完成文本加粗，确保清晰可见
