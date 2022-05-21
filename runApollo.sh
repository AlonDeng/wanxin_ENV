echo

# set url="localhost:3306"
# set username="root"
# set password="123"

# start "configService" java -Xms128m -Xmx128m -Dapollo_profile=github -Dspring.datasource.url=jdbc:mysql://%url%/ApolloConfigDB?characterEncoding=utf8 -Dspring.datasource.username=%username% -Dspring.datasource.password=%password% -Dlogging.file=.\logs\apollo-configservice.log -jar .\apollo-configservice-1.3.0.jar
# start "adminService" java -Xms128m -Xmx128m -Dapollo_profile=github -Dspring.datasource.url=jdbc:mysql://%url%/ApolloConfigDB?characterEncoding=utf8 -Dspring.datasource.username=%username% -Dspring.datasource.password=%password% -Dlogging.file=.\logs\apollo-adminservice.log -jar .\apollo-adminservice-1.3.0.jar
# start "ApolloPortal" java -Xms128m -Xmx128m -Dapollo_profile=github,auth -Ddev_meta=http://localhost:8080/ -Dserver.port=8070 -Dspring.datasource.url=jdbc:mysql://%url%/ApolloPortalDB?characterEncoding=utf8 -Dspring.datasource.username=%username% -Dspring.datasource.password=%password% -Dlogging.file=.\logs\apollo-portal.log -jar .\apollo-portal-1.3.0.jar


# # apollo config db info
# apollo_config_db_url="jdbc:mysql://localhost:3306/ApolloConfigDB?characterEncoding=utf8&serverTimezone=Asia/Shanghai"
# apollo_config_db_username=root
# apollo_config_db_password=P@ssw0rd

# apollo portal db info
url="jdbc:mysql://localhost:3306/ApolloPortalDB?characterEncoding=utf8&serverTimezone=Asia/Shanghai"
username=root
password=P@ssw0rd

-Dapollo_profile=github
-Dspring.datasource.url="jdbc:mysql://localhost:3306/ApolloConfigDB?characterEncoding=utf8"
-Dspring.datasource.username=root
-Dspring.datasource.password=P@ssw0rd
-Dlogging.file=./logs/apollo-configservice.log
-jar ./apollo-configservice-1.3.0.jar

start  -jar ./apollo-configservice-1.3.0.jar
start -Dapollo_profile=github 
-Dspring.datasource.url=jdbc:mysql://localhost:3306/ApolloConfigDB?characterEncoding=utf8 
-Dspring.datasource.username=%username% 
-Dspring.datasource.password=%password% 
-Dlogging.file=./logs/apollo-adminservice.log 
-jar ./apollo-adminservice-1.3.0.jar


start -Dapollo_profile=github,auth 
-Ddev_meta=http://localhost:8080/ 
-Dserver.port=8070 
-Dspring.datasource.url=jdbc:mysql://localhost:3306/ApolloPortalDB?characterEncoding=utf8 
-Dspring.datasource.username=%username% 
-Dspring.datasource.password=%password% 
-Dlogging.file=./logs/apollo-portal.log 
-jar ./apollo-portal-1.3.0.jar


java 
-Dlogging.file=./logs/apollo-configservice.log 
-Dapollo_profile=github 
-Dspring.datasource.url="jdbc:mysql://localhost:3306/ApolloConfigDB?characterEncoding=utf8" 
-Dspring.datasource.username=root 
-Dspring.datasource.password=P@ssw0rd  
-jar ./apollo-configservice-1.3.0.jar


-Ddev_meta="http://10.30.44.208:8080" -Dpro_meta="http://10.30.44.208:8080"

java -Dlogging.file=./logs/apollo-configservice.log -Dapollo_profile=github -Dspring.datasource.url="jdbc:mysql://localhost:3306/ApolloConfigDB?characterEncoding=utf8" -Dspring.datasource.username=root -Dspring.datasource.password=P@ssw0rd  -jar ./apollo-configservice-1.3.0.jar


java -Dlogging.file=./logs/apollo-configservice.log -Dapollo_profile=github -Dspring.datasource.url="jdbc:mysql://localhost:3306/ApolloConfigDB?characterEncoding=utf8" -Dspring.datasource.username=root -Dspring.datasource.password=P@ssw0rd  -jar apollo-configservice-1.3.0.jar
java -Dlogging.file=./logs/apollo-adminservice.log -Dapollo_profile=github -Dspring.datasource.url="jdbc:mysql://localhost:3306/ApolloConfigDB?characterEncoding=utf8" -Dspring.datasource.username=root -Dspring.datasource.password=P@ssw0rd  -jar ./apollo-adminservice-1.3.0.jar
java -Dlogging.file=./logs/apollo-portal.log -Dapollo_profile=github,auth -Dserver.port=8070  -Dspring.datasource.url="jdbc:mysql://localhost:3306/ApolloPortalDB?characterEncoding=utf8" -Dspring.datasource.username=root -Dspring.datasource.password=P@ssw0rd  -jar ./apollo-portal-1.3.0.jar