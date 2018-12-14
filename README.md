# ideactive
idea 激活服务器搭建脚本

win下

直接双击 ideaactive.bat

centos下

sh ideaactive.sh &

docker更方便 直接执行

docker pull ilanyu/golang-reverseproxy

docker run -d -p 8888:8888 --restart=always ilanyu/golang-reverseproxy

