output = `screen -ls`.to_s

if output.include? '32220.ttys002.4223'
    exec "screen -S '32220.ttys002.4223' -p 0 -X stuff '" + ARGV[0] + "$(printf \\r)'"
else 
    exec "screen /dev/tty.usbmodem1451 -dmS 'status'"
    exec "screen -S '32220.ttys002.4223' -p 0 -X stuff '" + ARGV[0] + "$(printf \\r)'"
end
