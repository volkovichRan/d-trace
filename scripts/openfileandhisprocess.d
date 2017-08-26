#!/usr/sbin/dtrace -s
syscall::read:entry
/execname != "dtrace"/ 
{ 
	@reads[execname, fds[arg0].fi_pathname] = count(); 
}