#ベースをubuntuにする
FROM ubuntu:18.04

#Nginxのインストール
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install nginx

#ポートの設定
EXPOSE 80

#rootフォルダへリソースのコピー
COPY index.html /var/www/html/

#Nginxの起動
CMD ["nginx", "-g", "daemon off;"]
