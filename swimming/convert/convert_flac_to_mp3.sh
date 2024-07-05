#!/bin/bash
# convert_flac_to_mp3.sh
# 这个脚本将当前目录下的所有 FLAC 文件转换为 MP3 格式，并将其放到 mp3/ 目录下

# 确保 ffmpeg 已安装
if ! command -v ffmpeg &> /dev/null; then
    echo "ffmpeg 未安装，请先安装 ffmpeg"
    exit 1
fi

# 创建目标目录
mkdir -p mp3

# 遍历当前目录下的所有 FLAC 文件
for file in *.flac; do
    # 检查是否存在 FLAC 文件
    if [ ! -f "$file" ]; then
        echo "找不到 FLAC 文件"
        exit 1
    fi

    # 获取文件名（不包括扩展名）
    filename="${file%.*}"

    # 使用 ffmpeg 将 FLAC 文件转换为 MP3 格式，使用最高支持的320kbps比特率和48kHz采样频率
    ffmpeg -i "$file" -codec:a libmp3lame -b:a 320k -ar 48000 "mp3/${filename}.mp3"
done

echo "所有 FLAC 文件已成功转换为 MP3 格式并放到 mp3/ 目录下"

