#!/bin/bash

export CLASSPATH=$(hadoop classpath)
export HADOOP_CLASSPATH=$CLASSPATH

javac -d classes URIHitMapper.java
javac -d classes URIHitReducer.java
jar -cvf URIHit.jar -C classes/ .
javac -classpath $CLASSPATH:URIHit.jar -d classes URIHITDriver.java
jar -uvf URIHit.jar -C classes/ .
