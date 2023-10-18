echo "Memos一键搭建脚本"
echo "脚本作者：舒夏"
echo "GitHub开源地址：https://github.com/quanru/memos-on-replit"
nix-env -iA nixpkgs.wget
mkdir build
cd build
wget -O .replit https://github.com/quanru/memos-on-replit/raw/master/.replit
wget -O replit.nix https://github.com/quanru/memos-on-replit/raw/master/replit.nix
cd ..
wget -O main.sh https://github.com/quanru/memos-on-replit/raw/master/main.sh
wget -O memos https://github.com/quanru/memos-on-replit/releases/latest/download/memos
cp -r build/.replit . && cp -r build/replit.nix .
echo "恭喜搭建完成"
echo "点击Run立即运行项目"
rm -rf build/ && rm -rf README.md
