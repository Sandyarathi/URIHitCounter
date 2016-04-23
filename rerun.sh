#!/bin/bash

BASEDIR=/user/user01/LAB3/URIHitCounter

export CLASSPATH=$(hadoop classpath)
export HADOOP_CLASSPATH=$CLASSPATH

rm -rf $BASEDIR/OUT
hadoop jar URIHit.jar URIHit.URIHITDriver $BASEDIR/DATA/ $BASEDIR/OUT 

