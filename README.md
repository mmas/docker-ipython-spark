Standalone Spark 1.5.2 on Debian Jessie. PySpark IPython kernel for Jupyter console and notebook with Python 2.7.

Run notebook:

```
docker run -it -p 8080:8080 -p 8081:8081 -p 8888:8888 -v /path/to/my/notebooks:/opt/notebooks mmast/ipython-spark
```

or:

```
docker run -it -p 8080:8080 -p 8081:8081 -p 8888:8888 -v /path/to/my/notebooks:/opt/notebooks mmast/ipython-spark -notebook
```

Run console:

```
docker run -it  -p 8080:8080 -p 8081:8081 mmast/ipython-spark -console
```

Run bash:

```
docker run -it  -p 8080:8080 -p 8081:8081 mmast/ipython-spark -bash
```

Run Spark standalone within the container:

```
$SPARK_HOME/sbin/start-master.sh
```

Run worker within the container:

```
$SPARK_HOME/sbin/start-slave.sh spark://$HOSTNAME:7077
```

Run console within the container:

```
jupyter console --kernel pyspark
```

Run notebook within the container:

```
jupyter notebook --no-browser --ip $HOSTNAME
```

Notebook listens on port 8888.

Spark WebUI master listens on port 8080.

Spark WebUI worker listens on port 8081.
