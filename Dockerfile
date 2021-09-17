#网上拖取java8的镜像
FROM java:8
MAINTAINER test
#添加本地的jar包到根目录
ADD *.jar web.jar
#暴露两个jar运行的端口
EXPOSE 9999/tcp
EXPOSE 16081/tcp
#执行cmd命令,下面两种方式都可以
#ENTRYPOINT ["java","-Duser.timezone=GMT+08","-jar","/web.jar"]
ENTRYPOINT ["sh","-c","java -Duser.timezone=GMT+08 -jar /web.jar"]