
export JAVA_HOME={{java64_home}}
export ZOOKEEPER_HOME={{zk_home}}
export ZOO_LOG_DIR={{zk_log_dir}}
export ZOOPIDFILE={{zk_pid_file}}
export SERVER_JVMFLAGS={{zk_server_heapsize}}
export JAVA=$JAVA_HOME/bin/java
export CLASSPATH=$CLASSPATH:/usr/share/zookeeper/*

{% if security_enabled %}
export SERVER_JVMFLAGS="$SERVER_JVMFLAGS -Djava.security.auth.login.config={{zk_server_jaas_file}}"
export CLIENT_JVMFLAGS="$CLIENT_JVMFLAGS -Djava.security.auth.login.config={{zk_client_jaas_file}}"
{% endif %}