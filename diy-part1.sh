#!/bin/bash

if [[ $CONFIG_FILE == lean* ]]; then
    sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
elif [[ $CONFIG_FILE == hanwckf* ]]; then
    sed -i '$a src-git jell https://github.com/kenzok8/jell' feeds.conf.default
fi

# luci-theme-kucat 一个清爽的luci主题
git clone -b v2.5-19.07 --depth=1 https://github.com/sirpdboy/luci-theme-kucat package/luci-theme-kucat
