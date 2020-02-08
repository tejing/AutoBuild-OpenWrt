#!/bin/bash

if [ ! -d "./package/myapp" ];then
mkdir ./package/myapp
fi
cd ./package/myapp

echo "koolproxyR"
if [ ! -d "./koolproxyR" ];then
git clone https://github.com/tzxiaozhen88/koolproxyR.git
else
cd koolproxyR
git pull
cd ..
fi

echo "luci-app-adguardhome"
if [ ! -d "./luci-app-adguardhome" ];then
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git
else
cd luci-app-adguardhome
git pull
cd ..
fi

echo "luci-app-mentohust"
if [ ! -d "./luci-app-mentohust" ];then
git clone https://github.com/BoringCat/luci-app-mentohust.git
else
cd luci-app-mentohust
git pull
cd ..
fi

echo "MentoHUST-OpenWrt-ipk"
if [ ! -d "./MentoHUST-OpenWrt-ipk" ];then
git clone https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk.git
else
cd MentoHUST-OpenWrt-ipk
git pull
cd ..
fi

echo "luci-theme-argon"
if [ ! -d "./luci-theme-argon" ];then
git clone https://github.com/jerrykuku/luci-theme-argon.git
else
cd luci-theme-argon
git pull
cd ..
fi

echo "luci-theme-atmaterial"
if [ ! -d "./luci-theme-atmaterial" ];then
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git
else
cd luci-theme-atmaterial
git pull
cd ..
fi

echo "luci-theme-argon-mc"
if [ ! -d "./luci-theme-argon-mc" ];then
svn checkout https://github.com/project-openwrt/openwrt/trunk/package/lienol/luci-theme-argon-mc
else
cd luci-theme-argon-mc
svn update
cd ..
fi


echo "luci-theme-rosy"
if [ ! -d "./luci-theme-rosy" ];then
git clone https://github.com/rosywrt/luci-theme-rosy.git
else
cd luci-theme-rosy
git pull
cd ..
fi

echo "luci-theme-darkmatter"
if [ ! -d "./luci-theme-darkmatter" ];then
git clone https://github.com/apollo-ng/luci-theme-darkmatter.git
else
cd luci-theme-darkmatter
git pull
cd ..
fi

echo "luci-app-serverchan"
if [ ! -d "./luci-app-serverchan" ];then
svn checkout https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/luci-app-serverchan
else
cd luci-app-serverchan
svn update
cd ..
fi

echo "openwrt-mwol"
if [ ! -d "./openwrt-mwol" ];then
git clone https://github.com/Mleaf/openwrt-mwol.git
else
cd openwrt-mwol
git pull
cd ..
fi

echo "luci-app-openclash"
if [ ! -d "./OpenClash" ];then
mkdir ./OpenClash
cd ./OpenClash
git init
git remote add -f origin https://github.com/vernesong/OpenClash.git
git config core.sparsecheckout true
echo "luci-app-openclash" >> .git/info/sparse-checkout
git pull origin master
git branch --set-upstream-to=origin/master master
cd ..
else
cd ./OpenClash/luci-app-openclash
git pull origin master
cd ..
cd ..
fi

if [ ! -d "./ssr-plus-Jo" ];then
mkdir ./ssr-plus-Jo
fi
cd ./ssr-plus-Jo
echo "luci-app-ssr-plus-Jo"
if [ ! -d "./luci-app-ssr-plus-Jo" ];then
git clone https://github.com/Leo-Jo-My/luci-app-ssr-plus-Jo.git
else
cd luci-app-ssr-plus-Jo
git pull
cd ..
fi

echo "ssr-plus-Jo依赖"
if [ ! -d "./my" ];then
git clone https://github.com/Leo-Jo-My/my.git
cd ..
else
cd my
git pull
cd ..
cd ..
fi

cd ..
cd ..
pwd
echo "如果使用ssr-plus-Jo请选1，否则请选2，选1时不能用luci-app-dnsforwarder"
read -p "请输入数字: 1:隐藏Lean's dnsforward  2:隐藏Jo's dnsforward  " num
case "$num" in
	1)
	if [ -e "./package/lean/dnsforwarder/Makefile" ];then
	mv ./package/lean/dnsforwarder/Makefile ./package/lean/dnsforwarder/Makefile_old 
	fi
	if [ -e "./package/myapp/ssr-plus-Jo/my/openwrt-dnsforwarder/Makefile_old" ];then
	mv ./package/myapp/ssr-plus-Jo/my/openwrt-dnsforwarder/Makefile_old ./package/myapp/ssr-plus-Jo/my/openwrt-dnsforwarder/Makefile
	fi
	;;
	2)
	if [ -e "./package/lean/dnsforwarder/Makefile_old" ];then
	mv ./package/lean/dnsforwarder/Makefile_old ./package/lean/dnsforwarder/Makefile
	fi
	if [ -e "./package/myapp/ssr-plus-Jo/my/openwrt-dnsforwarder/Makefile" ];then
	mv ./package/myapp/ssr-plus-Jo/my/openwrt-dnsforwarder/Makefile ./package/myapp/ssr-plus-Jo/my/openwrt-dnsforwarder/Makefile_old
	fi
	;;
esac




