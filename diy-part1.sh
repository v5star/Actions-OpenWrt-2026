#!/bin/bash

if [[ $CONFIG_FILE == lean* ]]; then
    sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
elif [[ $CONFIG_FILE == hanwckf* ]]; then
    sed -i '$a src-git jell https://github.com/kenzok8/jell' feeds.conf.default
fi
# 3-添加 opentomcat 主题
git clone https://github.com/sirpdboy/luci-theme-kucat.git package/luci-theme-kucat
