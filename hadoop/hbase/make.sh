cd /Users/prungta/trash/spring-data-book/hadoop/hbase
mvn clean package appassembler:assemble
cd target/appassembler/bin
sed -e 's/^EXTRA_JVM.*/EXTRA_JVM_ARGUMENTS="-Dsun.security.krb5.debug=true"/g' usercount > run.sh
chmod +x run.sh
cd /Users/prungta/trash/spring-data-book/hadoop/hbase
rm -f spring-hbase-example.tar
tar cvf spring-hbase-example.tar target
