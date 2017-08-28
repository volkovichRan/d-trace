# d-trace
this reposority will have d trace script and it will keep growing while i read the book dtrace dynamic tracing in solaris mac and bsd

to run dtrace from command(must run it with superuser privilege) 
dtrace -n and dtrace command ex:

sudo dtrace -n 'syscall::read:entry /execname != "dtrace"/ { @reads[execname, fds[arg0].fi_pathname] = count(); }'

to run dtrace from file 
dtrace -s file.d