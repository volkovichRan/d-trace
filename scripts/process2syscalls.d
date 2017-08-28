#!/usr/bin/dtrace -s
syscall:::entry
{
	@sc[execname, probefunc] = count();
}