#!/bin/bash

export CLASSPATH=$(hadoop classpath)
export HADOOP_CLASSPATH=$CLASSPATH

rm -rf /user/user01/HW3/OUT
hadoop jar URIHit.jar URIHit.URIHITDriver -files /user/user01/HW3/InputData/  /user/user01/HW3/OUT 

