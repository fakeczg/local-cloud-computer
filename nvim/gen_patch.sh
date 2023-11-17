#!/bin/bash
cd ~/.config/nvim
git format-patch -1 HEAD > /data/bin/tools/nvim/nvim_add_my_custom_content.patch
mv 0001-add-my-custom-content.patch /data/bin/tools/nvim/nvim_add_my_custom_content.patch  -f
cd -
