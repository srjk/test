#!/bin/bash
#Run-som-stub-6162
cd /ibm_package/
RUN chmod +x /ibm_package/somconfig.properties
exec java -jar /ibm_package/dish-som-0.0.3-SNAPSHOT.jar
