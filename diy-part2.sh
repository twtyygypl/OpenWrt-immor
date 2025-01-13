# diy-part2.sh 脚本(用于安装包或修改文件)

# diy-part2.sh 适用于一些更具体的定制，通常用于安装额外的包或修改配置文件。

# ------------------------------------------------------

#!/bin/bash

# 添加一些额外的软件包
# 可以直接在 diy-part2.sh 中手动安装
# 比如安装某些你需要的插件：
# ./scripts/feeds install luci-app-adblock

# 如果你需要修改配置文件，可以通过这种方式
# 修改默认的无线配置
# sed -i 's/option disabled 1/option disabled 0/' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 你还可以在此添加一些初始化脚本或定制化操作
# 比如创建特定的文件夹，或修改启动文件：
# mkdir -p package/base-files/files/etc/custom/
# echo "Custom Initialization Script" > package/base-files/files/etc/custom/init.sh

# 设置执行权限
# chmod +x package/base-files/files/etc/custom/init.sh

# 修改默认管理 IP
sed -i 's/192.168.1.1/192.168.3.96/g' package/base-files/files/bin/config_generate
