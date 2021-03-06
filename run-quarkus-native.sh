#!/bin/bash

sed -i 's/${QUARKUS_VERSION}/'"${QUARKUS_VERSION}"'/g' ./modules/testcases/jdkAll/Protean/quarkus/quark/test-configurations/pom.xml
./Maven/apache-maven-3.5.3/bin/mvn clean install -Dquarkus  -Dnative -DJBOSS_VERSION=${JBOSS_VERSION}  -Dquarkus-project-discovery=false -Dquarkus-cp-cache=false --debug -X -e
sed -i 's/<version>'"${QUARKUS_VERSION}"'<\/version>/<version>${QUARKUS_VERSION}<\/version>/g' ./modules/testcases/jdkAll/Protean/quarkus/quark/test-configurations/pom.xml

