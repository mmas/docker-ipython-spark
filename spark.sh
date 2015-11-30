#!/bin/bash

sed -i s/HOSTNAME/$HOSTNAME/ /root/.local/share/jupyter/kernels/pyspark/kernel.json
$SPARK_HOME/sbin/start-master.sh
$SPARK_HOME/sbin/start-slave.sh spark://$HOSTNAME:7077

if [[ $1 == "-notebook" ]]; then
    jupyter notebook --no-browser --ip $HOSTNAME
fi

if [[ $1 == "-console" ]]; then
    jupyter console --kernel pyspark
fi

if [[ $1 == "-bash" ]]; then
    /bin/bash
fi
