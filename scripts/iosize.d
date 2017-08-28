#!/usr/bin/dtrace -s
io:::start
{
	@bytes = quantize(args[0] -> b_bcount);
}