#!/bin/bash


OFFSET=$(dirname $BASH_SOURCE[0])

source $OFFSET/config

SPOUT="$GRAALVM_HOME/java"
FLAGS="-truffle -ea -Xmx9g -Xss1g -Djava.lang.invoke.stringConcat=BC_SB"

$OFFSET/$SPOUT $FLAGS $@
