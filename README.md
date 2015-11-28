Standalone Spark 1.5.2 on Debian Jessie. PySpark IPython kernel for Jupyter console and notebook.

Run notebook:

```
docker run -it -p 8888:8888 mmast/ipython-spark /opt/spark.sh -notebook
```

or:

```
docker run -it -p 8888:8888 mmast/ipython-spark
```

Run console:

```
docker run -it mmast/ipython-spark /opt/spark.sh -console
```

Run bash:

```
docker run -it mmast/ipython-spark /opt/spark.sh -bash
```

Run Spark standalone within the container:

```
# $SPARK_HOME/sbin/start-master.sh
```

Run console within the container:

```
jupyter console --kernel pyspark
```

Run notebook within the container:

```
jupyter notebook --no-browser --ip $HOSTNAME
```
