The script helps to collect the thread dumps for a Java Process using JAttach
The steps to collect the thread dumps are below. 

1. SSH to Linux machine where Java Process is running
2. Place thread_monitor.sh at /root and jattach at /usr/local/bin/
3. Provide all permissions to thread_monitor.sh and jattach
  chmod 777 thread_monitor.sh
  chmod 777 /usr/local/bin/jattach
4. Create a directory /var/log/thread_dumps/
  mkdir /var/log/thread_dumps/
5. Execute ps -l/top to obtain the process ID of the Java process
6. Run the program thread_monitor.sh with pid as the argument.
./thread_monitor.sh <pid>
Note: Run it on the screen for around 1 hour. 10 to 12 thread dumps must be enough.
7. Please make sure to stop (Ctrl+C) the process ./thread_monitor.sh script after an hour.
8. Thread dumps will be available under /var/log/thread_dumps/ folder.
