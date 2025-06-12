Поднимаем с помощью tofu и локальнго gitlub на локальной сфере 3 вм mysq1 mysql2 mysql3.

С помощью роли ansible:
    Открываем на серверах необходимые для поднятия кластера порты  3306 33060 33061
    Прописываем ноде  в hosts dns записи всех узлов
    Производим первичную установку на все 3 инстанса  - mysql-server и необходимых зависимостей
    Прописываем конфиг для mysql на каждой ноде

Дальше начинаем колодовать с поднятием кластера на mysql1 :

====все делаем с mysql1============
dba.configureInstance('mysql1',{clusterAdmin: "clusteradmin@'%'",clusterAdminPassword: 'Admin123$'});    #конфигурирую инст mysql1
dba.configureInstance('root@mysql2',{clusterAdmin: "clusteradmin@'%'",clusterAdminPassword: 'Admin123$'}) #конфигурирую инст mysql2
dba.configureInstance('root@mysql3',{clusterAdmin: "clusteradmin@'%'",clusterAdminPassword: 'Admin123$'}) #конфигурирую инст mysql3
mysqlsh # Скульшелл =)
shell.connect('clusteradmin@mysql1:3306'); # коннект к mysql1 под clusteradmin с паролем Admin123$
dba.createCluster('my_innodb_cluster'); #создаем кластер
var cluster = dba.getCluster('my_innodb_cluster') # получаем ссылку на кластер
cluster.addInstance('clusteradmin@mysql2:3306'); #присединям mysql2
cluster.addInstance('clusteradmin@mysql3:3306'); #присединям mysql2

Скриншоты прилагаются, Спасибо =)

